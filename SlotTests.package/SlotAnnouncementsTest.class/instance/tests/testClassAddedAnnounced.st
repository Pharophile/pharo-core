testClassAddedAnnounced
	SystemAnnouncer uniqueInstance weak on: ClassAdded send: #saveAnnouncement: to: self.
	
	aClass := self makeWithLayout: PointerLayout.
	
	self assert: announcement classAdded equals: aClass.