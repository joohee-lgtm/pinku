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
					<li><a href="#" class="menu-item">�α���</a></li>
					<li><a href="./signup.html" class="menu-item active">ȸ������</a></li>
					<li><a href="#" class="menu-item">�ð�ǥ</a></li>
					<li><a href="#" class="menu-item">�ȳ�������</a></li>
					<li><a href="./registration.html" class="menu-item">������û</a></li>
				</ul>
			</div>
			<div class="contents">
				<div class="content-header">
					<div class="content-title">
						<span class="icon icon-title"><</span>
						ȸ������
					</div>
				</div>
				<div class="content-center">
					<form action="join.do" method="post">
					<div class="content-item">
						<div class="content-item-title">�����ּ�</div>
						<input type="text" name="email" placeholder="�����ּҸ� �Է� �� �ּ���."></button>
						<button type="button" class="button normal">���� �ߺ� Ȯ��</button>
					</div>

					<div class="content-item">
						<div class="content-item-title">��й�ȣ</div>
						<input type="password" name="password" placeholder="��й�ȣ�� �Է� �� �ּ���."></button>
					</div>

					<div class="content-item">
						<div class="content-item-title">��й�ȣ Ȯ��</div>
						<input type="password" placeholder="��й�ȣ�� Ȯ���� �� �ּ���."></button>
					</div>

					<button type="submit" class="button primary">�����ϱ�</button>
					</form>
				</div>
			</div> 

		</div>
	</body>
</html>