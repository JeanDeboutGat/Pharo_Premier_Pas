accessing
getElementAtPosition: position 
 
	"return the element at the position given the parameter from the list.
	 Note that we count the position starting from 1 "
			
	| currentNode |
	
	 "don't accept the non stricly positive position"
	 (position < 1 or: position > self length)
	 ifTrue: [Error signal: 'Invalid entered position, the postion must be stricly positive and not surpassing 	 the size of list elements']. 
	
    "check whether the list is empty"
	 self isEmpty
	 ifTrue:[Error signal: 'The list is empty, try to add some elements please!!!']. 
	
	 currentNode := self computeSuccesor: head   atPosition: position.
	 ^currentNode element.  
	