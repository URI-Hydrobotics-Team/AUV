/* jetson camera control control class */


class jetson{

	private:
		char message[256]; // message to be sent to jetson
		int rtsp_status = 0; //rtsp server
		int opencv_status = 0;
	


	public:
		jetson(){
			rtsp_status = 0; 
			opencv_status = 0;

		}

		int initOpenCV();
		int initRTSP();













};
