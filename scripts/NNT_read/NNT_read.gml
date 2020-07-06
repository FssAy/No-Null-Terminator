/// @param FilePath

// Make sure to provide full path to the file !!!


var _file_path = string(argument0)

if not variable_global_exists("_NNT_read"){
	show_error("No Null Terminator not initialized", true)	
	exit;
}

if not file_exists(_file_path){
	show_debug_message("[No Null Terminator]: file can't be found!")	
	return -1
}

return external_call(_NNT_read, _file_path);
