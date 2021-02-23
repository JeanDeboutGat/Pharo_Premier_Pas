compute
computeSuccessor: aNode atPosition: aPosition  
	"compute the node succeding aNode at the position aPosition "
	
	| currentNode count  |	
	currentNode := aNode.
	count:= aPosition.
	[count>1  
	]whileTrue: [
	 currentNode := currentNode next.
	 count := count - 1
	].
   ^currentNode .