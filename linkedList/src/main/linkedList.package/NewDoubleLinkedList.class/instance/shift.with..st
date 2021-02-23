as yet unclassified
shift: currentNode with: newNode
	"shifts the currentNode next pointer to the newNode and the previous newNode pointer
	 to the currentNode "
	currentNode == head 
	ifTrue: [ 
		newNode next: currentNode.
		currentNode previous: newNode.
		head := newNode 
	]
	ifFalse: [
	 		
		newNode previous: currentNode previous.
	   newNode next: currentNode .
	   (currentNode previous) next: newNode.
	   currentNode previous: (currentNode previous next).
		
	] 
