testDefaultUTF8Encoding
	| json entity response bytes result |
	"Even if we do not specificy UTF-8 explicitly, it should be the default"
	json := '{''bank'':''R�gion Gen�ve Rh�ne''}'.
	entity := ZnEntity with: json type: 'application/json'.
	response := ZnResponse ok: entity.
	bytes := ByteArray streamContents: [ :out | response writeOn: out ].
	result := ZnResponse readFrom: bytes readStream.
	self assert: result entity contents equals: json