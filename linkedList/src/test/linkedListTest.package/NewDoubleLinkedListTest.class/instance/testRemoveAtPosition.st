tests
testRemoveAtPosition

	| myList |
	myList := NewDoubleLinkedList new.
	1 to:5  do: [ :each | myList addNode: each ].
	
	myList removeAtPosition: 2. 
	self assert: myList intoArray equals: #( 1 3 4 5).
	self assert:  (myList getElementAtPosition:2) equals: 3.
	
	self should: [myList getElementAtPosition: 5] raise: PositionOutOfBoundsException .
	self should: [myList getElementAtPosition: 0] raise: PositionOutOfBoundsException
   
