mouseDownIndex: anInteger

	self allowToSelect ifFalse: [ ^ self ].

	mouseDownIndex contents: anInteger