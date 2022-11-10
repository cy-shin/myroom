// 모달 만들어보기
const reportOpenBtn = document.getElementById("report-open-btn");
const dim = document.getElementById("dim");
const reportModal = document.getElementById("report-modal");
const closeBtn = document.getElementById("close-btn");
const body = document.getElementsByTagName("body")[0];

// open
reportOpenBtn.addEventListener("click", function(){
    dim.style.display="flex";
    reportModal.style.display="flex";
    closeBtn.style.display="block";
    body.style.overflow="clip";
})  

// close
closeBtn.addEventListener("click", function(){
    dim.style.display="none";
    reportModal.style.display="none";
    body.style.overflow="visible";
})

// 스크롤 막는 방법
// 1. overflow : hidden(스크롤 가능), clip(코드 입력으로 스크롤 불가)
// 2. position : fixed <- 배치가 틀어질 수 있음
// 3. js를 이용해서 스크롤바 끄기

// // 클릭 테스트
// const clickTest = document.getElementById("clickTest");
// clickTest.addEventListener("click", function(){
//     this.style.backgroundColor="red";

// })