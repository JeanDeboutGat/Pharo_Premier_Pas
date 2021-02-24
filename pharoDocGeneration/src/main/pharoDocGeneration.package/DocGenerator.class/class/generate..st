translating
generate: AclassOrAPackage
	| aClassData classDoc|
	
	AclassOrAPackage isPackage
	ifFalse:[
		 aClassData := ClassData setClassData: aClassData.
		 classDoc   := ClassData formatDoc: aClassData.
		 self generateFileFrom: classDoc.
		
	] ifTrue:[ 
		"to do later!!!!!!"		
   ]
	 