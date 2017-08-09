// Setup initial state variables
// Variables defined in global scope, not the best idea
//make event listener for number 1 
	
	
// Setup eventListeners
document.addEventListener("DOMContentLoaded", function(){

	var num1 = null;
	var num2 = null;
 var numbers = document.getElementsByClassName("number");
 var operators = document.getElementsByClassName("operator");
 var clears = document.getElementsByClassName("clear");
 var eqs = document.getElementsByClassName("eq");
 //var displayScreen = document.getElementsByClassName("display")[0];
 var inputValue;

	//for loop to loop through the numbers and assign them to the buttons

	for (var i = 0; i < numbers.length; i++) {
		numbers[i].addEventListener('click', function(event){
			document.getElementsByClassName("display")[0].value = this.value;
			console.log(this.value + " was pressed");
		})
	}
	for (var i = 0; i < operators.length; i++) {
		operators[i].addEventListener('click', function(event){
			document.getElementsByClassName("display")[0].value = this.value;
			console.log(this.value + " was pressed");
		})
	}
	for (var i = 0; i < clears.length; i++) {
		clears[i].addEventListener('click', function(event){
			document.getElementsByClassName("display")[0].value = " ";
			console.log(this.value + " was pressed");
		})
	}
	for (var i = 0; i < eqs.length; i++) {
		eqs[i].addEventListener('click', function(event){
			document.getElementsByClassName("display")[0].value = num1 + num2;
			console.log(this.value + " was pressed");
		})
	}


//print to console, use program in console first

//


	//getElementsByClassName(number)
} )

// Functions for calculator
