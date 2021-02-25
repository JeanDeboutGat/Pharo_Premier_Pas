as yet unclassified
generateFileFrom: aClassDoc asFileNumber: fileNum
	"create a file containing the documentation of a class"	
			
	| docFile stream |
	docFile := ('file',fileNum asString,'.txt') asFileReference.
	docFile exists.
	
	stream  := docFile  writeStream.
	stream nextPutAll: aClassDoc.
	stream close