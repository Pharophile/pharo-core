primIsAbsolute
<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self pangoNbCall: #(gboolean pango_font_description_get_size_is_absolute (
			PangoFontDescription self))
