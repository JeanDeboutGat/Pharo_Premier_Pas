accessing
main
	
	"This method verifies the expected outcomes in the image folder.
	 Let's try different inputs variables and then check in our image folder."
	
	
	| myList  listToAdd|
	
	"-------------------Initialise lists------------------"
	
	myList   := NewDoubleLinkedList new.
	listToAdd:= NewDoubleLinkedList new.
	
	
	"-------------------Add node(s) -----------------------"
	
	myList addNode: 1.
	myList addOnHead: 2.
	myList addOnTail: 3.
	myList displayList.
	"#(2 1 3) elements should be displayed"
	
	
	"-------------------Add one list to another  --------------"
	
	1 to: 3 do: [ :each | listToAdd addNode: each ].
	myList addAll: listToAdd. 
	myList displayList.
	"#(2 1 3 1 2 3) elements should be displayed"
	
	
	"-------------------Display length of a list----------------"  
	                     
	Transcript show: myList  length.
	"6 should be displayed as length of a list"
	
	
	"-------------------remove node(s) -------------------------"
	
	myList removeOnHead.
	myList removeOnTail.
	myList removeAtPosition:2.
	myList displayList.
	"#(1 1 2) elements should be displayed"
	
	"-------------------remove node(s) -------------------------"
	
	myList removeOnHead.
	myList removeOnTail.
	myList removeAtPosition:2.
	myList displayList.
	"#(1 1 2) elements should be displayed"
	
	"-------------------access the out bound position -----------------"
	
   "myList removeAtPosition:4."

   "The PositionOutOfBounds must be handled"
   "TODO-TOMORROW "
	
	

	