tests
testExtractMethodsNames
	| aClassData classToExtract|
	classToExtract := Dog new.
	aClassData := ClassData extractClassDataFrom: classToExtract. 

	self assert:  (aClassData extractMethodesNames) equals:#('ageInHumanYears' 'getSize').