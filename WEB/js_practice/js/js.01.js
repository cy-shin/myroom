const text1 = document.getElementById("text1");
const text2 = document.getElementById("text2");
const text3 = document.getElementById("text3");
const html = document.getElementById("html");
const sample = document.getElementById("sample");

text1.innerText = "innerText : " +  sample.innerText;
text2.innerHTML = "innerHTML : " +  sample.innerHTML;
text3.innerText = "innerHTML을 innerText로 : " +  sample.innerHTML;

const confirm = document.getElementById("confirm")
const prompt = document.getElementById("prompt")
const alert = document.getElementById("alert")

confirm.addEventListener("click", function(){
    confirm = window.confirm("window.confirm입니다.")
});

prompt.addEventListener("click", function(){
    prompt = window.prompt("window.prompt입니다.")
});

alert.addEventListener("click", function(){
    alert = window.alert("window.alert입니다.")
});

const classes = document.getElementsByClassName("class");

classes[0].style.color="red";
classes[1].style.color="blue";

