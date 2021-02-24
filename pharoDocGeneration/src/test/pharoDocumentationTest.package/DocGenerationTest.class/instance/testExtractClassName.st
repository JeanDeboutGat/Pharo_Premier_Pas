tests
testExtractClassName
	| aClassData classToExtract|
	classToExtract := Dog new.
	aClassData := ClassData extractClassDataFrom: classToExtract. 
	self assert:  (aClassData extractClassName: classToExtract) equals: 'Dog'.
	
	
	