as yet unclassified
displayList
	"Dipslay all the elements in the list"
	
	| currentNode |
	currentNode := head.
	self isEmpty 
	ifTrue: [ Transcript show: 'Votre liste est vide!!!!!' cr. ^nil].
	Transcript show: 'Liste des elements dans votre liste:' withCRs.
	 
	[ currentNode isNotNil  
	]whileTrue: [ 
	 Transcript show: currentNode element.
	 currentNode := currentNode next
	].
 
	