alignmentValueFrom: anInt 
	^anInt caseOf:{
		[PANGO_ALIGN_LEFT]->['left'].
  		[PANGO_ALIGN_CENTER]->['center'].
  		[PANGO_ALIGN_RIGHT]->['right'].
	}