tests
testFormatMethodsNames

	| aClassData aClassDataMethods methodsExpected  formatter|
	
	aClassData := ClassData extractClassDataFrom: Dog new.
	aClassDataMethods:= aClassData extractMethodsNames.
	
	methodsExpected := #('ageInHumanYears' 'getSize') asStringWithCr.
	formatter := FormatDoc new.
	
	self assert: (formatter formatMethodsFrom: aClassDataMethods)  equals: methodsExpected
	