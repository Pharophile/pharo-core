testStringEncoding
	| encoder string |
	encoder := ZnUTF8Encoder new.
	string := '�l�ve en Fran�ais'.
	self assert: (string encodeWith: encoder) equals: (encoder encodeString: string).
	self assert: (string encodeWith: #utf8) equals: (encoder encodeString: string).
	self assert: string utf8Encoded equals: (encoder encodeString: string)
