/// @ram [DLLname]

// Run only once!
// Remember to disable sandboxed file system!


if argument_count == 0{
	_dll_name = "NoNullTerminator.dll"	
}
else{
	var _dll_name = argument[0]
}

globalvar _NNT_read;

_NNT_read = external_define(_dll_name, "NoNullTerminator_ReadFile", dll_cdecl, ty_string, 1, ty_string)
var _nnt_init = external_define(_dll_name, "NoNullTerminator_Init", dll_cdecl, ty_real, 0)

external_call(_nnt_init)
