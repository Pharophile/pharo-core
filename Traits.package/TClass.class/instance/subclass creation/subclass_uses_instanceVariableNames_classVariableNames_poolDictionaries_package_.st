subclass: aName uses: aTraitCompositionOrArray instanceVariableNames: someInstanceVariableNames classVariableNames: someClassVariableNames poolDictionaries: someSharedPoolNames package: aCategory

	^ self
		subclass: aName
		uses: aTraitCompositionOrArray
		with: [ 
			self
				private_subclass: aName
				instanceVariableNames: someInstanceVariableNames
				classVariableNames: someClassVariableNames
				poolDictionaries: someSharedPoolNames
				category: aCategory ]