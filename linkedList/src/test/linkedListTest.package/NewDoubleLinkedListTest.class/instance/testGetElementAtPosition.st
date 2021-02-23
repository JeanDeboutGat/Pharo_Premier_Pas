tests
testGetElementAtPosition
	| myList |
	myList := NewDoubleLinkedList new.
	1 to: 5 do: [ :each | myList addNode: each ].
	self assert: (myList getElementAtPosition: 2) equals:2.
	self should: [myList getElementAtPosition: 0] raise: Error.
	self should: [myList getElementAtPosition: 6] raise: Error
   
	