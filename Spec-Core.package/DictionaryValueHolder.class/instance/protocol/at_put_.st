at: key put: value

	contents at: key put: value.
	self contentsChanged: value.
	^ value