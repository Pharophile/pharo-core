buildVariableMenuFor: aMenu variablesFrom: aBlockOrSymbol menuItemBy: aMenuItemBlock

	self selectedClass withAllSuperclasses reverseDo: [ :class || vars |
		vars := aBlockOrSymbol value: class. 
		vars ifNotEmpty: [ 
			aMenu 	
			addLine;
			addMorphBack: (class printString asStringMorph color: Color gray)
		].		
		vars sorted do: [ :variable | aMenuItemBlock value: variable value: class value: aMenu ]
	].

	