<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html lang="ko">

	<header>
		<link href="./css/default.css" rel="stylesheet">
	</header>

	<body>
		<div class="container">
			<div class="menu">
				<ul>
					<li><img src="./img/img_deview2014.png" class="logo"/></li>
					<li><a href="#" class="menu-item">로그인</a></li>
					<li><a href="./signup.html" class="menu-item">회원가입</a></li>
					<li><a href="#" class="menu-item">시간표</a></li>
					<li><a href="#" class="menu-item">안내페이지</a></li>
					<li><a href="./registration.html" class="menu-item active">참가신청</a></li>
				</ul>
			</div>
			<div class="contents">
				<div class="content-header">
					<div class="content-title">
						<span class="icon icon-title"><</span>
						참가신청
					</div>
				</div>
				<div class="content-center">
					<div class="content-item">
						<div class="content-item-title">날짜 선택</div>
						<button type="button" class="button circle">DAY 1</button>
						<button type="button" class="button circle">DAY 2</button>
						<button type="button" class="button circle">DAY 3</button>
					</div>

					<div class="content-item">
						<div class="content-item-title">이름</div>
						<input type="text" placeholder="이름을 입력 해 주세요."></button>
					</div>

					<div class="content-item">
						<div class="content-item-title">소속</div>
						<input type="text" placeholder="소속을 입력 해 주세요."></button>
					</div>

					<div class="content-item">
						<div class="content-item-title">전화번호</div>
						<input type="text" placeholder="전화번호를 입력 해 주세요."></button>
					</div>

					<button type="button" class="button primary">등록하기</button>
				</div>
			</div> 

		</div>
	</body>
</html>