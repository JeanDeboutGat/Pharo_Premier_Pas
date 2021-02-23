adding
addAll: listToAdd
	"add all elements from listToAdd to the self list"

	| listToAddSize myListSize|
	myListSize := self length.
	listToAddSize := listToAdd length.
	
	1 to: listToAddSize do: [ :each | self addNode: (listToAdd getElementAtPosition: each) ].