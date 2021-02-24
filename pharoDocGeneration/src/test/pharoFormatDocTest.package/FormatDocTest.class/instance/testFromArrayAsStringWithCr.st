tests
testFromArrayAsStringWithCr

	| anArray expected formatter |
	anArray := #('dog' 'cat').
	expected := #('dog' 'cat') asStringWithCr.
	formatter := FormatDoc new.
	self assert: (formatter fromArrayToStringWithCr: anArray)  equals: expected.
	
