okToChange
	| answer |
	self sourceTextModel ifNil: [ ^ true ].
	self sourceTextModel getString trimBoth = sourceTextWidget text asString trimBoth
		ifTrue: [ ^ true ].
	self sourceTextModel canDiscardEdits
		ifTrue: [ ^ true ].
	answer := self promptForCancel.
	answer ifNotNil: [
			answer
				 ifTrue: [ self acceptSourceCodeFromView ]
				ifFalse: [ self sourceTextModel cancelEdits ] ].
	^ self sourceTextModel canDiscardEdits