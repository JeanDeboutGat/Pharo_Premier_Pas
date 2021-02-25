instance creation
from: aClassData
	"returns name(s) of class, subclasses, superclass , methodes and instanceVariable.
	 It is the method which calls others from outside of this class "
	
 	| classInformation |
	
	classInformation := 'The Documentation of ', (self formatClassNameFrom: aClassData extractClassName), ' class: ',String cr ,String cr, String cr.
	classInformation := classInformation,  'Superlass      Name   :', String cr, String cr,  (self formatMethodsFrom: (aClassData extractSuperClassName )) , String cr.
	classInformation := classInformation,  'SubClass(es)   Name(s): ', String cr, String cr,  (self formatMethodsFrom: (aClassData extractSubClassesNames  )) , String cr.
	classInformation := classInformation,  'Methode(s)     Name(s): ', String cr, String cr,  (self formatMethodsFrom: (aClassData extractMethodsNames )), String cr.
	classInformation := classInformation,  'InstanceVariable(s) Name(s): ', String cr, String cr, (self formatMethodsFrom: (aClassData extractInstanceVariableNames )), String cr.
	
	^classInformation.	


