 
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
 var choice = prompt("Enter 'r' for Rock, 'p' for Paper and 's' for Scissors", " <R, P, S> ");

//if else statements to determine user input
if (choice == 'r' || 'R') {
	//action
}
if (choice == 'p' || 'P') {
	//action
}
if (choice == 's' || 'S') {
	//action
}
else {
	window.location.reload(true);
 }
