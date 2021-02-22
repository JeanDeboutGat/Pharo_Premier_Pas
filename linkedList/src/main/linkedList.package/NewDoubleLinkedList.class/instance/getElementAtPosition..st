accessing
getElementAtPosition: position 
 
	"return the element at the position given the parameter from the list.
	 Note that we count the position starting from 1 "
			
	|currentPosition currentNode|
    currentPosition :=1.
	 currentNode := head.
	
	 "don't accept the non stricly positive position"
	 (position < 1 or: position > self length)
	 ifTrue: [Error signal: 'Invalid entered position, the postion must be stricly positive and not surpassing 	 the size of list elements']. 
	
    "check whether the list is empty"
	 self isEmpty
	 ifTrue:[Error signal: 'The list is empty, try to add some elements please!!!']. 
	
	[currentNode isNotNil 
	]whileTrue: [
	 	position = currentPosition 
		ifTrue: [ ^currentNode element  ].
	 	currentNode := currentNode next.
	 	currentPosition := currentPosition+1. 
	].
	"In case the position is > than currentPosition"
   Error signal: 'The position you are looking surpass the list size, please try again!!! '