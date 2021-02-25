tests
testGenerate	
			
	| aClass aPackage  invalid|
	aClass := Dog new.
	aPackage := 'animal'.
	invalid:= 'myErrorMustBeHandled'.
	self shouldnt: (DocGenerator generateDocFrom: aClass) raise: Error.
	self shouldnt: (DocGenerator generateDocFrom: aPackage) raise: Error.
	self shouldnt: (DocGenerator generateDocFrom: invalid) raise: Error.  
	