accessing
length 
	"returns the length of the list"
	
	|count myNode|
    count :=0.
	 myNode := self head.
		
	[myNode isNotNil 
	]whileTrue: [ 
	 count := count+1.
	 myNode := myNode next
	].
   ^count
	
	
	
			
