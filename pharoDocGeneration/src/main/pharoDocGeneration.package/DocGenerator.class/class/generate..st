translating
generate: inputFile
	"recuperate a class or a package  and generate a documentation  file.
	 In case a file input doesn't exist a user is noticed."

	| aClassData aPackage classDoc succeeded|
	
	succeeded :=False.
	inputFile isPackage
	ifFalse:[
		 aClassData := ClassData extractClassDataFrom: inputFile.
		 classDoc   := FormatDoc from: aClassData.
		 self generateFileFrom: classDoc.
		 succeeded :=True.
			
	] ifTrue:[ 
		"to do later!!!!!!"	
		succeeded :=True
   ].

   succeeded = False 
   ifTrue:[ 
		Transcript show: 'The documentation generation failed. Please check if the input file is valid!!!!!'
	 ].