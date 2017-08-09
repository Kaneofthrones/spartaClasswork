document.addEventListener('DOMContentLoaded',function(){
var form = document.getElementById("myForm");
var enterName= document.getElementById("enterName");

form.addEventListener("submit",function(){
    event.preventDefault();
    newDiv(enterName.value)
})

function newDiv(text){
    var newDiv= document.createElement("div");
    newDiv.className="lol";
    newDiv.innerHTML=text;
    document.body.appendChild(newDiv);


}

})