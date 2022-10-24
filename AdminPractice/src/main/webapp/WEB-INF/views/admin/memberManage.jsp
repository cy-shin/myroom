<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 | 사용자 관리 </title>

    <link rel="stylesheet" href="resources/css/adminPage-style.css">
    <link rel="stylesheet" href="resources/css/contentHeader-list-style.css">
    <link rel="stylesheet" href="resources/css/memberManage-style.css">
</head>
<body>
    <header>
        <section>
            <!-- 클릭 시 메인으로 이동하는 로고  -->
            <a href="#">
                <img src="resources/images/home-logo.png" id="home-logo">
            </a>
        </section>

        <section class="profile">
            <!-- 내 정보 사진 -->
            <button type="button" class="box">
                <img src="resources/images/admin-profile-icon.png" id="profile-photo">
            </button>
        </section>
    </header>


    <main>
        <section class="main">
            
            <!-- 사이드 메뉴 -->
			<jsp:include page="/WEB-INF/views/admin/sideMenu.jsp" />        
            <!-- 본문 -->
            <section class="admin-content">
                <section class="content-header">
                    <h6>사용자 - 사용자 관리</h6>
                    <h3>사용자 관리</h3>
                    <!-- 검색 개수 필터 -->
                    <form class="search-frm" action="/memberManage" method="POST">
                        <div>
                            <input type="text" name="keyword" value="${usedKeyword}" placeholder="이름 또는 이메일 입력">
                        	<button class="list-num-btn">검색</button>
                        </div>
						<!-- 검색 개수 필터 -->
						<select name="printNum">
							<option value=20 selected>20</option>
							<option value=50>50</option>
							<option value=100>100</option>
						</select>
					</form>
                </section>
                <section class="content-main">
                    <!-- 본문 입력 공간 -->
                    <div class="list-header">
                        <div class="member-number">번호</div>
                        <div class="member-email">이메일</div>
                        <div class="member-name">이름</div>
                        <div class="member-birth">생년월일</div>
                        <div class="signup-date">가입일</div>
                        <div class="member-status">상태</div>
                    </div>
                    <!-- 반복문 자리 -->
                     	<c:forEach var="member" items="${memberList}" begin="0" end="${printNum}">
                        <form action="#" class="list-frm" method="get">
                            <button class="list-btn">
                                <div class="list-body">
                                    <div class="member-number">${member.memberNo}</div>
                                    <div class="member-email">${member.memberEmail}</div>
                                    <div class="member-name">${member.memberName}</div>
                                    <div class="member-birth">${member.memberBirth}</div>
                                    <div class="signup-date">${member.signupDate}</div>
                                    <div class="member-status">${member.memberStatus}</div>
                                </div>
                            </button>
                        </form>
                        </c:forEach>
                    <!-- 반복문 종료 -->
                </section> <!-- content-main end -->
            </section> <!-- admin-content end -->
        </section> <!-- .main end -->
    </main>


    <footer>
        <p>
            BOND &copy; 2022
        </p>

        <article>
            <a href="#">블로그</a>
            <span>|</span>
            <a href="#">이용약관</a>
            <span>|</span>
            <a href="#">개인정보처리방침</a>
            <span>|</span>
            <a href="#">고객센터</a>
        </article>

    </footer>

</body>
</html>