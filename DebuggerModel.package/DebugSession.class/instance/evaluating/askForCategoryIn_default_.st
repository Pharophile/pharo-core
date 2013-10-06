askForCategoryIn: aClass default: aString
	| category |
	category := category := AbstractTool requestProtocolNameFor: aClass initialAnswer: aString.
	category ifNil: [^aString].
	^ category isEmptyOrNil 
		ifTrue: [^ aString] 
		ifFalse: [ category ]