taskbarButtonLabelColorFor: aButton
	"Answer the colour for the label of the given taskbar button."

	^aButton model
		ifNil: [super taskbarButtonLabelColorFor: aButton]
		ifNotNil: [:win |
			win isActive
				ifTrue: [self selectionColor darker]
				ifFalse: [super taskbarButtonLabelColorFor: aButton]]