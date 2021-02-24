as yet unclassified
extractSuperClassName
	"return a super class name.
	 It extracts the only first item containing the superclass name from the array 
	returned by class superclass className substrings "
		 
	^Array with: ((classData class superclass className  substrings) first ).