tests
testExtractMethodsNames

	| aClassData|
	aClassData := self setUpClassData: Dog new.
   self assert:  (aClassData extractMethodsNames) equals:#('ageInHumanYears' 'getSize').