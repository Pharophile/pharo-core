hasPackage: aString
	| package |
	package := self allManagers
		detect: [ :each | each packageName = aString ]
		ifNone: [ nil ].
	^ package notNil