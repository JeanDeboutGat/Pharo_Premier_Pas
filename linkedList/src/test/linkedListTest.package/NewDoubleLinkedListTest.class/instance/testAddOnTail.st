tests
testAddOnTail
		
	| myList |
	myList := NewDoubleLinkedList new.
	1 to:5  do: [ :each | myList addNode: each ].
	myList addOnTail: 6.
	self assert:  myList tail element equals: 6.
	self assert: myList intoArray equals: #( 1 2 3 4 5 6).