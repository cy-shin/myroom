<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 | 통계</title>

    <link rel="stylesheet" href="resources/css/adminPage-style.css">
    <link rel="stylesheet" href="resources/css/contentHeader-basic-style.css">
    <link rel="stylesheet" href="resources/css/statistic-style.css">
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
                    <h6>분석 / 통계 - 통계 </h6>
                    <h3>통계</h3>
                </section>
                <section class="content-main">
                    <div id="tempA">
                        <div id="temp1"><img src="resources/images/sample-chart.png"></div>
                        <div id="temp2"><img src="resources/images/sample-chart2.png"></div>
                        <div id="temp3"><img src="resources/images/sample-chart3.png"></div>
                    </div>

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