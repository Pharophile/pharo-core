testCopyUpToLastEmpty
	| result |
	result := self empty copyUpToLast: self collectionWithoutEqualElements first.
	self assert: result isEmpty.