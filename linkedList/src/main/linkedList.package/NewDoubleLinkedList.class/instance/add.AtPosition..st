adding
add: anElement AtPosition: position
	"add anElement at the position given, in the liste.
	 Not that the position here is counted from one.
	 In case the position is not valid, the error is returned "
	 
	| currentNode newNode  |
	(position < 1 or: position > self length)
	  ifTrue: [PositionOutOfBoundsException  signal: 'Position must be strictly positive and not surpassing the size of list elements!']. 
	
	newNode := Node  initializeWith: anElement.
   currentNode := self computeSuccesor: head  atPosition: position .
   
   self shift: currentNode with: newNode.
 
  
	

	
	
			
	