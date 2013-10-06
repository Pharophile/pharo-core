privateAsArray
	| result currentOffset  numberOfProportionals currentProportional delta size lastFractionIndex width autoFractionComputation |
	currentOffset := 0.
	currentProportional := 0.
	result := OrderedCollection new.
	numberOfProportionals := 0.
	lastFractionIndex := 0.
	
	autoFractionComputation := true.
	size := self commands size.
	
	self commands do: [:e |
				e layoutFrame hasNoOffsets 
					ifTrue: [ 
						(e layoutFrame leftFraction == 0 and: [  e layoutFrame rightFraction == 1 ]) ifFalse: [ autoFractionComputation := false ].
						numberOfProportionals := numberOfProportionals +1 ] ].
	
	autoFractionComputation not
		ifTrue: [ 
			self commands doWithIndex: [:e :idx |
				e layoutFrame hasNoOffsets 
					ifTrue: [
						delta := e layoutFrame rightFraction - e layoutFrame leftFraction.
						e layoutFrame: ((currentProportional@0 corner: (currentProportional +delta)@1) asLayoutFrame leftOffset: currentOffset). 
						currentOffset := 0.
						currentProportional := currentProportional +delta.
						lastFractionIndex := idx ]
					ifFalse: [| y0 y1 |
						width := e offsets width.
						y0 := e offsets top.
						y1 := e offsets bottom.
						idx = size 
							ifTrue: [
								e layoutFrame: ((1@0 corner: 1@1) asLayoutFrame 
														topLeftOffset: width negated @y0;
														bottomRightOffset:  0@y1)]
							ifFalse: [
								e layoutFrame: ((currentProportional@0 corner: currentProportional@1) asLayoutFrame
									topLeftOffset: currentOffset@y0 ; 
									bottomRightOffset: (currentOffset + width)@y1).
								currentOffset := (currentOffset + width) ] ] ] ]
		ifFalse: [ 		
			numberOfProportionals isZero
				ifTrue: [ delta := 0 ]
				ifFalse: [ delta := 1/numberOfProportionals ].
			
			self commands doWithIndex: [:e :idx |
				e layoutFrame hasNoOffsets 
					ifTrue: [
						e layoutFrame: ((currentProportional@0 corner: (currentProportional +delta)@1) asLayoutFrame leftOffset: currentOffset). 
						currentOffset := 0.
						currentProportional := currentProportional +delta.
						lastFractionIndex := idx ]
					ifFalse: [| y0 y1 |
						width := e offsets width.
						y0 := e offsets top.
						y1 := e offsets bottom.
						idx = size 
							ifTrue: [
								e layoutFrame: ((1@0 corner: 1@1) asLayoutFrame 
														topLeftOffset: width negated @y0;
														bottomRightOffset:  0@y1)]
							ifFalse: [
								e layoutFrame: ((currentProportional@0 corner: currentProportional@1) asLayoutFrame
									topLeftOffset: currentOffset@y0 ; 
									bottomRightOffset: (currentOffset + width)@y1).
								currentOffset := (currentOffset + width) ] ] ] ].
			
	(lastFractionIndex > 0 and: [ lastFractionIndex < size ])
		ifTrue: [ | index ante |
			index := size-1.
			[ index > lastFractionIndex ] whileTrue: [ | myWidth |
				ante := self commands at: index.
				index := index -1.
				myWidth := ante rightOffset - ante leftOffset.
				ante
					leftOffset: (width+myWidth) negated;
					rightOffset: width negated.
				width := width+myWidth ].
			self assert: (index = lastFractionIndex).
			ante := self commands at: index.
			ante layoutFrame rightOffset: width negated ].		
			
	result addAll: super privateAsArray.
	
	^ result asArray