fullReportMenu: aMenuMorph shift: aBoolean
	^ (PragmaMenuBuilder 
		pragmaKeyword: 'TimeProfilerFullReportMenu'
		model: self) menu 