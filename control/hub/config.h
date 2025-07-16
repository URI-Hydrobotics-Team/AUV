#define VERSION 0


/* CONNECTIONS */
#define DECKBOX_PORT_TX 8100
#define DECKBOX_PORT_RX 8200
#define DECKBOX_IP "172.20.132.67"
//#define DECKBOX_IP "127.0.0.1"
#define LOG_IP "127.0.0.1"
#define LOG_PORT_TX 8101
#define PICO_SERIAL_PORT "/dev/ttyACM0"


/* NETWORK */
#define SOCKET_SLEEP 1000
#define SOCKET_TIMEOUT 10000
#define MULTICASTGROUP "224.0.0.10"

/* CONFIG */
std::string version_string = "AUV Hub Alpha";
#define STATUS_INTERVAL 0.1000 //seconds
