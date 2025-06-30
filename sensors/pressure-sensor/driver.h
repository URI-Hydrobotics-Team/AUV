/*
	URI hydrobotics MS5837 driver

*/

//#include <wiringPi.h>
#include <cstdint>

#ifndef MS5837_H_BLUEROBOTICS
#define MS5837_H_BLUEROBOTICS

#define DEVICE_ID 0x76

class MS5837 {


	private:

		//This stores the requested i2c port
		//TwoWire * _i2cPort;
		int fd; //WiringPi i2c device
		uint16_t C[8];
		uint32_t D1_pres, D2_temp;
		int32_t TEMP;
		int32_t P;
		uint8_t _model;

		float fluidDensity;

	/** Performs calculations per the sensor data sheet for conversion and
	 *  second order compensation.
	 */
		void calculate();

		uint8_t crc4(uint16_t n_prom[]);




	public:
		static const float Pa;
		static const float bar;
		static const float mbar;

		static const uint8_t MS5837_30BA;
		static const uint8_t MS5837_02BA;
		static const uint8_t MS5837_UNRECOGNISED;

		MS5837();

		bool init(const int id);
		bool begin(const int id); // Calls init()

	/** Set model of MS5837 sensor. Valid options are MS5837::MS5837_30BA (default)
	 * and MS5837::MS5837_02BA.
	 */
		void setModel(uint8_t model);
		uint8_t getModel();

	/** Provide the density of the working fluid in kg/m^3. Default is for
	 * seawater. Should be 997 for freshwater.
	 */
		void setFluidDensity(float density);

	/** The read from I2C takes up to 40 ms, so use sparingly is possible.
	 */
		void read();

	/** Pressure returned in mbar or mbar*conversion rate.
	 */
		float getPressure(float conversion = 1.0f);

	/** Temperature returned in deg C.
	 */
		float getTemperature();

	/** Depth returned in meters (valid for operation in incompressible
	 *  liquids only. Uses density that is set for fresh or seawater.
	 */
		float getDepth();

	/** Altitude returned in meters (valid for operation in air only).
	 */
		float getAltitude();

};
#endif

