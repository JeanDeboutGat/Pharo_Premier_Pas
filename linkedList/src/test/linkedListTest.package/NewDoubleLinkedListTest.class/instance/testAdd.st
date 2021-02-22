tests
testAdd
	| myList |
	myList := NewDoubleLinkedList new.
	myList addANode: 5.
	self assert: (myList head) equals: 5.
	
	
