tests
testFormatSubClassesNames

	|dogClassData subClassesDataNames  subClassesNamesExpected  formatter|
	
	dogClassData 	   		  :=  ClassData extractClassDataFrom: Dog new.
	subClassesDataNames     := dogClassData extractSubClassesNames.
   subClassesNamesExpected := 'CockerSpaniel',String cr, 'SpringerSpaniel'.

	formatter := FormatDoc new.
	self assert: (formatter formatSubClassesNamesFrom: subClassesDataNames )  equals: subClassesNamesExpected
	