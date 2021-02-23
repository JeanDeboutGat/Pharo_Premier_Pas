removing
removeAtPosition: aPosition
	"remove from the list  the element at position aPosition.
	 If the list is empty the  error is returned
	 otherwise the last node is removed from the list"
		 
	| currentNode   |
	(aPosition < 1 or: aPosition > self length)
	  ifTrue: [PositionOutOfBoundsException  signal: 'Suppression Error,position must be strictly positive and not surpassing the size of list elements!']. 
	head 
	ifNil:[
			NullPointerException   signal: 'Impossible to remove the element(s) in the empty list, add elements to proceed!!!'	
	]
	ifNotNil:	[
			currentNode := self computeSuccessor: head atPosition: (aPosition - 1).
			currentNode next: (currentNode next next).

	]
	

 
