sizeCodeForStore: encoder
	self reserve: encoder.
	^encoder sizeStoreLiteralVar: index
	