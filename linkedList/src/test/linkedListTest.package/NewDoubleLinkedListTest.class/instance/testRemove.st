tests
testRemove

	| myList myEmptyList |
	myList := NewDoubleLinkedList new.
	myEmptyList := NewDoubleLinkedList new.
	
	myList addNode: 5.
	myList addNode: 2.
	myList removeNode.
	
	self assert:  (myList head element) equals: 5.
	self assert:  (myList length ) equals: 1.
	
	self assert:   myEmptyList isEmpty.
	self should: [myEmptyList removeNode] raise: NullPointerException.
	
