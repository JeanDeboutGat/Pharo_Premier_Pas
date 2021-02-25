as yet unclassified
generateFileFrom: aClassDoc
	"create a file containing the documentation of a class"	
			
	| docFile stream |
	docFile := 'fileDoc.txt' asFileReference.
	docFile exists.
	
	stream  := docFile  writeStream.
	stream nextPutAll: aClassDoc.
	stream close