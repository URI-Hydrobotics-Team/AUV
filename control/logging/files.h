#include "fstream"

std::string working_file = "";
std::string time_str_file;



std::string makeFileName(std::string input){
	/* replace spaces with '_' */
	std::string temp = "";
	for (int i = 0; i < input.length(); i++){
		if ((input[i] != ' ') && (input[i] != ':')){
			temp += input[i];
		}else {
			temp += '_';
		}

	}

	temp[temp.length() - 1] = '\0';
	return temp;
}





void initLogFile(){

	working_file += LOG_DIR;
	working_file += '/';
	working_file += time_str_file;
	working_file += ".txt";		




}


