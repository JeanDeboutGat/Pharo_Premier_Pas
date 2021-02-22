tests
testAddAtPosition
	| myList |
	myList := NewDoubleLinkedList new.
	1 to: 10 do: [ :each | myList addNode: each ].
	myList addAtPosition: 2  End of statement expected ->5. 
	self deny:     myList isEmpty.
	self assert:  (myList head element) equals: 1.
	self assert:  (myList tail element) equals: 5.
	self assert:  (myList length) equals: 5.