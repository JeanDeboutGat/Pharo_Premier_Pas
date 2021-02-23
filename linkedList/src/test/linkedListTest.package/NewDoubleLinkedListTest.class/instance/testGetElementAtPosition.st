tests
testGetElementAtPosition
	| myList |
	myList := NewDoubleLinkedList new.
	1 to: 5 do: [ :each | myList addNode: each ].
	self assert: (myList getElementAtPosition: 1) equals:1.
	self should: [myList getElementAtPosition: 0] raise: PositionOutOfBoundsException.
	self should: [myList getElementAtPosition: 6] raise: PositionOutOfBoundsException
   
	