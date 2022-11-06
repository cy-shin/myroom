
// 인라인
const il1 = document.getElementById("il1");
il1.innerText = "<button onclick='함수명()'>버튼</button>";

const il2 = document.getElementById("il2");
il2.innerText = "function 함수명() { alert('메세지') }  ";

// 고전
const cl1 = document.getElementById("cl1");
cl1.innerText = "<button id='함수아이디'></button>";

const cl2 = document.getElementById("cl2");
cl2.innerText = "document.getElementById('함수아이디').onclick = function() {함수}";

document.getElementById("cl3").onclick = function() {
    alert("고전 이벤트 처리 방법");
}