tests
testExtractInstanceVariableNames

	| aClassData |
   aClassData := self setUpClassData: Dog new.
   self assert:  (aClassData extractInstanceVariableNames) equals:#('hairColor' 'age' 'size').
