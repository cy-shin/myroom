<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 | 소모임 관리 </title>

    <link rel="stylesheet" href="resources/css/adminPage-style.css">
    <link rel="stylesheet" href="resources/css/contentHeader-list-style.css">
    <link rel="stylesheet" href="resources/css/groupManage-style.css">
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
                    <h6>소모임 - 소모임 관리</h6>
                    <h3>소모임 관리</h3>
                    <!-- 검색 개수 필터 -->
                    <form>
                        <div>
                            <input type="text" id="group-keyword">
                        </div>
                        <button class="list-num-btn">검색</button>
                    </form>
                    <!-- 검색 개수 필터 -->
                    <select class="list-num">
                        <option>10</option>
                        <option>20</option>
                        <option>50</option>
                    </select>
                </section>
                <section class="content-main">
                    <!-- 본문 입력 공간 -->
                    <div class="list-header">
                        <div class="group-number">번호</div>
                        <div class="group-name">모임명</div>
                        <div class="leader-name">리더</div>
                        <div class="create-date">생성일</div>
                        <div class="member-number">가입자 수</div>
                        <div class="post-number">게시글 수</div>
                    </div>
                    <!-- 반복문 자리 -->
                        <form action="#" class="list-frm" method="get">
                            <button class="list-btn">
                                <div class="list-body">
                                    <div class="group-number">1</div>
                                    <div class="group-name">스파르타</div>
                                    <div class="leader-name">레오니다스</div>
                                    <div class="create-date">2022-10-11</div>
                                    <div class="member-number">300</div>
                                    <div class="post-number">520</div>
                                </div>
                            </button>
                        </form>
                        <form action="#" class="list-frm" method="get">
                            <button class="list-btn">
                                <div class="list-body">
                                    <div class="group-number">2</div>
                                    <div class="group-name">동물농장</div>
                                    <div class="leader-name">강아지</div>
                                    <div class="create-date">2022-10-14</div>
                                    <div class="member-number">50</div>
                                    <div class="post-number">150</div>
                                </div>
                            </button>
                        </form>
                        <form action="#" class="list-frm" method="get">
                            <button class="list-btn">
                                <div class="list-body">
                                    <div class="group-number">3</div>
                                    <div class="group-name">사나이클럽</div>
                                    <div class="leader-name">스폰지</div>
                                    <div class="create-date">2022-10-18</div>
                                    <div class="member-number">20</div>
                                    <div class="post-number">10</div>
                                </div>
                            </button>
                        </form>
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