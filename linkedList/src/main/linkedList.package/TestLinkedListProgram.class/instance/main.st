accessing
main
	
	"This method verifies the expected outcomes in the image folder.
	 Let's try different inputs variables and then check in our image folder."
	
	
	| inputFile myList |  
	myList := NewDoubleLinkedList new.
	
	myList addNode: 5.

	
	"-----------------------Verify Classes----------------------- "
	
	inputFile := Dog.
	DocGenerator generateDocFrom: inputFile.
	
	inputFile := CockerSpaniel.
	DocGenerator generateDocFrom: inputFile.
	
	inputFile := SpringerSpaniel.
	DocGenerator generateDocFrom: inputFile.
	
	inputFile := Color.
	DocGenerator generateDocFrom: inputFile.
	
	
	"-----------------------Verify Packages----------------------- "
	
	inputFile := 'animal'.
	DocGenerator generateDocFrom: inputFile.
	
	inputFile := 'Color'.
	DocGenerator generateDocFrom: inputFile.


