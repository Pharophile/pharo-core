delete

	self widget
		ifNotNil: [:widget | window contents
						ifNil: [ widget delete ]
						ifNotNil: [:o | o delete ]]