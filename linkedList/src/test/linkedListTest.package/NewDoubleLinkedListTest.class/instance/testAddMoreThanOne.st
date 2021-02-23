tests
testAddMoreThanOne
	| myList |
	myList := NewDoubleLinkedList new.
	1 to: 5 do: [ :each | myList addNode: each ].

	
	self deny:     myList isEmpty.
	self assert:  (myList length) equals: 5.
	self assert: myList intoArray equals: #( 1 2 3 4 5).
	
	
