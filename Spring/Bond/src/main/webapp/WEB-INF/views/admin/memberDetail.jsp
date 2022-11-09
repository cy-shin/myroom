<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 | 모임 관리</title>

    <link rel="stylesheet" href="/resources/css/admin/layout-style.css">
    <link rel="stylesheet" href="/resources/css/admin/member-detail-style.css">
    <link rel="stylesheet" href="/resources/css/admin/searchbar-style.css">
    <link rel="stylesheet" href="/resources/css/admin/sidebar-style.css">
    
</head>
<body>

    <jsp:include page="/WEB-INF/views/common/header.jsp" />

    <main> <!-- for background-color -->

        <section class="main"> 
            
            <jsp:include page="/WEB-INF/views/admin/sidebar.jsp" />

            <section class="content">
                <div class="content-header">
                    <h3>회원 정보</h3>
                </div>

                <div class="content-body">
                    <a href="groupList.html" id="list-btn">
                        <img src="go-back-list.png">
                        목록
                    </a>
                    
                    <div class="member-info">
                        <div class="member-info-row">
                            <label>회원 번호</label>
                            <div class="member-info-col">01</div>
                        </div>
                        <div class="member-info-row">
                            <label>회원 이메일</label>
                            <div class="member-info-col">one@kosaran</div>
                        </div>
                        <div class="member-info-row">
                            <label>회원 이름</label>
                            <div class="member-info-col">김철수</div>
                        </div>
                        <div class="member-info-row">
                            <label>기본 프로필</label>
                            <div class="member-info-col">
                                <img id="memberImage" src="../../../resources/images/admin-group-icon.png">
                            </div>
                        </div>
                        <div class="member-info-row">
                            <label>회원 전화번호</label>
                            <div class="member-info-col">010-****-****</div>
                        </div>
                        <div class="member-info-row">
                            <label>회원 생일</label>
                            <div class="member-info-col">1990-11-09</div>
                        </div>
                        <div class="member-info-row">
                            <label>회원 상태</label>
                            <div class="member-info-col">정상</div>
                        </div>
                        <div class="member-info-row">
                            <label>가입일</label>
                            <div class="member-info-col">2022-10-01</div>
                        </div>
                        <div class="member-info-row">
                            <label>탈퇴일</label>
                            <div class="member-info-col">-</div>
                        </div>
                    </div>

                    <div class="member-info">    
                        <div class="member-info-row">
                            <label>정지 기록</label>
                            <div class="member-info-col">
                                <span class="report-count">13545회</span>
                                <button class="additional-btn">조회</button>
                            </div>
                        </div>
                    </div>

                    <div class="member-info">
                        <div class="member-info-row">
                            <label>모임 프로필</label>
                            <div class="member-info-col">
                                <span class="join-count">3개</span>
                                <button class="additional-btn">조회</button>
                            </div>
                        </div>
                    </div>

                </div>

            </section> <!-- admin-content end -->
        </section> <!-- main-content end -->
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="/resources/js/sidebar.js"></script>
</body>
</html>