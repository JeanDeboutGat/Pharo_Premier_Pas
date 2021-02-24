tests
testExtractClassName
	| aClassData classToExtract|
	classToExtract := Dog new.
	aClassData := ClassData extractClassDataFrom: classToExtract. 
	aClassData extractClassName: classToExtract = 'Dog'.
	
	
	