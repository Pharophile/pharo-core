fileOutPackages: aCollection

	self 
		do: [ :package |  package fileOut ]
		on: aCollection
		displaying: 'Filing out packages...'.