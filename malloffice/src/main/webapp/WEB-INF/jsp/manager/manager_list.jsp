<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

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

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>회원관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/user/list">
              <i class="bi bi-circle"></i><span>회원조회</span>
            </a>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="/product/list">
          <i class="bi bi-journal-text"></i><span>상품관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/product/list">
              <i class="bi bi-circle"></i><span>상품조회</span>
            </a>
          </li>
          <li>
            <a href="/product/list">
              <i class="bi bi-circle"></i><span>상품등록</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link " data-bs-target="#tables-nav" data-bs-toggle="collapse" href="/order/list">
          <i class="bi bi-layout-text-window-reverse"></i><span>주문관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/order/list" class="active">
              <i class="bi bi-circle"></i><span>주문조회</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart"></i><span>정산관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        </ul>
      </li><!-- End Charts Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-gem"></i><span>시스템관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        </ul>
      </li><!-- End Icons Nav -->

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>General Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">General</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
<style>
    .custom-select {
        width: 100px; /* Adjust the width as needed */
     } 
    .custom-button {
        width: 70px; /* 원하는 너비 설정 */
    }
     .large-select {
        width: 150px; /* 원하는 너비로 조정 */
    }
</style>

<section class="section">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Default Table</h5>
                    <form id="searchform">
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <div class="row mb-3">
                                        <label for="inputText" class="col-sm-3 col-form-label">관리자명</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" name="connectionName">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label">퇴사여부</label>
                                        <div class="col-sm-8">
                                            <select class="form-select custom-select" aria-label="Default select example" id = 'connectionSt' name="connectionSt">
                                                <option value=''>선택</option>
                                                <option value="Y">Y</option>
                                                <option value="N">N</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <div class="d-flex gap-1">
                                         <button type="button" onclick="searchlist()" class="btn btn-primary btn-sm custom-button">조회</button>
                                         <button type="button" onclick="regManager()" class="btn btn-success custom-button">신규</button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
		      </div>
              <!-- Default Table -->
              <table class="table" id="managerTable">
                <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">관리자ID</th>
                    <th scope="col">관리자명</th>
                    <th scope="col">이메일</th>
                    <th scope="col">연락처</th>
                    <th scope="col">등록일</th>
                    <th scope="col">퇴사여부</th>
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
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/assets/vendor/quill/quill.min.js"></script>
  <script src="/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>
  <script src = "/assets/js/jquery-3.7.1.min.js"></script>

</body>

<script>

function searchlist(){
	var formData = new FormData($(searchform)[0]);
	$.ajax({ 
		type : 'post',
		data : formData,
		url : '/manager/search',
		cache : false,
		processData : false,
		contentType : false,
		success : function(list){
			setManagerList(list);
		},
		error : function(request, status, error){
			console.log(error)
		}
	});
}
//str+= "<td><a href = '#' onclick = \"viewManager('"+list[i].managerId+"')\">" + list[i].managerId + "</a></td>";

function setManagerList(list){
	$('#managerTable tbody').empty();
	var str = "";
	for (var i = 0; i < list.length; i++){
		str = "<tr>";
		str+= "<td>"  + (i + 1) + "</td>";
		str+= "<td><a href = '#' onclick = \"viewManager('"+list[i].managerId+"')\">" + list[i].managerId + "</a></td>";
		str+= "<td>" + list[i].name + "</td>";
		str+= "<td>" + list[i].email + "</td>";
		str+= "<td>" + list[i].phone + "</td>";
		str+= "<td>" + list[i].regDt + "</td>";
		str+= "<td>" + list[i].quitYn + "</td>";
		str+= "</tr>";
		$('#managerTable').append(str);
	}
}


function viewManager(id){
	window.open('/manager/reg?managerId='+id,'관리자 등록/수정','width=700, height=700, history=no, resizable=no, status=no, scrollbars=yes, menubar=no')
}

function regManager(){
	window.open('/manager/reg','관리자 등록/수정','width=700, height=700, history=no, resizable=no, status=no, scrollbars=yes, menubar=no')
}



</script>
</html>