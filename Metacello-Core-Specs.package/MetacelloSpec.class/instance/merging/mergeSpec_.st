mergeSpec: aSpec
	| newSpec nonOverridable |
	aSpec class = self class
		ifFalse: [ self error: 'The project spec ', self name printString, ' in project ', self project label, ' has imcompatible specs.' ].
	newSpec := self copy.
	nonOverridable := self nonOverridable.
	aSpec mergeMap
		keysAndValuesDo: [ :key :value | 
			(nonOverridable includes: key)
				ifFalse: [ 
					value ~~ nil
						ifTrue: [ newSpec instVarNamed: key asString put: value ] ] ].
	^ newSpec