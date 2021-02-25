tests
testGenerate	
			
	| aClass aPackage  invalid|
	aClass := Dog new.
	aPackage := 'animal'.
	invalid:= 'IamNotAClassNorAPackage'
	self shouldnt: (DocGenerator generate: aClass) raise: Error.
	self shouldnt: (DocGenerator generate: aPackage) raise: Error.
	self should: (DocGenerator generate: invalid) raise: Error.  
	