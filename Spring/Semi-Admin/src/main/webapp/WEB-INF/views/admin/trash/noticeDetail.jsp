<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 | 공지사항 </title>

    <link rel="stylesheet" href="resources/css/adminPage-style.css">
    <link rel="stylesheet" href="resources/css/contentHeader-list-style.css">
    <link rel="stylesheet" href="resources/css/noticeDetail-style.css">
    
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
                    <h6>커뮤니티 - 공지사항</h6>
                    <h3>공지사항</h3>
                    <!-- 검색 개수 필터 -->
                </section>
                <section class="content-main">
                    <a href="/noticeList" id="noticeList">목록</a>
                    <article>
                        <div class="notice-content-head">
                            <strong class="notice-title">개인정보는 누구에게도 알려주지 마세요.</strong>
                            <span class="notice-date">2022년 10월 22일</span>
                            <span class="notice-status">공개</span>
                            <form action="#" id="noticeEdit">
                                <button >수정</button>
                            </form>
                            <form action="#" id="noticeDel">
                                <button>삭제</button>
                            </form>
                        </div>
                        <div class="notice-content">
                            아이디, 비밀번호를 요구하지 않습니다.
                        </div>
                    </article>

                </section>
                    <!-- 검색 개수 필터 -->
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