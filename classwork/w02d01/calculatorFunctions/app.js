‘’'run();
var result;
function addNumbers(num1, num2) {
    result = num1 + num2;
    return result;
    console.log(result);
}
function subNumbers(num1, num2) {
    result = num1 - num2;
    return result;
    console.log(result);
}
function multiplyNumbers(num1, num2) {
    result = num1 * num2;
    return result;
    console.log(result);
}
function divideNumbers(num1, num2) {
    result = num1 / num2;
    return result;
    console.log(result);
}
function raiseToPower(num1, num2) {
    result = Math.pow(num1, num2);
    return result;
    console.log(result);
}
function squareRoot(num1) {
    result = Math.sqrt(num1);
    return result;
    console.log(result);
}
function userChoice(num1, num2){
    var num1 = prompt(“Please enter your first number: “); // change to typeof
    var num2 = prompt(“Please enter your second number: “); // change to typeof

}
function options(){
    var num1, num2;
    var choice = prompt(“Please choose which function you want: + - / * p s ” );
    if (choice == “+”) {
        userChoice(num1, num2);
        addNumbers(num1, num2);
    } else if (choice == “-”) {
        userChoice(num1, num2);
        subNumbers(num1, num2);
    } else if (choice == “*”) {
        userChoice(num1, num2);
        multiplyNumbers(num1, num2);
    }else if (choice == “/”) {
        userChoice(num1, num2);
        divideNumbers(num1, num2);
    }else if (choice == “p”) {
        userChoice(num1, num2);
        raiseToPower(num1, num2);
    }else if (choice == “s”) {
        var num1 = prompt(“Please enter your first number: “);
        squareRoot(num1);
    } else {

        console.log(“invalid choice”);
    }
}
function run() {
    options();
    console.log(parseInt(result));
}‘’''