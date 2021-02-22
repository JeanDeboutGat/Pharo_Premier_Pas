tests
testAdd
	| myList |
	myList := NewDoubleLinkedList new.
	myList addNode: 5.
	self deny:     myList isEmpty.
	self assert:  (myList head element) equals: 5.
	self assert:  (myList tail element) equals: 5.

	
	
