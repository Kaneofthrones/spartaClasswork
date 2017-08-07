// //call functions put in a while and break the loop when someone gets to 3 wins
// //declare variables
var compChoices = ["r","p","s","l","sp"];
var comWins = 0;
var userWins = 0;
var input;
// randomise computer choice
var comChoice;
// // make a function to show welcome message to the user and get user input
function welcome() {
	input = prompt("Welcome to Rock Paper Scissors lizard spock \n \n type 'r' for rock \n \n type 'p' for paper \n \n type 's' for scissors \n \n type 'l' for lizard \n \n type 'sp' for spock" );
}
// //make function to compare user input to computer input
function compare(input, comChoice) {
	var comChoice = compChoices[Math.floor(Math.random()*compChoices.length)];
	if ((input === 'r' && comChoice === 'p') || (input === 'p' && comChoice === 's') || (input === 's' && comChoice === 'r') || (input === 'l' && comChoice === 'r') || (input === 'sp' && comChoice === 'l') || (input === 'r' && comChoice === 'sp') || (input === 's' && comChoice === 'sp') || (input === 'p' && comChoice === 'l') || (input === 'l' && comChoice === 's') || (input === 'sp' && comChoice === 'p')) {
		alert("you loose \n \n The score is \n you: " + userWins + "\n computer: " + comWins);
		comWins += 1;
	} else if (input === comChoice) {
		alert("draw \n \n The score is \n you: " + userWins + "\n computer: " + comWins);
	} else {
		userWins += 1;
		alert("you win \n \n The score is \n you: " + userWins + "\n computer: " + comWins);
	}
}
while(userWins < 3 && comWins < 3) {
	welcome();	
	compare(input, comChoice);
	console.log("userWins " + userWins + "computerWins " + comWins);
}