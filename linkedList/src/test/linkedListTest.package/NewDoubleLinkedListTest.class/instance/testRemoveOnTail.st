testing
testRemoveOnTail
		
	| myList |
	myList := NewDoubleLinkedList new.
   1 to:5  do: [ :each | myList addNode: each ].
	myList removeOnTail.  
	self assert:  (myList tail element) equals: 4.
	self assert: myList intoArray equals: #( 1 2 3 4 ).