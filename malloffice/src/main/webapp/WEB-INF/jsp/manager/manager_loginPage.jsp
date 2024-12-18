<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f7f7f9;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

h6 {
	margin-bottom: 20px;
	font-weight: bold;
	font-size: 6rem;
}

.container {
	max-width: 400px;
}

.card {
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #007bff;
	color: white;
	text-align: center;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.form-control {
	border-radius: 5px;
}

.btn {
	border-radius: 5px;
}
</style>
</head>

<body>
	<h6>DISCOVERY</h6>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h4>관리자 로그인</h4>
			</div>
			<div class="card-body">
				<form id="loginForm">
					<div class="form-group">
						<label for="managerId">관리자ID</label> <input type="text"
							id="managerId" name="managerId" class="form-control" required>
					</div>
					<div class="form-group">
						<label for="password">비밀번호</label> <input type="password"
							id="password" name="password" class="form-control" required>
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="rememberMe">
						<label class="form-check-label" for="rememberMe">아이디 기억하기</label>
					</div>
					<div class="text-center">
						<button type="button" onclick="login()" class="btn btn-primary">로그인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="/assets/js/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/cookie.js"></script>
	<script>
		function login() {
			
			
			if ($('#rememberMe').is(':checked')) {
				var managerId = $('#managerId').val();
				setCookie("managerId", managerId, 30);
			}
			

			var formData = new FormData($(loginForm)[0]);
			$.ajax({
				type : 'post',
				data : formData,
				url : '/manager/login',
				cache : false,
				processData : false,
				contentType : false,
				success : function(data) {
					callBackSave(data);
				},
				error : function(request, status, error) {
					console.log(error)
				}
			});
		}

		function callBackSave(data) {
			if (data) {
				alert("로그인 성공~!");
				//window.location.href = '/manager/list';
				window.location.href = '${url}';
			} else {
				alert("오류가 발생하였습니다.");
			}
		}
		
		$(document).ready(function() {

			var managerId = getCookie("managerId");
			$('#managerId').val(managerId);

		});
		
		
	</script>
</body>

</html>
