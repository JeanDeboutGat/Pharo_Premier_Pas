tests
testAddAtPosition
	| myList |
	myList := NewDoubleLinkedList new.
	1 to:5  do: [ :each | myList addNode: each ].
	myList add:5 AtPosition: 2. 
	self assert: myList intoArray equals: #( 1 5 2 3 4 5).
	self assert:  (myList getElementAtPosition:2) equals: 5.
	
	self should: [myList getElementAtPosition: 0] raise: PositionOutOfBoundsException .
	self should: [myList getElementAtPosition: 7] raise: PositionOutOfBoundsException
   
