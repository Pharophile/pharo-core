project

	^ project ifNil: [ | constructor |
		"Bootstrap Metacello if it is not already loaded"
		self class
			ensureMetacello;
			addHacks.
		"Construct Metacello project"
		constructor := (Smalltalk at: #MetacelloVersionConstructor) on: self.
		project := constructor project.
		project loadType: #linear. "change to #atomic if desired"
		
		project ]