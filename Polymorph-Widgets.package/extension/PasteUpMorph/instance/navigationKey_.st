navigationKey: event
	"Check for active window navigation."
	
	(self theme openTasklist: event) ifTrue: [^true].
	event keyString =  '<Opt-tab>'														
		ifTrue: [
			self navigateWindowForward.
			^ true ].
				
		event keyString =  '<Opt-Shift-tab>'														
			ifTrue: [ 
				self navigateWindowBackward.
				^ true ].
	^false