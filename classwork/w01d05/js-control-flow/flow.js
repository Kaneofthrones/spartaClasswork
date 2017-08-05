 var moneyInPocket = parseInt(prompt("suh dude"));

 var something = "string";

 if (moneyInPocket > 1000) {
 	console.log("Make it rain");
 } else if (moneyInPocket > 5 && moneyInPocket < 10) {
 	console.log("cheeky pint");
 }
 	else {
 		console.log("no money");
 	}

 	switch(moneyInPocket) {
 		case 10 :
 			console.log("shandy");
 			break;

 		case 20 : 
 			console.log("yaegerbomb");
 			break;

 		case 30 :
 			console.log("procecco");
 			break;
 		default:
 			console.log("henessey");
 	}