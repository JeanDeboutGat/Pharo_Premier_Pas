initialization
extractClassDataFrom: aClass
	"initialize  and set an object aClass to be extracted  "
				
	| aClassData | 
	aClassData  := self new.
	aClassData setClassData: aClass. 
	^aClassData
	