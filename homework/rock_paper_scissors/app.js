 
 //Display welcome dialog box 
  getConfirmation();
	function getConfirmation(){
	  var retVal = confirm("Welcome to Rock Paper Scissors, Press OK to begin");
	  if( retVal == true ){
	  	//Display an instruction page to remind users of the rules
	  	alert(" Rock: wins against scissors, loses to paper and stalemates against itself \n \n Paper: wins against Rock, loses to scissors and stalemates against itself  \n \n Scissors: wins against paper, loses to rock and stalemates against itself");
	    return true;
	   } 
	   else {
	   	return false;
	   }
 	}
	 //display a prompt for user to enter their choice
	 var choice = prompt("Enter 'r' for Rock, 'p' for Paper and 's' for Scissors", " < r, p, s > ");
	 // make a variable for the computers random choice
	 var comChoice = Math.random();
	 // make an if else statement to determine the random value, the value is any float from 0 to 1 
	 if (comChoice < 0.34) {
	 	comChoice = 'r';
	 } else if (comChoice >= 0.34 && comChoice < 0.68) {
	 		comChoice = 'p';
	 } else {
	 	comChoice = 's';
	 }
	 //switch for different outputs
	switch(choice) {
		case 'r' :
		break;
	}

	//if else statements to determine user input
	if (choice == 'r') {
		//action
	}
	if (choice == 'p') {
		//action
	}
	if (choice == 's') {
		//action
	}
	else {
		// window.location.reload(true);
	 }
