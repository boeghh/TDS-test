function global_init() {
	gml_pragma("global", "global_init()");

#region Graphics

	// Resolution
	enum RES {
		W = 480,
		H = 270,
		S = 3
	}

#endregion

#region Input

	global.mouseGuiX = 0;
	global.mouseGuiY = 0;

#endregion



}
