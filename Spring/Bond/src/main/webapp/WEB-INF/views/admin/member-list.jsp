<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>layout sample1</title>

    <link rel="stylesheet" href="/resources/css/admin/member-list-style.css">
    <link rel="stylesheet" href="/resources/css/admin/layout-style.css">
    
</head>
<body>
    <header>
        <section>
            <!-- 클릭 시 메인으로 이동하는 로고  -->
            <a href="#">
                <img src="/resources/images/home-logo.png" id="home-logo">
            </a>
        </section>

        <section class="profile">
            <!-- 내 정보 사진 -->
            <button type="button" class="box">
                <img src="/resources/images/admin/admin-profile-icon.png" id="profile-photo">
            </button>
        </section>
    </header>

    <main> <!-- for background color -->

        <section class="main"> <!-- main에 배경색을 주려고 별도의 main-section 추가함 -->
            <aside class="sidebar">

                <article class="admin-info"> <!-- admin-info  -->
                    <div class="info-image-area">
                        <img id="info-image" src="/resources/images/admin/admin-profile-icon.png">
                    </div>
                    <span>관리자1</span>
                    <div class="profile-btn-area">
                        <a href="#" id="home">밴드 홈</a>
                        <a href="#" id="logout">로그아웃</a>
                    </div>
                </article> <!-- admin-profile end -->
                
                <nav class="admin-menu">
                    <ul>
                        <a href="#">공지사항</a>
                    </ul>
                        
                    <ul> 밴드 관리
                        <li><a href="admin/memberList2">- 회원</a></li>
                        <li><a href="#">- 소모임</a></li>
                        <li><a href="#">- 게시글</a></li>
                    </ul>

                    <ul>
                        <a href="#">신고</a>
                    </ul>

                </nav>
                
            </aside>
            <section class="content">
                <div class="content-header">
                    <h6>밴드 관리 / 회원</h6>
                    <h3>회원 검색</h3>
                </div>
                
                <form id="searchbar" action="#" method="GET">

                    <select name="type">
                        <option value="">분류1</option>
                        <option value="">분류2</option>
                        <option value="">분류3</option>
                    </select>

                    <div class="keyword-box">
                        <div class="input-box"><input type="text" name="keyword"></div>
                        <button class="btn">검색</button>
                    </div>

                    <select name="number">
                        <option value="">50</option>
                        <option value="">100</option>
                        <option value="">200</option>
                    </select>
                
                </form> <!-- end .searchbar -->

                <div class="content-body">
                    
                    <div class="list-header">
                        <span class="memberNo">번호</span>
                        <span class="memberEmail">이메일</span>
                        <span class="memberName">이름</span>
                        <span class="memberDate">가입일</span>
                        <span class="memberStatus">상태</span>
                    </div>
					
                    <c:forEach var="member" items="${memberList}" begin="0" end="${printNum}">
                    <form action="#" class="list-frm" method="get">
                        <button class="list-btn">
                            <span class="memberNo">1</span>
                            <span class="memberEmail">2</span>
                            <span class="memberName">3</span>
                            <span class="memberDate">4</span>
                            <span class="memberStatus">5</span>
                        </button>
                    </form>
					</c:forEach>
                </div>


            </section> <!-- admin-content end -->
        </section> <!-- main-content end -->
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