tests
testGenerate	
			
	| aClass aPackage  invalid|
	aClass := Dog new.
	aPackage := 'animal'.
	invalid:= 'myErrorMustBeHandled'.
	self shouldnt: (DocGenerator generate: aClass) raise: Error.
	self shouldnt: (DocGenerator generate: aPackage) raise: Error.
	self shouldnt: (DocGenerator generate: invalid) raise: Error.  
	