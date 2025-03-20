#ifndef DVL_CONTROLLER_H
#define DVL_CONTROLLER_H

#include <iostream>
#include <string>
#include <thread>
#include <atomic>
#include <cstring>
#include <arpa/inet.h>
#include <unistd.h>
#include <functional>
#include <mutex>

class DVLController {
    public:
        /**
        * @brief Constructor: Initializes the DVL controller with broadcast listening.
        * @param dvl_ip The IP address of the DVL.
        * @param dvl_port The command port for communicating with the DVL.
        * @param listen_port The UDP port for receiving broadcast messages.
        */
        DVLController(const std::string& dvl_ip, int dvl_port, int listen_port);

        /**
        * @brief Destructor: Ensures proper cleanup of resources.
        */
        ~DVLController();

        /**
        * @brief Starts the listener thread to receive broadcast messages from the DVL.
        */
        void startListening();

        /**
        * @brief Stops the listener thread.
        */
        void stopListening();

        /**
        * @brief Sends a pause command to the DVL.
        * Waits for a broadcast response to confirm execution.
        */
        void pause();

        /**
        * @brief Sends a resume command to the DVL.
        */
        void resume();

        /**
        * @brief Sends a reboot command to the DVL.
        * Waits for a broadcast response to confirm a successful reboot.
        */
        void reboot();

        /**
        * @brief Gets the current pool mode configuration.
        * @return A string representing the current pool mode.
        */
        std::string poolmode();

        /**
        * @brief Sets the pool mode configuration.
        * @param mode The mode to set (integer value).
        */
        void poolmode(int mode);

        /**
        * @brief Gets the current orientation setting.
        * @return A string representing the orientation.
        */
        std::string orientation();

        /**
        * @brief Sets the orientation of the DVL, order should be roll, pitch, yaw.
        * @param orientation A string representing the desired orientation.
        */
        void orientation(std::string orientation);

        /**
        * @brief Gets the current DVP DL setting.
        * @return A string representing the DVP DL mode.
        */
        std::string dvpdl();

        /**
        * @brief Sets the DVP DL mode.
        * @param mode The mode to set (integer value).
        */
        void dvpdl(int mode);

        /**
        * @brief Gets the current DPVDX setting.
        * @return A string representing the DPVDX mode.
        */
        std::string dpvdx();

        /**
        * @brief Sets the DPVDX mode.
        * @param mode The mode to set (integer value).
        */
        void dpvdx(int mode);

        /**
        * @brief Gets the current DVKFC setting.
        * @return A string representing the DVKFC mode.
        */
        std::string dvkfc();

        /**
        * @brief Sets the DVKFC mode.
        * @param mode The mode to set (integer value).
        */
        void dvkfc(int mode);

        /**
        * @brief Sets a callback function for handling incoming DVL data.
        * @param callback A function that takes a string representing received data.
        */
        void setDataCallback(std::function<void(const std::string&)> callback);

        /**
        * @brief Retrieves the last received data from the DVL.
        * @return A string containing the latest data.
        */
        std::string getLastData();

    private:
        std::string dvl_ip; ///< DVL IP address
        int dvl_port;       ///< DVL command port
        int listen_port;    ///< Port for receiving UDP broadcasts

        std::atomic<bool> listening; ///< Flag to control the listener thread
        std::thread listener_thread; ///< Thread for listening to DVL broadcasts
        std::mutex data_mutex;       ///< Mutex for protecting shared data access
        std::string latest_data;     ///< Stores the most recent data received

        std::string curr_orientation; ///< Current orientation setting

        std::function<void(const std::string&)> data_callback; ///< Callback function for received data

        bool paused; ///< Flag to indicate if the DVL is paused

        /**
        * @brief Waits for a broadcast message from the DVL.
        * @return True if a message is received, false otherwise.
        */
        bool wait_for_broadcast();

        /**
        * @brief Listens for incoming UDP broadcasts from the DVL.
        * Runs in a separate thread.
        */
        void listen();

        /**
        * @brief Sends a command to the DVL over UDP.
        * @param command The command string to send.
        */
        void sendCommand(const std::string& command);
};

#endif // DVL_CONTROLLER_H
