primSetTab: index alignment: alignment location: location
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	self pangoNbCall:#(void  pango_tab_array_set_tab (
				PangoTabArray self,
    			int index,
       			int alignment,
          		int location))