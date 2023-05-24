<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Seoul</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/font.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="./js/weather.js"></script>
<style>
    body {
        font-family: 'Title_Medium';
    }
</style>
</head>
<body>
    <c:import url="../header.jsp" />
    <div id="withdetail">
        <h1 class="withdetail_title" style="font-size:40px; position:static; margin:10px;">동행 구하기</h1>

        <table class="table">
            <tr>
                <th>제목</th>
                <th colspan="3">${with.with_title}</th>
            </tr>
            <tr>
                <th>작성자</th>
                <th>${with.user_no}</th>
                <th>조회수</th>
                <th>${with.with_hit}</th>
            </tr>
            <tr>
                <th>지역</th>
                <th>${with.with_category}</th>
                <th>모집인원</th>
                <th>${with.with_maxto}</th>
            </tr>
            <tr>
                <th>나이</th>
                <th>${with.with_age}</th>
                <th>날짜</th>
                <th>${with.with_start} ~ ${with.with_end}</th>
            </tr>
            <tr>
                <th>내용</th>
                <th colspan="3">
                    ${with.with_content} <br>
                    <img src="${with.with_filepath}">
                </th>
            </tr>
            <tr>
                <th>태그</th>
                <th colspan="3">${with.with_tag}</th>
            </tr>
            <tr>
                <th colspan="4">
                    <button class="btn btn-outline-primary" onClick="location.href='with_reserve.do?with_no=${with.with_no}'">신청하기</button>
                </th>
            </tr>
        </table>

        <form method="post" action="with_reply.do">
            <div class="form-group row">
                <label for="with_filename" class="col-sm-2 col-form-label">댓글</label>
            	<div class="d-flex col-sm-10">
            	    <textarea id="with_reply" name="with_reply" rows="1" cols="3" class="form-control" placeholder="댓글을 입력해주세요." required></textarea>
            	    <input class="btn btn-outline-primary justify-content-end" type="submit" value="작성">
            	</div>

            </div>
        </form>


    </div>
    <c:import url="../footer.jsp" />
</body>
</html>