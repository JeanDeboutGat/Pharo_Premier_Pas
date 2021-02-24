tests
testExtractSuperClassName

	| dogClassData cockerClassData springerClassData|
	dogClassData := self setUpClassData: Dog new.
	cockerClassData := self setUpClassData: CockerSpaniel  new.
	springerClassData := self setUpClassData: SpringerSpaniel new.

	
	self assert:  (dogClassData extractSuperClassName) equals:#('Object').
   self assert:  (cockerClassData extractSuperClassName) equals:#('Dog').
	self assert:  (springerClassData extractSuperClassName) equals:#('Dog').
	