readFrom: aByteArray
	| bigEndian |
	bigEndian := Smalltalk isBigEndian.
	x :=  ( (aByteArray longAt: 1 bigEndian: bigEndian) / self pangoScale ) rounded.
	y := ( ( aByteArray longAt: 5 bigEndian: bigEndian ) / self pangoScale ) rounded.
	width := ( ( aByteArray longAt: 9 bigEndian: bigEndian ) / self pangoScale ) rounded.
	height := ( ( aByteArray longAt: 13 bigEndian: bigEndian ) / self pangoScale ) rounded.