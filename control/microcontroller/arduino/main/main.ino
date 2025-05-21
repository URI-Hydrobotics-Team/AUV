// Define our thruster pins.

YThruster = ; // Yaw
BSHThruster = ; // Bow-Starboard-Heave
BPHThruster = ; // Bow-Port-Heave
SHThruster = ; // Stern-Heave
SSThruster = ; // Starboard-Surge
PSThruster = ; // Port-Surge


void setup() {
    // Initialize serial communication to the Pi
    Serial.begin(9600);

    // Initialize pins of the thrusters
    pinMode(YThruster, OUTPUT);
    pinMode(BSHThruster, OUTPUT);
    pinMode(BPHThruster, OUTPUT);
    pinMode(SHThruster, OUTPUT);
    pinMode(SSThrsuter, OUTPUT);
    pinMode(PSThruster, OUTPUT);
}

void loop() {
    Serial.readBytes();

}