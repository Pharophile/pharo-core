listSize

	^ listSize contents ifNil: [ self retrieveListSize ]