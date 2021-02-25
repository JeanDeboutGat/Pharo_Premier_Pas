translating
generateDocFrom: inputFile  

	"recuperates a class or a package  and generates a documentation  file.
	 In case a file input doesn't exist, a user is noticed that the input is invalid.
	
	 Valid arguments are classes or packages :
	 - inputFile : class type (a class)
	 - inputFile : string     (a package) "

	| aPackageData classDataFormat succeeded fileNumber|
	succeeded := false.
	fileNumber :=0.

	[inputFile isClass 
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
    Transcript show: 'Your files documentation is well created, please find them in your image directory String cr'.
   ]on:Error
	 do:[ Transcript show: 'The entry is invalid,try with name of package as a string or a class as a class type and try againe!!!'.String cr].

