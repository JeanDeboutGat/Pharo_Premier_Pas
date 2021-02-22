adding
addNode: anElement
	"Add the element in the parameter to the list"
	
	| newElement |	
	newElement := Node initializeWith: anElement.
	head := tail := newElement.
	newElement next: nil.
	newElement previous: nil. 