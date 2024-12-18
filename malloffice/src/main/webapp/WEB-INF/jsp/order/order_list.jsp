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
            <a href="components-alerts.html">
              <i class="bi bi-circle"></i><span>회원조회</span>
            </a>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>상품관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="forms-elements.html">
              <i class="bi bi-circle"></i><span>상품조회</span>
            </a>
          </li>
          <li>
            <a href="forms-layouts.html">
              <i class="bi bi-circle"></i><span>상품등록</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link " data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>주문관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="tables-general.html" class="active">
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
                                        <label for="inputText" class="col-sm-3 col-form-label">회원명</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" name="userName">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label">주문상태</label>
                                        <div class="col-sm-8">
                                            <select class="form-select custom-select" aria-label="Default select example">
                                                <option value=''>선택</option>
                                                <option value="결재완료">결재완료</option>
                                                <option value="배송준비중">배송준비중</option>
                                                <option value="배송중">배송중</option>
                                                <option value="배송완료">배송완료</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label">결제수단</label>
                                        <div class="col-sm-8">
                                            <select class="form-select custom-select" aria-label="Default select example">
                                                <option value=''>선택</option>
                                                <option value="신용카드">신용카드</option>
                                                <option value="계좌이체">계좌이체</option>
                                                <option value="온라인">온라인</option>
                                                <option value="Paypal">Paypal</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                              <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-3 col-form-label">주문일</label>
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
                                    <div class="d-flex gap-1">
                                         <button type="button" onclick="searchlist()" class="btn btn-primary btn-sm custom-button" id = checkAll>조회</button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
		      </div>
		      	<table>
   				 <tr>
        			<td>
            			<div class="d-flex justify-content-end">
		    	            <button type="button" onclick="orderStUpdate('배송중')" class="btn btn-primary btn-sm custom-button me-2">일괄 배송중 처리</button>
        			        <button type="button" onclick="orderStUpdate('배송완료')" class="btn btn-primary btn-sm custom-button">일괄 배송완료 처리</button>
			            </div>
        			</td>
    			</tr>
				</table>

              <!-- Default Table -->
              <form id = "orderStform">
              <table class="table" id="orderTable">
                <thead>
                  <tr>
               	    <th scope="col"><input type='checkbox'>V</th>
                    <th scope="col">NO</th>
                    <th scope="col">주문번호</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">주문자명</th>
                    <th scope="col">상품명</th>
                    <th scope="col">주문금액</th>
                    <th scope="col">결제수단</th>
                    <th scope="col">주문상태</th>
                    <th scope="col">주문일</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
              </form>
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
	$.ajax({ 
		type : 'post',
		url : '/order/search',
		dataType : 'json',
		success : function(list){
			setOrderList(list);
		},
		error : function(request, status, error){
			console.log(error)
		}
	});
}
//str+= "<td><a href = '#' onclick = \"viewProduct('"+list[i].productCode+"')\">" + list[i].productName + "</a></td>";

function setOrderList(list){
	console.log(list);
	$('#orderTable tbody').empty();
	var str = "";
	for (var i = 0; i < list.length; i++){
		str = "<tr>";
		str+= "<td><input type='checkbox' name='orderNoArry["+i+"]' value='"+list[i].orderNo+"'></td>";
		str+= "<td>"  + (i + 1) + "</td>";
		str+= "<td><a href='#' onclick=\"viewOrder('"+list[i].orderNo+"')\">" + list[i].orderNo + "</a></td>";
		str+= "<td>" + list[i].userId + "</td>";
		str+= "<td>" + list[i].orderName + "</td>";
		str+= "<td>" + list[i].productName + "</td>";
		str+= "<td>" + list[i].paymentAmount + "</td>";
		str+= "<td>" + list[i].paymentMethod + "</td>";
		str+= "<td>" + list[i].orderSt + "</td>";
		str+= "<td>" + list[i].orderDt + "</td>";
		str+= "</tr>";
		$('#orderTable').append(str);
	}
}

function orderStUpdate(st){
	if(st=='배송중'){
		if(confirm("일괄 배송중으로 변경 하시겠습니까?")){
		var formData = new FormData($(orderStform)[0]);
		formData.append('newSt', st);
		$.ajax({ 
			type : 'post',
			data : formData,
			url : '/orderSt/update',
			cache : false,
			processData : false,
			contentType : false,
			success : function(data){
				callBackSave(data);
			},
			error : function(request, status, error){
				console.log(error)
			}
		});	
		};
	}else if(st=='배송완료'){
		if(confirm("일괄 배송완료로 변경 하시겠습니까?")){
		var formData = new FormData($(orderStform)[0]);
		formData.append('newSt', st);
		$.ajax({ 
			type : 'post',
			data : formData,
			url : '/orderSt/update',
			cache : false,
			processData : false,
			contentType : false,
			success : function(data){
				callBackSave(data);
			},
			error : function(request, status, error){
				console.log(error)
			}
		});	
	}
	};
}

function callBackSave(data){
	if(data){
		alert("배송처리가 완료되었습니다.");
		location.reload(true);

	}else{
		alert("오류가 발생하였습니다.");
	}
	
}

function viewOrder(order){
	location.href = '/order/view?orderNo='+order;
}


</script>
</html>