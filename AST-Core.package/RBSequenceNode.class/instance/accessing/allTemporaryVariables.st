allTemporaryVariables
	^(self temporaryNames asOrderedCollection)
		addAll: super allTemporaryVariables;
		yourself