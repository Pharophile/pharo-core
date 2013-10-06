serializeReferencesOf: anObject with: anEncoder
	anEncoder encodePositiveInteger: anObject size.
	anObject do: [ :each |
		anEncoder encodeReferenceTo: each ]
	