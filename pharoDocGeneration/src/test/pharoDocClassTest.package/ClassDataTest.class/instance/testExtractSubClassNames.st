tests
testExtractSubClassNames

	| dogClassData |
	
	dogClassData := self setUpClassData: Dog new.
	self assert:  (dogClassData extractSubClassesNames) equals:{CockerSpaniel. SpringerSpaniel}.
	
