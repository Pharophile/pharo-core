systemFontLabelOf: aSelector
	^ (self systemFontAspectsAndLabels detect: [:assoc | assoc key = aSelector] ifNone: [^ '']) value