as yet unclassified
generateClassDataFormatFrom: classData
	"return the "
   ^ FormatDoc from: (ClassData  extractClassDataFrom: (classData new))