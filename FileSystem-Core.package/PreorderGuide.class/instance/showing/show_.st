show: aReference
	self push: aReference entry.
	self whileNotDoneDo: [ self visitNextEntry: self pop ]