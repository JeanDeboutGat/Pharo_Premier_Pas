tests
testGenerate	
			
	| successGenerator aClassOrAPaquage |
	successGenerator := DocGenerator generate: aClassOrAPaquage.
	self assert: successGenerator equals: true. 