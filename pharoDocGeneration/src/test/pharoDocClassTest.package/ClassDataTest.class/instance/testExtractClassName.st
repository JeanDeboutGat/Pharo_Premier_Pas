tests
testExtractClassName
	| aClassData classToExtract|
	classToExtract := Dog new.
	aClassData := self setUpClassData: classToExtract. 
	self assert:  (aClassData extractClassName) equals: 'Dog'.
	
	
	