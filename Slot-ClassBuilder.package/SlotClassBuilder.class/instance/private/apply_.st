apply: classModification
	classModification modifiesSlots
		ifTrue: [self applySlotChange: classModification]
		ifFalse: [ 
			classModification modifiesFormat
				ifTrue: [ self applyFormatChange: classModification]
				ifFalse: [
					classModification modifiesSuperclass
						ifTrue: [ self applySuperclassChange: classModification ]
						ifFalse: [ ^ self installTraitComposition: classModification ]]].
	
	self 
		migrateClasses: classModification;
		cleanUp