standardMessageText
	"Generate a standard textual description"
	
	^ String streamContents: [ :stream |
		stream << 'value '.
		stream print: self object.
		stream << ' not found in '.
		stream print: self collection class]