//pseudo code
//declare global variables
var boxes = $('td');
var counter = 0;
var player1 = "X";
var player2 = "O";
var playerTurn = $('.playerTurn');
var playerInput = 1;
var table = $('table');
var input = storePlayerInput(playerInput);
var winning;

// win coditions 
//012, 345, 678, 036, 147, 258, 048, 642
//

//make functions
// function onClick(box1){
//          $(box1).on('click', function(){
//          	if(counter%2 == 0){
//              $(box1).html(player1);
//              $(box1).addClass(player1);
//             counter += 1;
//              playerTurn.html("it is O's turn");
//             //	displayPlayer1();
//          } else {
//            counter += 1;
//            	$(box1).html(player2);
//             $(box1).addClass(player2);
//             playerTurn.html("it is X's turn");
//           //displayPlayer2();
//          }
//        })
//     }

//make function to change html to say, whos turn it is

//win condition function
	//search through array of win conditions and compare a variable of the choices each player has made, after each click 
//make function to get the state of each td block on screen
function getState(td){
	if(td.hasClass('X') || td.hasClass('O')) {
		return 1;
	} else {
		return 0;
	}

}
//function to display X or 0 for current player, depending on the input variable
function storePlayerInput(playerInput) {

	  if(playerInput == 1) {
    return 'X';
  } else {
    return 'O';
  }
}
  //function to change player from X to O
function changePlayer(playerInput){

	  if(playerInput == 1) {
    return playerInput = 2;
  } else {
    return playerInput = 1;
  }
}
//function to change player input
function changePlayerInput(td, input) {
	return td.addClass(input);
	 //td.html(input);
}
//function to display who's turn it is
function displayTurn (playerTurn, playerInput) {
	playerTurn.html("it is player " + playerInput + "'s turn");
}
//function to reset table 
function reset(){
	//add Click event listener
	$('#reset').click(function() {
		  table.find('td').each(function() {
    $(this).removeClass('X').removeClass('O');
  	});	
	})
}
//make a win condition that compares the vales of the classes that i give to each td, give each td an id to locate the individual blocks so i can find the class on each individual block
	function winCondition(table, input) {
		winning = 0
		if(table.find('#block0').hasClass('X'|| 'O' || 'O') && table.find('#block1').hasClass('X'|| 'O') && table.find('#block2').hasClass('X'|| 'O')) {
			winning = 1;

		} else if (table.find('#block3').hasClass('X'|| 'O') && table.find('#block4').hasClass('X'|| 'O') && table.find('#block5').hasClass('X'|| 'O')) {
			winning = 1;

		} else if (table.find('#block6').hasClass('X'|| 'O') && table.find('#block7').hasClass('X'|| 'O') && table.find('#block8').hasClass('X'|| 'O')) {
			winning = 1;

		} else if (table.find('#block0').hasClass('X'|| 'O') && table.find('#block3').hasClass('X'|| 'O') && table.find('#block6').hasClass('X'|| 'O')) {
			winning = 1;

		} else if (table.find('#block1').hasClass('X'|| 'O') && table.find('#block4').hasClass('X'|| 'O') && table.find('#block7').hasClass('X'|| 'O')) {
			winning = 1;

		} else if (table.find('#block2').hasClass('X'|| 'O') && table.find('#block5').hasClass('X'|| 'O') && table.find('#block8').hasClass('X'|| 'O')) {
			winning = 1; 

		} else if (table.find('#block0').hasClass('X'|| 'O') && table.find('#block4').hasClass('X'|| 'O') && table.find('#block8').hasClass('X'|| 'O')) {
			winning = 1;

		} else if (table.find('#block6').hasClass('X'|| 'O') && table.find('#block4').hasClass('X'|| 'O') && table.find('#block2').hasClass('X'|| 'O')) {
			winning = 1;
		}
	}

//alernate the input for each click

//run function

function run() {	

	reset();
		//make a click function
	$('td').click(function(){
		displayTurn(playerTurn, playerInput);
		td = $(this);
		var state = getState(td);
		winCondition(table, input);
		playerInput = changePlayer(playerInput);
		storePlayerInput(playerInput);
		changePlayerInput(td, input);
		console.log(winning);

		if(!state) {
			
	
			//console.log(input);
		} else {

		}
	})

}

run();