setIndex: index

	| oldIndex newIndex |

	oldIndex := selectedIndex contents.
	newIndex := index.
	self secondSelection: 0.
	self setViewToIndex: index.
	
	selectedIndex contents: newIndex.
	(self deSelectOnReclick and: [ oldIndex == newIndex ])
		ifTrue: [ self toggleAtIndexes: newIndex ]
		ifFalse: [ self addAtIndexes: newIndex ]