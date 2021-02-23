removing
removeOnHead 
	"remove the last element from the list.
	 If the list is empty the  error is returned
	 otherwise the last node is removed from the list"
	
	self isEmpty  
	ifTrue:[
			NullPointerException   signal: 'Impossible to remove the element(s) in the empty list, add elements to proceed!!!'	
	]
	ifFalse:	[
			
			head := head next.  
	]
	