testExampleIfNotNillDoReturnNil
	| ir method newMethod instance |
	
	method := (OCOpalExamples>>#exampleIfNotNilDoReturnNil) parseTree generate.
	instance := OCOpalExamples new.
	
	ir := IRBytecodeDecompiler new decompile: method.
	newMethod := ir compiledMethod.
	
	self assert: (newMethod valueWithReceiver: instance arguments: #()) = instance exampleIfNotNilDoReturnNil.