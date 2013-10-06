updateClassLiteralKeysIn: aClass 
	aClass isMeta ifTrue: [ ^ self ].
	
	aClass methodsDo: [ :method | | literal |
		literal := method allLiterals last.
		literal value = aClass
			ifTrue: [ literal key: aClass name ]]