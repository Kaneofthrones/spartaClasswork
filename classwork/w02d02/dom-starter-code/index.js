// var selected = document.querySelectorAll('li.selected'); //css query
// console.log(selected);

// //selected[0].innerHTML = 'hello hello'; //access elements inside the array

// for (var i = 0; i < selected.length; i++) {
// 	selected[i].innerHTML = 'hello hello';
// }



//adding a new element

// var pTag = document.createElement('p');

// pTag.innerHTML = "this is a new P tag";

// document.getElementById('wrapper').appendChild(pTag);



var list = ['Niall', 'Ollie', 'Richard', 'Steve', 'Tim', 'Lexie', 'Rob', 'Kieron'];

	var nameList = document.getElementById('list');
	var listItems = document.getElementsByTagName('li')
	console.log(listItems);
//create loop to call addNewLi for every time in list
for (i = 0; i < list.length; i++) {
	addNewLi(list[i]);
}

for(var i = 0; i < listItems.length; i++) {
	if (i % 2 === 0) {
		listItems[i].classList.add('even');
	}
}


var countSpan = document.getElementById('count');
countSpan.innerHTML = listItems.length;

	function addNewLi(text) {
		var newLi = document.createElement('li');
		newLi.innerHTML = text;
		nameList.appendChild(newLi);
	}

	// nameList.innerHTML = list[0];
	// document.getElementById('list').appendChild(nameList);
// for (var i = 0; i < names.length; i++) {
// 	names[i].innerHTML 
// }