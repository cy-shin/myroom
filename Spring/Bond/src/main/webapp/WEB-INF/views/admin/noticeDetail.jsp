<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 | 공지사항</title>

    <link rel="stylesheet" href="/resources/css/admin/layout-style.css">
    <link rel="stylesheet" href="/resources/css/admin/notice-list-style.css">
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
                    <h6>공지사항 / 목록</h6>
                    <h3>공지사항</h3>
                </div>
                
                <div class="content-body">
                    
                    <div class="list-header">
                        <span class="noticeNo">번호</span>
                        <span class="noticeDate">작성일</span>
                        <span class="noticeTitle">제목</span>
                        <span class="noticeContent">내용</span>
                        <span class="noticeStatus">상태</span>
                    </div>
					
					<!-- 목록 불러오기 반복문 -->
                    <c:forEach var="notice" items="${noticeList}">
                    <form action="/printNoticeList" class="list-frm" method="GET">
                        <button class="list-btn">
                            <span class="noticeNo">${notice.noticeNo}</span>
                            <span class="noticeDate">${notice.noticeDate}</span>
                            <span class="noticeTitle">${notice.noticeTitle}</span>
                            <span class="noticeContent">${notice.noticeContent}</span>
                            <span class="noticeStatus">${notice.noticeStatus}</span>
                        </button>
                    </form>
					</c:forEach>
					
                </div>


            <div class="content-footer">
            	<span>prev</span>
            	<span>1</span>
            	<span>2</span>
            	<span>3</span>
            	<span>next</span>
            </div>
            </section> <!-- admin-content end -->
        </section> <!-- main-content end -->
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	
    <script src="/resources/js/sidebar.js"></script>
</body>
</html>