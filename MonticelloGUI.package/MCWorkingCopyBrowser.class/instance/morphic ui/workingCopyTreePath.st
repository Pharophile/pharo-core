workingCopyTreePath
	workingCopy ifNil: [^ OrderedCollection new].
	^ OrderedCollection with: workingCopyWrapper.