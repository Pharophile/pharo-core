testPointerCanExtendVariable

	self should: [ :builder | 
			builder layoutClass: VariableLayout ]
		extendWith: [ :builder | 
			builder layoutClass: PointerLayout ]