add-remove
testRemoveOnHead
	
	| myList |
	myList := NewDoubleLinkedList new.
	1 to: 5 do: [ :each | myList addNode: each ].
	
	myList removeOnHead.
	
	self assert:  (myList head element) equals: 2.
	self assert:  (myList length ) equals: 4.
	self assert: myList intoArray equals: #( 2 3 4 5).