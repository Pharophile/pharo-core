update30539
	"self new update30539"
	self withUpdateLog: '12033 Move PharoFilesOpener from System-Support to Files-System
	https://pharo.fogbugz.com/f/cases/12033
	
12041 Move SmalltalkImage>>addSnapshotRecord:andQuit: to ChangesLog
	https://pharo.fogbugz.com/f/cases/12041



'.
	self loadTogether: self script194 merge: false.
	self flushCaches.