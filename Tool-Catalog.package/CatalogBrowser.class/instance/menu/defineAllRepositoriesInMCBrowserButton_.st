defineAllRepositoriesInMCBrowserButton: aList

	<menu>
	aList
		act: [ :presenter | self defineAllRepositoriesInMCBrowser ]
		iconName: #monticelloPackageIcon
		entitled: 'Define all distribution catalog MC repositories'