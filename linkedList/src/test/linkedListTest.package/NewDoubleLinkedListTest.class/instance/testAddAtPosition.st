tests
testAddAtPosition
	| myList |
	myList := NewDoubleLinkedList new.
	1 to:5  do: [ :each | myList addNode: each ].
	myList add:5 AtPosition: 3. 
	self assert:  (myList getElementAtPosition:3) equals: 5.
	self assert: myList intoArray equals: #( 1 2 5 4 5).
	self should: [myList getElementAtPosition: 0] raise: PositionOutOfBoundsException .
	self should: [myList getElementAtPosition: 6] raise: PositionOutOfBoundsException
   
