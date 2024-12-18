<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forms / Elements - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <style>
    body {
        background-color: #f8f9fa;
        font-family: 'Open Sans', sans-serif;
    }
    .form-control {
        height: 38px;
        width: 100%;
        max-width: 200px;
    }
    .col-form-label {
        font-size: 14px;
    }
    .row.mb-3 {
        margin-bottom: 15px;
    }
    .custom-button {
        margin-left: 10px;
    }
    .email-container {
        display: flex;
        align-items: center;
        gap: 5px;
    }
    .email-container input {
        flex: 1;
        max-width: 100px; /* 앞부분 입력 칸 크기 조정 */
    }
    .email-container select {
        flex-shrink: 0;
        max-width: 120px; /* 선택 박스 크기 조정 */
    }
    .btn {
        min-width: 120px;
    }
    .name-input {
        background-color: #e9ecef; /* 회색 음영 추가 */
    }
    .button-group {
        display: flex;
        gap: 10px; /* 버튼 간격 조정 */
    }
    .grade-container {
        display: flex;
        gap: 10px; /* 학년/반 간격 조정 */
    }
    .password-warning {
        color: red; /* 빨간색 텍스트 */
        font-size: 12px; /* 작은 텍스트 크기 */
    }
  </style>
</head>
<body>
<form>
    <div class="row mb-3">
        <label for="inputText" class="col-sm-2 col-form-label">이름</label>
        <div class="col-sm-10">
            <input type="text" class="form-control name-input"> <!-- 회색 음영 추가 -->
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputEmail" class="col-sm-2 col-form-label">아이디</label>
        <div class="col-sm-10 d-flex align-items-center">
            <input type="text" class="form-control">
            <button type="button" onclick="idCheck()" class="btn btn-primary btn-sm custom-button">중복확인</button>
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
        <div class="col-sm-10">
            <input type="password" class="form-control">
            <small class="password-warning">비밀번호는 문자, 숫자, 특수문자의 조합 10~16자리로 입력이 가능합니다.</small>
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputNumber" class="col-sm-2 col-form-label">비밀번호 확인</label>
        <div class="col-sm-10">
            <input type="password" class="form-control">
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
        <div class="col-sm-10 email-container">
            <input type="text" class="form-control" style="max-width: 100px;"> 
            @
            <input type="text" class="form-control" style="max-width: 100px;"> 
            <select class="form-select" aria-label="Default select example" style="max-width: 120px;">
                <option value="">직접입력</option>
                <option value="naver.com">naver.com</option>
                <option value="gmail.com">gmail.com</option>
            </select>
            <button type="button" onclick="emailCheck()" class="btn btn-primary btn-sm custom-button">이메일 중복확인</button>
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputGrade" class="col-sm-2 col-form-label">학년/반</label>
        <div class="col-sm-10 grade-container">
            <select class="form-select" aria-label="Default select example" style="max-width: 100px;">
                <option value="">선택</option>
                <option value="1">1</option>
                <option value="2">2</option>
            </select>학년
            <select class="form-select" aria-label="Default select example" style="max-width: 100px;">
                <option value="">선택</option>
                <option value="1">1</option>
                <option value="2">2</option>
            </select>반
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-sm-10 offset-sm-2 button-group">
            <button type="button"  class="btn btn-secondary">가입 취소</button>
            <button type="submit" onclick = "join()" class="btn btn-primary">회원가입</button>
        </div>
    </div>
</form>
</body>
<script src="/assets/js/main.js"></script>
<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script>
function idCheck(){
	alert("중복된 아이디입니다.");
}
function emailCheck(){
	alert("중복된 이메일입니다.");
}
function join(){
	confirm("회원가입을 하시겠습니까?");
}
</script>
</html>
