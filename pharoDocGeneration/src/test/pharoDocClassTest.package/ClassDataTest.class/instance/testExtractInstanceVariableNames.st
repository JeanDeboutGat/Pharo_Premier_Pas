tests
testExtractInstanceVariableNames

	| aClassData classToExtract|
   aClassData := self setUpClassData: Dog new.
   self assert:  (aClassData extractInstanceVariableNames) equals:#('hairColor' 'age' 'size').
