tests
testAddAll
	| myList listToAdd emptyListToAdd |
	
	myList := NewDoubleLinkedList new.
	listToAdd := NewDoubleLinkedList new.
	emptyListToAdd := NewDoubleLinkedList new.
	
	1 to: 2 do: [ :each | myList addNode: each ].
	1 to: 3 do: [ :each | listToAdd addNode: each ].

   myList addAll: listToAdd.
	
	self assert:  (myList length) equals: 5.
	self assert: myList intoArray equals: #( 1 2 1 2 3).
	self deny:     listToAdd isEmpty.
	self should: [myList addAll: emptyListToAdd] raise: NullPointerException .
	