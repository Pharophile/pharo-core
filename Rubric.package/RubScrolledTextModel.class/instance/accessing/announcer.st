announcer
	^ announcer ifNil: [ announcer := self defaultAnnouncer ]