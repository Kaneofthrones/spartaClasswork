$(function(event) {
	console.log('DOM is ready');
	var count = $("#count");
	var items = $("li");
	var done = $("li.done");
	console.log(done);
	$("#list").prepend($('<li>NewItem</li>'));

	var todos = ['food shop', 'wash clothes', 'pay bills'];


	// $(todos).each(function(index, todolist){

	// 	// if (index === 1) {
	// 	// 	console.log(todolist);
	// 	// }

	// 	if (todolist === 'wash clothes') {
	// 		console.log(todolist);
	// 	}
	// })

	var a = $('#count').html();
	$('#count').html('5');

	$('count').css( 'color' , 'green');

	$("li").addClass('done');
	//change html element
	$('#count').html('10').css('color', 'blue');

  //add a html element
	var button = $('<button id="myButton">Click Me </button>');
	$('body').append(button);

	$("#myButton").on('click', function(){
		console.log('button clicked');
	})

})