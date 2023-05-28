<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Go Seoul</title>
<style>
header {
	font-family: 'Title_Medium';
}

.navbar-nav>li {
	padding-left: 40px;
	padding-right: 40px;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

#myPage, #logout {
	display: block;
}
</style>
</head>
<body>
	<script>
		let sessionId = "<c:out value='${sessionScope.id}' />";

		$(function() {
			if (sessionId != "<c:out value='' />") {
				$("#myPage").css("display", "block");
				$("#logout").css("display", "block");
				$("#login").css("display", "none");
				$("#signUp").css("display", "none");

			} else {
				$("#myPage").css("display", "none");
				$("#logout").css("display", "none");
				$("#login").css("display", "block");
				$("#signUp").css("display", "block");
			}
		});
	</script>
	<header class="border-bottom">
		<div class="d-flex justify-content-between">
			<span class="weather"> <span class="weather_icon"></span> <span
				class="weather_temp"></span>
			</span>

			<form class="form-inline my-2 my-md-0">
				<input class="form-control" type="text" placeholder="검색어를 입력하세요."
					aria-label="Search">
				<button class="btn btn-outline-primary" type="submit">검색</button>
			</form>

			<ul class="nav justify-content-end">
				<li class="nav-item"><a href="memberInfo.do" id="myPage"
					class="nav-link text-dark">마이페이지</a></li>
				<li class="nav-item"><a href="MemberLogin.do" id="login"
					class="nav-link text-dark">로그인</a></li>
				<li class="nav-item"><a href="member_form.do" id="signUp"
					class="nav-link text-dark">회원가입</a></li>
				<li class="nav-item"><a href="logout.do" id="logout"
					class="nav-link text-dark">로그아웃</a></li>
			</ul>
		</div>

		<div class="my-2">
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<div class="navbar-collapse justify-content-center"
						id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle text-dark" href="#"
								role="button" aria-expanded="false"> 같이서울 </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="with_list.do">동행구하기</a></li>
									<li><a class="dropdown-item" href="freeList.do">여행정보공유</a></li>
								</ul></li>

							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle text-dark" href="#"
								role="button" aria-expanded="false"> 해봤서울 </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">행사캘린더</a></li>
									<li><a class="dropdown-item" href="eventList.do">행사리스트</a></li>
								</ul></li>

							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle text-dark" href="#"
								role="button" aria-expanded="false"> 가봤서울 </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">테마추천코스</a></li>
									<li><a class="dropdown-item" href="#">종류별</a></li>
									<li><a class="dropdown-item" href="#">지역별</a></li>
								</ul></li>

							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle text-dark" href="#"
								role="button" aria-expanded="false"> 정보서울 </a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">서울시티투어버스</a></li>
									<li><a class="dropdown-item" href="#">공지사항</a></li>
									<li><a class="dropdown-item" href="q_board.do">FAQ</a></li>
									<li><a class="dropdown-item" href="#">개인정보처리방침</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
</body>
</html>