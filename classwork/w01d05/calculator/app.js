
var calculator = (prompt("Enter 'b' for basic calculator, 'a' for advanced calculator and 'bmi' for advanced calculator, 'm' for Mortgage payments"));

// var result = parseInt(prompt(numberOne  operator  numberTwo));

console.log('Number1', numberOne)
console.log('Operator', operator)
console.log('number2', numberTwo)
console.log("height", height)
console.log("weight", weight)
console.log("x", x)
console.log("y", y)

switch(calculator) {
	case "b" :
	var numberOne = parseInt(prompt("enter first number:"));
	var operator = (prompt("+ - / *"));
	var numberTwo = parseInt(prompt("enter second number:"));
	break;

	case "a":
	var x = parseInt(prompt("enter first number:"));
	var operator = (prompt("enter sqrt or power"));
	break;

	case "bmi" :
	var height = parseFloat(prompt("enter your height in meters:"));
	var weight = parseFloat(prompt("enter your weight in kg:"));
	var BMI = (weight / (height * height));
	break;

	case "m" :
	var p = parseFloat(prompt("Enter inital amount you borrowed:"));
	var n = parseFloat(prompt("Enter number of years to pay back:"));
	var i = parseFloat(prompt("Enter monthly interest rate:"));
	var sum = (p*(i*(1+i)*Math.pow(n))/((1+i)*Math.pow(n)-1));
	alert(sum);
	break;
}

//---basic calculator---

if (operator == "+") {
		var sum = numberOne + numberTwo;
		alert(sum);
	} else if (operator == "-") {
		var sum = numberOne - numberTwo;
		alert(sum);
	} else if (operator == "/") {
		var sum = numberOne / numberTwo;
		alert(sum);
	} else if (operator == "*") {
		var sum = numberOne * numberTwo;
		alert(sum);
	}

//---Advanced Calculator---

if (operator == "sqrt") {
	var sum = Math.sqrt(x);
	alert(sum);
} else if (operator == "power") {
	var y = parseInt(prompt("enter second number:"));
	var sum = Math.pow(x, y);
	alert(sum);
}

//--- BMI calculator---

if (BMI < 18.5) {
	alert("your Skinny");
} else if (BMI > 18.6 && BMI < 24.9) {
	alert("Your doing Great because you are healthy");
} else if (BMI > 25 && BMI < 29.9) {
	alert("Get to the gym because you are Overweight");
} else if (BMI > 30) {
	alert("there's no hope because you are OBESE");
}

//--- Mortgage calculator ---

// if () {
// 	var sum = p(i(1+i)Math.pow(n))/((1+i)Math.pow(n)-1);
// 	alert(sum);
// }
