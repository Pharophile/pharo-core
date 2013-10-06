rootsOf: aPackage

	| tmpList |
	 tmpList := aPackage definedClasses.
	self browsedEnvironment isSystem
		ifFalse: [ tmpList := self model classes intersection: tmpList ].
		
	^ tmpList select: [:each |
		(tmpList includes: (each superclass)) not]