testString
	| string |
	self assert: (self serialize: 'foo') = '''foo'''.
	self assert: (self serialize: 'FOO') = '''FOO'''.
	self assert: (self serializeAsciiOnly: '�l�ve en Fran�ais') = '''\u00E9l\u00E8ve en Fran\u00E7ais'''.
	self assert: (self serialize: '�l�ve en Fran�ais') = '''�l�ve en Fran�ais'''.
	string := String withAll: { 
		$". $'. $\. Character tab. Character cr. Character lf.  Character newPage. Character backspace }.
	self assert: (self serialize: string) = '''\"\''\\\t\r\n\f\b'''.
