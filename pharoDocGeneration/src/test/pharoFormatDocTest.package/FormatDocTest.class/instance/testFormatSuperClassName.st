tests
testFormatSuperClassName

	| aSubClassData aSuperClassNameData superClassNameExpected  formatter|
	
	aSubClassData    	  := ClassData extractClassDataFrom: SpringerSpaniel  new.
	aSuperClassNameData  := aSubClassData extractSuperClassName.
	
	superClassNameExpected := 'Dog'.
	formatter := FormatDoc new.
	
	self assert: (formatter formatSuperClassNameFrom: aSuperClassNameData)  equals: superClassNameExpected
	
