translating
generate: inputFile  

	"recuperates a class or a package  and generates a documentation  file.
	 In case a file input doesn't exist a user is noticed that the input is invalid.."

	| aClassData aPackageData classDoc succeeded fileNumber|
	succeeded := false.
	fileNumber :=0.

	inputFile isClass 
		ifTrue: [ 
			aClassData := ClassData extractClassDataFrom: inputFile new.
			classDoc := FormatDoc from: aClassData .
			self generateFileFrom: classDoc asFileNumber: fileNumber  .
			succeeded := true 
		]
		ifFalse: [  
		   aPackageData  := ((inputFile asPackage definedClasses) select: [ : each  | each isClass ]) asOrderedCollection.
	      aPackageData do: [ :eachClass| self generateFileFrom: (FormatDoc from: (ClassData  extractClassDataFrom: (eachClass new))) asFileNumber: fileNumber .
									fileNumber := fileNumber+1].
			succeeded := true.
		].

	succeeded = false 
	ifTrue: [  Transcript show: 'The entry package or class is invalid, please check and retry!!!']
	ifFalse: [  Transcript show: 'Your files documentation is well created, please find them in your image directory']