as yet unclassified
generateClassDataFormatFrom: classData
	"return the data of class in a formatted style"
   ^ FormatDoc from: (ClassData  extractClassDataFrom: (classData new))