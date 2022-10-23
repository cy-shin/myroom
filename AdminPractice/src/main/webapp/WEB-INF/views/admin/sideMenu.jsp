<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 사이드 메뉴 -->
<aside>
	<!-- 프로필, 밴드로 이동, 로그아웃 -->
	<section class="admin-profile">
		<div class="admin-logo">
			<div class="admin-logo-area">
				<img id="admin-logo-img"
					src="resources/images/admin-profile-icon.png">
			</div>
		</div>
		<div class="admin-name">
			<span>관리자1</span>
		</div>
		<div class="admin-quickmenu">
			<a href="#" id="home"><div>밴드 홈</div></a> <a href="#" id="logout"><div>로그아웃</div></a>
		</div>
	</section>

	<!-- 메뉴 리스트 -->
	<nav>

		<!-- css버전 -->
		<!-- <label for="menu0">
                        <div class="top-menu">메뉴 이름
                            <div class="top-menu-icon">
                                <img src="사진 경로">
                            </div>
                        </div>
                    </label>
                    <input type="checkbox" name="menu" id="menu0">
                    <ul>
                        <li class="sub-menu"><a href="#">서브메뉴 1</a></li>
                        <li class="sub-menu"><a href="#">서브메뉴 2</a></li>
                        <li class="sub-menu"><a href="#">서브메뉴 3</a></li>
                    </ul> -->
		<!-- css버전 끝 -->

		<!-- 자바스크립트 버전 -->
		<!-- <button class="top-menu">
                        <div class="top-menu-special">통계
                        </div>
                    </button>
                    <div class="dropdown-container">
                        <a href="#" class="sub-menu">서브메뉴 1</a>
                        <a href="#" class="sub-menu">서브메뉴 2</a>
                        <a href="#" class="sub-menu">서브메뉴 3</a>
                    </div> -->
		<!-- 자바스크립트 버전 끝 -->

		<button class="top-menu-btn">
			<div class="top-menu-item">
				<img src="resources/images/admin-page-icon.png"> <span>|</span>
				<div>커뮤니티</div>
			</div>
		</button>
		<div class="dropdown-container">
			<a href="/noticeList" class="sub-menu"> - 공지사항</a>
		</div>
		<button class="top-menu-btn">
			<div class="top-menu-item">
				<img src="resources/images/admin-member-icon.png"> <span>|</span>
				<div>사용자</div>
			</div>
		</button>
		<div class="dropdown-container">
			<a href="/memberManage" class="sub-menu"> - 사용자 관리</a> <a
				href="/memberReport" class="sub-menu"> - 신고 내역</a>
		</div>
		<button class="top-menu-btn">
			<div class="top-menu-item">
				<img src="resources/images/admin-group-icon.png"> <span>|</span>
				<div>소모임</div>
			</div>
		</button>
		<div class="dropdown-container">
			<a href="/groupManage" class="sub-menu"> - 소모임 관리</a> <a
				href="/groupReport" class="sub-menu"> - 신고 내역</a>
		</div>
		<button class="top-menu-btn">
			<div class="top-menu-item">
				<img src="resources/images/admin-analytics-icon.png"> <span>|</span>
				<div>분석 / 통계</div>
			</div>
		</button>
		<div class="dropdown-container">
			<a href="/statistics" class="sub-menu"> - 통계</a>
		</div>

	</nav>

</aside>

<script>
	var dropdown = document.getElementsByClassName("top-menu-btn");
	var i;

	for (i = 0; i < dropdown.length; i++) {
		dropdown[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var dropdownContent = this.nextElementSibling;
			if (dropdownContent.style.display === "block") {
				dropdownContent.style.display = "none";
			} else {
				dropdownContent.style.display = "block";
			}
		});
	}
</script>