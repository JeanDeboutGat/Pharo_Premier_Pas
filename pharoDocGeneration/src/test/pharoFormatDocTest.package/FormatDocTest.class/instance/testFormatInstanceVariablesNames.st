tests
testFormatInstanceVariablesNames

	| aClassData aClassDataInstanceVariables instanceVariablesExpected  formatter|
	
	aClassData                  := ClassData extractClassDataFrom: Dog new.
	aClassDataInstanceVariables := aClassData extractInstanceVariableNames.
	
	instanceVariablesExpected   := #('hairColor' 'age' 'size')asStringWithCr.

	formatter := FormatDoc new.
	
	self assert: (formatter formatInstanceVariablesNamesFrom: aClassDataInstanceVariables)  equals: instanceVariablesExpected