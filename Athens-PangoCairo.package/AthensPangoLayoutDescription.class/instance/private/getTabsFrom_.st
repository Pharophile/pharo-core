getTabsFrom: anAthensParagraph
	| tabsArray |
	tabsArray  := AthensPangoTabs getFrom: anAthensParagraph .
	tabs := tabsArray asArray collect:[:e| e / PANGO_SCALE].
	tabsArray finalize.