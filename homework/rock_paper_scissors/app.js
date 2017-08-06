 
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

	 //make function to compare the userInput to computerInput
	  var compare = function(userInput, computerInput) {
	  	//if else statements to determine user input
			if (userInput === computerInput) {
			 alert("Tie");
			}
			if (userInput === 'r') {
				//nest the if statement to compare just the event of the user selecting rock
				if (computerInput === 'p') {
					alert("paper wins");
				} else {
					alert("you win this round");
				}
			}

			if (userInput === 'p') {
				//nest the if statement to compare just the event of the user selecting paper
				if (computerInput === 's') {
					alert("Scissors wins");
				} else {
					alert("you win this round");
				}
			}

			if (userInput === 's') {
				//nest the if statement to compare just the event of the user selecting Scissors
				if (computerInput === 'r') {
					alert("Rock wins");
				} else {
					alert("you win this round");
				}
			}
			else {
			// window.location.reload(true);
	 		}
	  }
	  compare(choice, comChoice);



	
