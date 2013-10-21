testObsoleteBehaviors
	| obsoleteBehaviors |
	
	"Ensure the environment is clean"
	3 timesRepeat: [ Smalltalk garbageCollect ].
	
	Smalltalk fixObsoleteReferences.
	obsoleteBehaviors := SystemNavigation new obsoleteBehaviors
		select: [ :each | each isAnonymous not ].
	
	self 
		assert: obsoleteBehaviors isEmpty
		description: [
			String streamContents: [ :s|
				s 
					nextPutAll: 'Obsolete behaviors remaining: ';
					print: obsoleteBehaviors ]]