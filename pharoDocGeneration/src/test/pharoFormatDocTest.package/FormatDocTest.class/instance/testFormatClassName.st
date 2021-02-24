tests
testFormatClassName

	| aClassData aClassNameData classNameExpected  formatter|
	
	aClassData    := ClassData extractClassDataFrom: Dog new.
	aClassNameData:= aClassData extractClassName:Dog new.
	
	classNameExpected := 'Dog'. 
	formatter := FormatDoc new.
	
	self assert: (formatter formatClassNameFrom: aClassNameData)  equals: classNameExpected