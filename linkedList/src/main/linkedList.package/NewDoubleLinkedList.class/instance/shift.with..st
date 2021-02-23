as yet unclassified
shift: currentNode with: newNode
	"shifts the currentNode next pointer to the newNode and the previous newNode pointer
	 to the currentNode "
	
	newNode previous: currentNode previous.
	newNode next: currentNode next.
	(currentNode previous) next: newNode.
	currentNode previous: (currentNode previous next).