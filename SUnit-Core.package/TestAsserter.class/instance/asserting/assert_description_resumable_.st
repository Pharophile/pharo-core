assert: aBooleanOrBlock description: aStringOrBlock resumable: resumableBoolean 
	| exception |
	aBooleanOrBlock value
		ifFalse: 
			[|aString|
			aString := aStringOrBlock value.
			self logFailure: aString.
			exception := resumableBoolean
						ifTrue: [self classForTestResult resumableFailure]
						ifFalse: [self classForTestResult failure].
			exception signal: aString]
			