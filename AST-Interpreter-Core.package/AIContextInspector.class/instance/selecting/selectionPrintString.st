selectionPrintString
	| text |
	selectionUpdateTime := [
		text := [self printSelection]
			on: Error
			do: [
				text := self printStringErrorText.
				text]] timeToRun.
	^ text