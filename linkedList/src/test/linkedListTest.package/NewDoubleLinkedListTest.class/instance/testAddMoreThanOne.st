tests
testAddMoreThanOne
	| myList |
	myList := NewDoubleLinkedList new.
	1 to: 5 do: [ :each | myList addNode: each ].

	
	self deny:     myList isEmpty.
	self assert:  (myList head element) equals: 1.
	self assert:  (myList tail element) equals: 5.
	self assert:  (myList length) equals: 5.
	
	
