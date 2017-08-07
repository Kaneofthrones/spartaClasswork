 
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
//make variables to keep a count of the amount of times the player has won
var playerWins = 0;
var comWins = 0;
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
	 //return compare();
	}
	if (userInput === 'r') {
		//nest the if statement to compare just the event of the user selecting rock
		if (computerInput === 'p') {
			comWins += 1;
			alert("paper wins");
			return compare();	
		} else {
			playerWins += 1;
			alert("you win this round");
			return compare();
		}
	}

	if (userInput === 'p') {
		//nest the if statement to compare just the event of the user selecting paper
		if (computerInput === 's') {
			comWins += 1;
			alert("Scissors wins");
			return compare();
		} else {
			playerWins += 1;
			alert("you win this round");
			return compare();
		}
	}
	if (userInput === 's') {
		//nest the if statement to compare just the event of the user selecting Scissors
		if (computerInput === 'r') {
			comWins += 1;
			alert("Rock wins");
			return compare();
		} else {
			playerWins += 1;
			alert("you win this round");
			return compare();
		}
	}
	else {
	 //document.location.reload(false);
		}
  }
//call the function and put the function inside a while loop and break the loop after someone gets to 3 wins
for (playerWins = 0; playerWins < 3; playerWins++ ) {
	compare(choice, comChoice);
}
alert("Your number of wins: " + playerWins + " number of computer wins: " + comWins);



