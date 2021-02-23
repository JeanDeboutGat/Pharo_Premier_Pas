tests
testAddOnHead
		
	| myList |
	myList := NewDoubleLinkedList new.
	1 to:5  do: [ :each | myList addNode: each ].
	myList addOnHead: 5.
	self assert:  myList head element equals: 5.
	self assert: myList intoArray equals: #( 5 1 2 3 4 5).
