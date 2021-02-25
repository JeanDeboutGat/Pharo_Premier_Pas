as yet unclassified
generatePackageDataFrom: inputFile
	"returns all class datas from the package "
	"scope: class-variables  &  class-instance-variables"		
	^((inputFile asPackage definedClasses) select: [ : each  | each isClass ]) asOrderedCollection.