newKomitFor: aRemote
	"Gather all the data and create a Komit object out of them"
	
	^ Komit new
		message: message text;
		author: author text;
		timestamp: DateAndTime now;
		entities: self commitableEntities;
		unselectedEntities: self uncommittedCommitableEntitied;
		remote: aRemote;
		yourself