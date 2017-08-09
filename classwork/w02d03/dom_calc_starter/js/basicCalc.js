//Set initial state variables

//find numbers
var numbers = document.getElementsByClassName("number");

//find operators
var operators = document.getElementsByClassName("operator");

//find equals
var eq = document.getElementsByClassName("eq")[0]; //possible get element by id

//find clear
var clear = document.getElementsByClassName("clear")[0];

//find display
var display = document.getElementsByClassName("display")[0];

//variable for firstNumber in calculation
var firstNumber = null;
//variable for secondNumber in calculation
var secondNumber = null;

//variable for operator clicked
var operator = null;
//variable for answer of calculations
var answer = null;

//-------------1st section----------------

//setup event listeners (make a function)
function setupEventListeners() {

	//number event listeners
		for(i = 0; i < numbers.length; i++){
			numbers[i].addEventListener('click', updateAndDisplayNumber)
		}
	//operators event listeners
		for(i = 0; i < operators.length; i++){
			console.log(operators[i]);
			operators[i].addEventListener('click', updateAndDisplayOperator)
		}
	//equal event listener
		eq.addEventListener('click', function(){
			calculation(firstNumber, operator, secondNumber);
		})
	//clear event listener 
	clear.addEventListener('click', clearCal);

}


//functions for calculator

//add

//subtract

//multiply 

//divide

//--------------------------------

//calculation fucntion
	function calculation(first_Number, operator, second_Number) {
	}


//-------------------------

//clear the calculator
function clearCal() {
		console.log('clearCal');

}

//display and store buttons clicked
function updateAndDisplayNumber() {

}


//display and store the operator
function updateAndDisplayOperator() {

}

setupEventListeners();







