testing
testIsEmpty

	| myList |
	myList := NewDoubleLinkedList new.
	self assert:myList head isNil .