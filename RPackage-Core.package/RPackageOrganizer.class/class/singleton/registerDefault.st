registerDefault
	"hardcore cleanup practice..."
	RPackageOrganizer allInstances do: [ :i|
		SystemAnnouncer uniqueInstance unsubscribe: i.
		SystemAnnouncer uniqueInstance private unsubscribe: i ].
	
	self default register.