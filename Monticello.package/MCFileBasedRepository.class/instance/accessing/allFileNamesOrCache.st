allFileNamesOrCache
	cacheFileNames ifFalse: [ ^ self allFileNames ].
	^ allFileNames ifNil: [
			allFileNames := self allFileNames]