adding
addAll: listToAdd
	"add all elements from listToAdd to the self list"
	
	|listToAddSize myListSize|
	
	listToAdd isEmpty 
	ifTrue: [ NullPointerException   signal: 'The list to be added must not be empty, add elements to proceed!!!']. 

	myListSize := self length.
	listToAddSize := listToAdd length.
	
	1 to: listToAddSize do: [ :each | self addNode: (listToAdd getElementAtPosition: each) ].