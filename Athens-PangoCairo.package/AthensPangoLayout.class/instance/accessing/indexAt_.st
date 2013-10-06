indexAt: aPoint 
	| trailing index i hit |
	index := ByteArray new: 4.
	trailing := ByteArray new: 4.
	
	hit := self primLayoutX: (aPoint x *  self pangoScale) rounded  Y: (aPoint y * self pangoScale ) rounded  toIndex: index trailing: trailing .
	
	i :=  index unsignedLongAt: 1 bigEndian: Smalltalk isBigEndian.
	
	^ i 