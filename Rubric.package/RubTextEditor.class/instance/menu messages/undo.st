undo
	"Undo  previous edit."
	self closeTypeIn.
	self editingState undo ifFalse: [textArea flash]. 
