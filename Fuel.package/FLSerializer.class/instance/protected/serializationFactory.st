serializationFactory

	^ serializationFactory ifNil: [ 
		self setDefaultSerialization.
		serializationFactory ].