stringForFileOut

	^ String streamContents: [:aStream | 
			self protocols do: [:p | 
				aStream << $( << p name printString.
				p methods do: [:m |
					aStream << ' ' << m asString ].
				aStream << $); cr ]]