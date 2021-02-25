translating
generateDocFrom: inputFile  

	"recuperates a class or a package  and generates a documentation  file.
	 In case a file input doesn't exist a user is noticed that the input is invalid.
	 inputFile represents a class or a package"

	| aPackageData classDataFormat succeeded fileNumber|
	succeeded := false.
	fileNumber :=0.

	inputFile isClass 
		ifTrue: [ 
			classDataFormat :=self generateClassDataFormatFrom:inputFile.
			self generateFileFrom: classDataFormat asFileNumber: fileNumber  .
			succeeded := true 
		]
		ifFalse: [  
		   aPackageData  := self  generatePackageDataFrom:  inputFile.
	      aPackageData do: [ :eachClass| self generateFileFrom: (self generateClassDataFormatFrom: eachClass) 
									asFileNumber: fileNumber.fileNumber := fileNumber+1].
			succeeded := true.
		].

	succeeded = false 
	ifTrue: [  Transcript show: 'The entry package or class is invalid, please check and retry!!!']
	ifFalse: [  Transcript show: 'Your files documentation is well created, please find them in your image directory']