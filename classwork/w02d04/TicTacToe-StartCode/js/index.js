$(function(event) {

	//initial variables
	//find game squares
	var	$boxes = $('td');
	//screen for player turn
	var $turnText = $('.playerTurn');
	//counter for moves and wins
	var counter = 0;
	var winCounter = 0;

	//Arrays to track the moves of players
	var OMoves = [];
	var XMoves = [];
	//array of winning combinations

	//-----------------------------------------

	//function to run on page load 	
	function start(){
		//call function to add the X and O box listeners
		addXandOListeners();
		//call function to setup reset listener
		addResetListener();

	}
	var winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];


//--------------------------------------------

	//the function to set up X and O listeners
	function addXandOListeners(){
		//counting down in a for loop
		for(var i = $boxes.length -1; i >= 0; i--){
			var $box = $($boxes[i]);
			$box.on('click', addXorO)
		}
	}

//----------------------------------------------

//function to set up the reset listener
	function addResetListener(){
		console.log('reset listener');
		$('#reset').on('click', resetBoard);
	}

//------------------------------------------

// function to remove the all the boxes event listeners
	function removeXandOListeners(){
		for (var i = $boxes.length -1; i >= 0; i--) {
			var $box = $($boxes[i]);
			$box.off('click', addXorO);
		}
	}

//-----------------------------------------------

//function to add X and O to screen
	function addXorO(){
		//this = the box that is being clicked
		var $box = $(this);
		//check if the box has already been in play
		if($box.html().length === 0){
			//if the counter is even its O's turn
			if(counter % 2 === 0){
				//take the data-num from the game square and push into O's moves array
				OMoves.push(parseInt($box.attr('data-num')));
				$box.html('O').attr('class', 'O');
				$turnText.html('It is "X"s turn');
				counter++;
				checkWin(OMoves, 'O');
			} else {
				XMoves.push(parseInt($box.attr('data-num')));
				//set the box to have X and change class
				$box.html('X').attr('class', 'X');
				$turnText.html('It is "O"s turn');
				counter++;
				checkWin(XMoves, 'X');
			}
		}

		//draw condition, so if the counter is >= 10 then decalre a draw
		if(counter >= 9){
			$turnText.html('Draw - Game Over');
		}

	}

//-------------------------------------------------

//function to check to see which player has won
	function checkWin(movesArray, name) {
		for(i = 0; i < winningCombinations.length; i++) {
			winCounter = 0;
			for(var j = 0; j < winningCombinations[i].length; j++) {
				if(movesArray.indexOf(winningCombinations[i][j]) !== -1) {
					winCounter++;
				}
				if(winCounter === 3) {
					$turnText.html('Game Over ' + name + ' wins');
					removeXandOListeners();
				}
			}
		}

	}

//-----------------------------------------------

//function to do the reset of the board
	function resetBoard() {
		for (var i = $boxes.length - 1; i >= 0; i--) {
			var $box = $($boxes[i]);
			$box.html('').attr('class', 'clear');
		}
		OMoves = [];
		XMoves = [];
		winCounter = 0;
		counter = 0;
		addXandOListeners();
		$turnText.html('It is "O"s turn');

	}

start();

})