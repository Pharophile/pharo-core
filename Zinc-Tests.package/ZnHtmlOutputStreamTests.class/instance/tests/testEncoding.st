testEncoding
	| result |
	result := ZnHtmlOutputStream streamContents: [ :html |
		html tag: #div with: '�l�ve en Fran�ais' ].
	self assert: result equals: '<div>�l�ve en Fran�ais</div>'