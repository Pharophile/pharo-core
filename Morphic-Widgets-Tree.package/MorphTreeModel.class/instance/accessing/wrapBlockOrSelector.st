wrapBlockOrSelector

	^ wrapBlockOrSelector ifNil: [wrapBlockOrSelector := #printString]