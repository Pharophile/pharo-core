addAtStartupInGeneralPreferenceFolder: aCollection named: fileName
	self 
		addAtStartup: aCollection 
		inDirectory: self preferencesGeneralFolder 
		named: fileName