make: aBlock
	| builder |
	builder := self new builder.
	aBlock value: builder.
	^ builder build