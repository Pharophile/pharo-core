iconFor: anObject
		
	^ [ (anObject iconOrThumbnailOfSize: 16)
		ifNil: [ anObject class systemIcon ] ]
			on: Error do: [ :error |
			self iconFor: anObject error: error ]