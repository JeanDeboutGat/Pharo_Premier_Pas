tests
testFormatClassName

	| aClassData aClassNameData classNameExpected  formatter|
	
	aClassData    := ClassData extractClassDataFrom: Dog new.
	aClassNameData:= aClassData extractClassName.
	
	classNameExpected := 'Dog'. 
	formatter := FormatDoc new.
	
	self assert: (formatter formatClassNameFrom: aClassNameData)  equals: classNameExpected