<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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
					<li><a href="./signup.html" class="menu-item active">회원가입</a></li>
					<li><a href="#" class="menu-item">시간표</a></li>
					<li><a href="#" class="menu-item">안내페이지</a></li>
					<li><a href="./registration.html" class="menu-item">참가신청</a></li>
				</ul>
			</div>
			<div class="contents">
				<div class="content-header">
					<div class="content-title">
						<span class="icon icon-title"><</span>
						회원가입
					</div>
				</div>
				<div class="content-center">
					<form action="join.do" method="post">
					<div class="content-item">
						<div class="content-item-title">메일주소</div>
						<input type="text" name="email" placeholder="메일주소를 입력 해 주세요."></button>
						<button type="button" class="button normal">메일 중복 확인</button>
					</div>

					<div class="content-item">
						<div class="content-item-title">비밀번호</div>
						<input type="password" name="password" placeholder="비밀번호를 입력 해 주세요."></button>
					</div>

					<div class="content-item">
						<div class="content-item-title">비밀번호 확인</div>
						<input type="password" placeholder="비밀번호를 확인을 해 주세요."></button>
					</div>

					<button type="submit" class="button primary">가입하기</button>
					</form>
				</div>
			</div> 

		</div>
	</body>
</html>