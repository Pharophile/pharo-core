testUTF8EncoderWide
	| encoder |
	encoder := ZnUTF8Encoder new.
	{ 'abc'. '�l�ve en Fran�ais'. 'Pra-sk�' copy at: 4 put: (Character value: 382); yourself. '' }
		do: [ :each | | bytes |
			bytes := self encodeString: each with: encoder. 
			self assert: (encoder decodeBytesIntoWideString: bytes) equals: each ]