#include "DVLController.h"

DVLController::DVLController(const std::string& dvl_ip, int dvl_port, int listen_port)
    : dvl_ip(dvl_ip), dvl_port(dvl_port), listen_port(listen_port), listening(false) {

    // Create UDP socket for sending commands
    udp_socket = socket(AF_INET, SOCK_DGRAM, 0);
    if (udp_socket < 0) {
        perror("Failed to create UDP socket");
        exit(EXIT_FAILURE);
    }

    // Create UDP socket for listening (broadcast reception)
    broadcast_socket = socket(AF_INET, SOCK_DGRAM, 0);
    if (broadcast_socket < 0) {
        perror("Failed to create broadcast socket");
        exit(EXIT_FAILURE);
    }

    int enable = 1;
    if (setsockopt(broadcast_socket, SOL_SOCKET, SO_BROADCAST, &enable, sizeof(enable)) < 0) {
        perror("Failed to set broadcast option");
        exit(EXIT_FAILURE);
    }

    sockaddr_in listen_addr{};
    listen_addr.sin_family = AF_INET;
    listen_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    listen_addr.sin_port = htons(listen_port);

    if (bind(broadcast_socket, (struct sockaddr*)&listen_addr, sizeof(listen_addr)) < 0) {
        perror("Failed to bind broadcast socket");
        exit(EXIT_FAILURE);
    }
}

DVLController::~DVLController() {
    stopListening();
    close(udp_socket);
    close(broadcast_socket);
}

bool DVLController::sendCommand(const std::string& command) {
    sockaddr_in dvl_addr{};
    dvl_addr.sin_family = AF_INET;
    dvl_addr.sin_port = htons(dvl_port);
    inet_pton(AF_INET, dvl_ip.c_str(), &dvl_addr.sin_addr);

    ssize_t sent = sendto(udp_socket, command.c_str(), command.length(), 0,
                          (struct sockaddr*)&dvl_addr, sizeof(dvl_addr));
    return sent >= 0;
}

void DVLController::pause() {
    sendCommand("PAUSE");
    std::cout << "Pausing DVL" << std::endl;
    paused = true;
}

void DVLController::resume() {
    if (paused) {
        // Send resume command
        sendCommand("RESUME");
        std::cout << "Resuming DVL" << std::endl;

        if (wait_for_broadcast()) {
            std::cout << "Resume successful." << std::endl;
        } else {
            std::cerr << "DVL resume failed." << std::endl;
        }
    }
    paused = false;
}

void DVLController::reboot() {
    sendCommand("REBOOT");
    std::cout << "Rebooting DVL..." << std::endl;

    if (wait_for_broadcast()) {
        std::cout << "Reboot successful." << std::endl;
    } else {
        std::cerr << "DVL reboot failed." << std::endl;
    }
}

bool DVLController::wait_for_broadcast(int timeout_seconds = 10, int check_interval_ms = 100) {
    int sock = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock < 0) {
        std::cerr << "Failed to create listening socket\n";
        return false;
    }

    struct sockaddr_in listen_addr;
    memset(&listen_addr, 0, sizeof(listen_addr));
    listen_addr.sin_family = AF_INET;
    listen_addr.sin_port = htons(listen_port);
    listen_addr.sin_addr.s_addr = INADDR_ANY;

    if (bind(sock, (struct sockaddr*)&listen_addr, sizeof(listen_addr)) < 0) {
        std::cerr << "Failed to bind listening socket\n";
        close(sock);
        return false;
    }

    char buffer[1024];
    struct sockaddr_in sender_addr;
    socklen_t sender_len = sizeof(sender_addr);

    auto start_time = std::chrono::steady_clock::now();

    while (std::chrono::steady_clock::now() - start_time < std::chrono::seconds(timeout_seconds)) {
        ssize_t recv_len = recvfrom(sock, buffer, sizeof(buffer) - 1, MSG_DONTWAIT,
                                    (struct sockaddr*)&sender_addr, &sender_len);
        if (recv_len > 0) {
            buffer[recv_len] = '\0';
            std::cout << "DVL broadcast received!" << std::endl;
            close(sock);
            return true;
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(check_interval_ms));
    }

    std::cerr << "No DVL broadcast received within " << timeout_seconds << " seconds." << std::endl;
    close(sock);
    return false;
}

void DVLController::startListening() {
    listening = true;
    listener_thread = std::thread(&DVLController::listenLoop, this);
}

void DVLController::stopListening() {
    listening = false;
    if (listener_thread.joinable()) {
        listener_thread.join();
    }
}

void DVLController::listenLoop() {
    char buffer[1024];
    while (listening) {
        sockaddr_in sender_addr;
        socklen_t sender_len = sizeof(sender_addr);
        ssize_t received = recvfrom(broadcast_socket, buffer, sizeof(buffer) - 1, 0,
                                    (struct sockaddr*)&sender_addr, &sender_len);
        if (received > 0) {
            buffer[received] = '\0';
            std::cout << "DVL Broadcast: " << buffer << std::endl;
        }
    }
}

std::string DVLController::poolmode() {
    return "Not implemented"; // Placeholder will need to scrape the text from the DVL config.
}

void DVLController::poolmode(std::string mode) {
    sendCommand("SET-POOL-MODE" + mode);
}

std::string DVLController::orientation() {
    return curr_orientation; // Current orientation of the DVL
}

void DVLController::orientation(std::string orientation) {
    curr_orientation = orientation;
    sendCommand("SET-SENSOR-ORIENTATION " + orientation); 
}