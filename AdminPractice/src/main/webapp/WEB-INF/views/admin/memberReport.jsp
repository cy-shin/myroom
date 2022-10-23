<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 | 사용자 관리 </title>

    <link rel="stylesheet" href="resources/css/adminPage-style.css">
    <link rel="stylesheet" href="resources/css/contentHeader-list-style.css">
    <link rel="stylesheet" href="resources/css/memberReport-style.css">
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
                    <h6>사용자 - 신고 내역</h6>
                    <h3>사용자 신고 내역</h3>
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
                    <div class="report-number">번호</div>
                    <div class="member-name">이름</div>
                    <div class="report-date">신고일</div>
                    <div class="report-member">신고자</div>
                    <div class="process-status">처리상태</div>
                    <div class="process-date">처리일</div>
                </div>
                <!-- 반복문 자리 -->
                    <form action="#" class="list-frm" method="get">
                        <button class="list-btn">
                            <div class="list-body">
                                <div class="report-number">1</div>
                                <div class="member-name">레오니다스</div>
                                <div class="report-date">2022-10-22</div>
                                <div class="report-member">강아지</div>
                                <div class="process-status">완료</div>
                                <div class="process-date">2022-10-22</div>
                            </div>
                        </button>
                    </form>
                    <form action="#" class="list-frm" method="get">
                        <button class="list-btn">
                            <div class="list-body">
                                <div class="report-number">2</div>
                                <div class="member-name">강아지</div>
                                <div class="report-date">2022-10-22</div>
                                <div class="report-member">레오니다스</div>
                                <div class="process-status">처리중</div>
                                <div class="process-date">-</div>
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