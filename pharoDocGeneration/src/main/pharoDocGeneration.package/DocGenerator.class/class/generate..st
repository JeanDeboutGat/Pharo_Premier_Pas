translating
generate: inputFile

	"recuperate a class or a package  and generate a documentation  file.
	 In case a file input doesn't exist a user is noticed."

	| aClassData aPackage classDoc succeeded |
	succeeded := false.

	inputFile isString 
		ifFalse: [ 
			aClassData := ClassData extractClassDataFrom: inputFile.
			classDoc := FormatDoc from: aClassData.
			self generateFileFrom: classDoc.
			succeeded := true ]
		ifTrue: [ "to do later!!!!!!" succeeded := true ].

	succeeded = false ifTrue: [  ]