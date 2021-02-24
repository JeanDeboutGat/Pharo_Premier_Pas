tests
testExtractInstanceVariableNames

	| aClassData classToExtract|
	classToExtract := Dog new.
	aClassData := ClassData extractClassDataFrom: classToExtract. 

	self assert:  (aClassData extractInstanceVariableNames) equals:#('hairColor' 'age' 'size').
