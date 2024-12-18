<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Connection</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f7f7f9;
}

.container {
	margin-top: 30px;
	max-width: 600px;
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

td {
	padding: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h4>관리자 등록/수정</h4>
			</div>
			<div class="card-body">
				<form id="joinForm">
					<input type="hidden" id="crudType" name="crudType"> <input
						type="hidden" id="hiddenManagerId" value="${managerId}">
					<table class="table">
						<tr>
							<td>관리자ID</td>
							<td><input type='text' id='managerId' name="managerId"
								class="form-control"></td>
						</tr>
						<tr>
							<td>관리자명</td>
							<td><input type='text' id='name' class="form-control"
								name="name"></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type='password' id='password'
								class="form-control" name="password"></td>
						</tr>
						<tr>
							<td>비밀번호확인</td>
							<td><input type='password' class="form-control"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type='text' id='email' class="form-control"
								name="email"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td><input type='text' id='phone' class="form-control"
								name="phone"></td>
						</tr>
						<tr>
							<td>퇴사여부</td>
							<td><select id='quitYn' class="form-control" name="quitYn">
									<option selected>선택</option>
									<option value="Y">Y</option>
									<option value="N">N</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2" class="text-center">
								<button type="button" onclick="join()" class="btn btn-primary">저장</button>
								<button type="button" onclick="closeWindow()"
									class="btn btn-success">닫기</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

	<script src="/assets/js/jquery-3.7.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</body>

<script>
	$(document).ready(function() {
		var id = '${managerId}';
		if (id == '') {
			return;
		} else {
			$.ajax({
				data : {managerId : id},
				type : 'post',
				url : '/manager/getInfo',
				dataType : 'json',
				success : function(data) {
					setManagerInfo(data);
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
		}
	});

	function setManagerInfo(data) {
		console.log(data)
		$('#managerId').val(data.managerId);
		$('#name').val(data.name);
		$('#password').val(data.password);
		$('#email').val(data.email);
		$('#phone').val(data.phone);
		$('#quitYn').val(data.quitYn);
	}

	function closeWindow() {
		self.close();
	}
	
	function join() {
		var formData = new FormData($(joinForm)[0]);
		$.ajax({
			type : 'post',
			data : formData,
			url : '/manager/join',
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
			alert("관리자 등록이 완료되었습니다.");
			window.close();
		} else {
			alert("오류가 발생하였습니다.");
		}
	}
</script>
</html>
