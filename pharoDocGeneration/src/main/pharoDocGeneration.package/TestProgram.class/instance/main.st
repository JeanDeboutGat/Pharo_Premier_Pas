accessing
main
	
	"This method verifies the expected outcomes in the image folder.
	 Let's try different inputs variables and then check in our image folder."
	
	
	| inputFile |
	
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


