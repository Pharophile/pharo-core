withClassesFixedForNautilus
	instanceVariables ifEmpty: [ 
		classVariables keysAndValuesDo: [ :class :variables | 
			instanceVariables at: class ifAbsentPut: [ Set new ] ] ].
