rootItem
	^ rootItem ifNil: [ rootItem := self createRootItem ]