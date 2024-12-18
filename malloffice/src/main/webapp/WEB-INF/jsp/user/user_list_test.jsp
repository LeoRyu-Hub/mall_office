<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / General - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<section class="section">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <form>
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <div class="row mb-3">
                                        <label for="inputText" class="col-sm-3 col-form-label">회원명</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-3 col-form-label">가입일</label>
                                        <div class="col-sm-9">
                                            <div class="input-group mb-2">
                                                <input type="date" class="form-control">
                                                <span class="input-group-text">~</span>
                                                <input type="date" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label">탈퇴여부</label>
                                        <div class="col-sm-8">
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>선택</option>
                                                <option value="1">Y</option>
                                                <option value="2">N</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <button type="button" onclick = "searchlist()" class="btn btn-primary btn-sm">조회</button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
		      </div>
              <!-- Default Table -->
              <table class="table" id="userTable">
                <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">회원명</th>
                    <th scope="col">이메일</th>
                    <th scope="col">연락처</th>
                    <th scope="col">가입일</th>
                    <th scope="col">탈퇴여부</th>
                    <th scope="col">탈퇴일</th>
                  </tr>
                  <tr>
                   <td>1</td>
                   <td><a href="#" onclick="viewUser(); return false;">test1</a></td>
                   <td>홍길동</td>
                   <td>test1@naver.com</td>
                   <td>010-1111-1111</td>
                   <td>2024.03.02</td>
                   <td>Y</td>
                   <td>2024.03.05</td>
                  </tr>
                  <tr>
                   <td>2</td>
                   <td><a href="#" onclick="viewUser(); return false;">test2</a></td>
                   <td>박진우</td>
                   <td>test2@naver.com</td>
                   <td>010-1111-1111</td>
                   <td>2024.03.02</td>
                   <td>Y</td>
                   <td>2024.03.05</td>
                  </tr>
                  <tr>
                   <td>3</td>
                   <td><a href="#" onclick="viewUser(); return false;">test3</a></td>
                   <td>정승현</td>
                   <td>test3@naver.com</td>
                   <td>010-1111-1111</td>
                   <td>2024.03.02</td>
                   <td>N</td>
                   <td>-</td>
                  </tr>
                  <tr>
                   <td>4</td>
                   <td><a href="#" onclick="viewUser(); return false;">test4</a></td>
                   <td>이순신</td>
                   <td>test4@naver.com</td>
                   <td>010-1111-1111</td>
                   <td>2024.03.02</td>
                   <td>N</td>
                   <td>-<td>
                  </tr>
                  <tr>
                   <td>5</td>
                   <td><a href="#" onclick="viewUser(); return false;">test5</a></td>
                   <td>류준열</td>
                   <td>test5@naver.com</td>
                   <td>010-1111-1111</td>
                   <td>2024.03.02</td>
                   <td>Y</td>
                   <td>2024.08.05</td>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
              <!-- End Default Table Example -->
            </div>
          </div>
        </div>
        <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-end">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                  </li>
                </ul>
              </nav>
    </section>

  <script src="/assets/js/main.js"></script>
  <script src = "/assets/js/jquery-3.7.1.min.js"></script>
  <script>
function viewUser() {
	window.open('/user/view_test', '_blank', 'width=1200,height=600'); 
}
</script>
</body>
</html>