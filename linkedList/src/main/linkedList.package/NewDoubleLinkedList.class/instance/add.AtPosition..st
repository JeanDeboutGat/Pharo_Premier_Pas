adding
add: anElement AtPosition: position
	"add anElement at the position given in the liste.
	 Not that the position here is counted from one.
	 In case the position is not valid, the error is returned "
	 | currentNode newNode count |
	
	 "don't accept the non stricly positive position"
	(position < 1 or: position > self length)
	 ifTrue: [Error signal: 'Invalid entered position, the position must be stricly positive and not surpassing the size of list elements']. 
	
	currentNode  := head.
	newNode := Node  initializeWith: anElement.
	count := position. 
	
	[count>1  
	]whileTrue: [
	 currentNode := currentNode next.
	 count := count - 1.
	].
	
	newNode previous: currentNode previous.
	newNode next: currentNode next.
	(currentNode previous) next: newNode.
	currentNode previous: (currentNode previous next).
	
	
			
	