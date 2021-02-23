adding
addNode: anElement
	"Add anElement into the list.
	 If the list is empty, heads and tails points to newNode containing anElement
	 otherwise newNode containing anElement is added to the end of list. tail->next set to newNode"
	
	| newNode |	
	newNode := Node initializeWith: anElement.
	
	head 
	ifNil:[
		head := tail := newNode.
		newNode next: nil.
		newNode previous: nil.
	]
	ifNotNil:[
	tail next: newNode.
	newNode previous: tail.
	tail := newNode.
	tail next: nil
	].

 


	
	
	
