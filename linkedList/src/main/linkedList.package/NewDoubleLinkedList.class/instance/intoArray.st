as yet unclassified
intoArray
	"Transform the linked list into the array form.
	 It computes and copy every element in list into the array"
	| anArray count currentNode|.
	anArray := Array new: self length .
	count := 1.

	currentNode := head.
	self isEmpty 
	ifTrue: [ ^anArray ].
	 
	[currentNode isNotNil
	]whileTrue: [ 
	 anArray at: count put: currentNode element.
	 currentNode := currentNode next.
	 count := count + 1.
	].
   ^anArray .