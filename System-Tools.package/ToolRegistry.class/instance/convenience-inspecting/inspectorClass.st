inspectorClass

	^ tools at: #inspector ifAbsent: [ ^ self error: 'no inspector found' ]
	