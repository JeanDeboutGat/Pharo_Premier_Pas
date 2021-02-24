tests
testGenerate	
			
	| successGenerator aClassOrAPaquage |
	aClassOrAPaquage := Dog new.
	successGenerator := DocGenerator generate: aClassOrAPaquage.
	self assert: successGenerator equals: true. 