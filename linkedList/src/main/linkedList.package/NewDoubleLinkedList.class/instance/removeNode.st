removing
removeNode 
	"remove the last element from the list.
	 If the list is empty the  error is returned
	 otherwise the last node is removed from the list"
	| currentNode |	
	
	head 
	ifNil:[
			NullPointerException   signal: 'Impossible to remove the element(s) in the empty list, add elements to proceed!!!'	
	]
	ifNotNil:	[
			currentNode := self computeSuccessor: head atPosition: (self length - 1).
			currentNode next: (currentNode next next).
			tail := currentNode.  
	]
	

 
