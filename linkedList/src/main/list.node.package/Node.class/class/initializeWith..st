set up
initializeWith: anElement
	"initialize and set the node with the given element "
				
	| node | 
	node := self new.
	node element: anElement. 
	^node