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
function add(firstNumber, secondNumber) {
	return firstNumber + secondNumber;
}
//subtract
function subtract(firstNumber, secondNumber) {
	return firstNumber - secondNumber;
}
//multiply 
function multiply(firstNumber, secondNumber) {
	return firstNumber * secondNumber;
}
//divide
function divide(firstNumber, secondNumber) {
	return firstNumber / secondNumber;
}
//--------------------------------
//calculation fucntion
	function calculation(first_Number, operator, second_Number) {
		switch (operator) {
			case "+":
				display.value = add(firstNumber, secondNumber);
				break;
			case "-":
				display.value = subtract(firstNumber, secondNumber);
				break;
			case "*":
				display.value = multiply(firstNumber, secondNumber);
				break;
			case "/":
				display.value = divide(firstNumber, secondNumber);
				break;
		}
	}
//-------------------------

//clear the calculator
function clearCal() {
		firstNumber = null;
		secondNumber = null;
		operator = null;
		display.value = "";
}

//display and store buttons clicked
function updateAndDisplayNumber() {
	var btn = this.value;
	display.value = btn;

	if(firstNumber === null) {
		firstNumber = parseFloat(btn);
	} else {
		secondNumber = parseFloat(btn);
	}
}
//display and store the operator
function updateAndDisplayOperator() {
	operator = this.value;
	display.value = operator;
}
// call function to run code
setupEventListeners();



