asByteArray
	| bigEndian array |
	"4 ints = 4 * 4 bytes =  16 bytes "
	array := ByteArray new:  16.
	bigEndian := Smalltalk isBigEndian.
	array longAt: 1 put: x * PANGO_SCALE bigEndian: bigEndian.
	array longAt: 5 put: y * PANGO_SCALE bigEndian: bigEndian. 
	array longAt: 9 put: width * PANGO_SCALE bigEndian: bigEndian.
	array longAt: 13 put: height * PANGO_SCALE bigEndian: bigEndian.	
	^ array 