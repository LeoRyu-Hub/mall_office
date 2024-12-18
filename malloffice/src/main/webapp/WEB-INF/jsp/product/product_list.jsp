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
                    <input type='hidden' id='currentPage' name='currentPage' value='1'>
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <div class="row mb-3">
                                        <label for="inputText" class="col-sm-3 col-form-label">상품명</label>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" name="productName">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label">상품상태</label>
                                        <div class="col-sm-8">
                                            <select class="form-select custom-select" aria-label="Default select example" id = 'productSt' name="productSt">
                                                <option value=''>선택</option>
                                                <option value="판매중">판매중</option>
                                                <option value="판매종료">판매종료</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="row mb-3">
										  <label class="col-sm-4 col-form-label">카테고리</label>
 									 <div class="col-sm-8 d-flex gap-2">
  										<select class="form-select custom-select" id = 'decategory' name="decategory" aria-label="Default select example" onchange='changeCategory(this, 2)'>
       										<option value=''>선택</option>
     									</select>
       							  		<select class="form-select custom-select" id = 'jocategory' name="jocategory" aria-label="Default select example" onchange='changeCategory(this, 3)'>
      										<option value=''>선택</option>
        								</select>
        								<select class="form-select custom-select" id = 'socategory'  name="socategory" aria-label="Default select example">
       										<option value=''>선택</option>    
       									</select>
    								</div>
									</div>
                                </td>
                            
                            </tr>
                            <tr>
                              <td>
                                    <div class="row mb-3">
                                        <label class="col-sm-4 col-form-label">거래처</label>
                                        <div class="col-sm-8">
                                            <select class="form-select large-select" aria-label="Default select example" id = 'connection' name="connection">
                                                <option value="">선택</option>
                                                <option value="명신산업">명신산업</option>
                                                <option value="길동산업">길동산업</option>
                                                <option value="진우모직">진우모직</option>
                                                <option value="명지산업">명지산업</option>
                                            </select>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex gap-1">
                                         <button type="button" onclick="searchlist(1)" class="btn btn-primary btn-sm custom-button">조회</button>
                                         <button type="button" onclick="regProduct()" class="btn btn-success custom-button">등록</button>
                                         <button type="button" onclick="formInit()" class="btn btn-success custom-button">초기화</button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
		      </div>
              <!-- Default Table -->
              <table class="table" id="productTable">
                <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">상품코드</th>
                    <th scope="col">상품명</th>
                    <th scope="col">카테고리</th>
                    <th scope="col">판매가</th>
                    <th scope="col">재고량</th>
                    <th scope="col">등록일</th>
                    <th scope="col">상품상태</th>
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
                <ul class="pagination justify-content-end" id='prdocutPaging'>
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
    <script src="/assets/js/paging.js"></script>
  

</body>

<script>
	function searchlist(curpage){
		$('#currentPage').val(curpage);
		var formData = new FormData($(searchform)[0]);
		$.ajax({ 
			type : 'post',
			data : formData,
			url : '/product/search',
			cache : false,
			processData : false,
			contentType : false,
			success : function(data){
				setProductList(data);
			},
			error : function(request, status, error){
				console.log(error)
			}
		});
	}
	
	//str+= "<td><a href = '#' onclick = \"viewProduct('"+list[i].productCode+"')\">" + list[i].productName + "</a></td>";
	function setProductList(data){
		$('#productTable tbody').empty();
		console.log(data);
		var str = "";
		var list = data.productlist;
		for (var i = 0; i < list.length; i++){
			str = "<tr>";
			str+= "<td>"  + (i + 1) + "</td>";
			str+= "<td>" + list[i].productCode + "</td>";
			str+= "<td><a href = '#' onclick = \"viewProduct('"+list[i].productCode+"')\">" + list[i].productName + "</a></td>";
			str+= "<td>" + list[i].categoryName + "</td>";
			str+= "<td>" + list[i].price + "</td>";
			str+= "<td>" + list[i].qta + "</td>";
			str+= "<td>" + list[i].regDate + "</td>";
			str+= "<td>" + list[i].productSt + "</td>";
			str+= "</tr>";
			$('#productTable').append(str);
		}
		setPaging(prdocutPaging, data.startPage, data.endPage, 'searchlist');
	}
	
	function viewProduct(code){
		window.open('/product/view?productCode='+code,'상품정보','width=1000, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no')
			}
		
	function regProduct(code){
		window.open('/product/reg','상품등록','width=1000, height=500, history=no, resizable=no, status=no, scrollbars=yes, menubar=no')
			}
	
	function formInit(){
		
		$('#productTable tbody').empty();
		document.getElementById('searchform').reset();
	}
	
	function searchSt(obj){
		alert($(obj).val());
	}
	
	$(document).ready(function(){
		$.ajax({
			type : 'post',
			url : '/get/category',
			dataType : 'json',
			success: function(list){
				setCategory(list);
			},
			error : function(request, status, error){
				console.log(error);
			}
		});	
	});
	
	var categorylist = new Array();
	function setCategory(list){
		categorylist = list;
		//$('#decategory').empty().append("<option selected>선택</option>");
	   	//$('#jocategory').empty().append("<option selected>선택</option>");
	    //$('#socategory').empty().append("<option selected>선택</option>");
		for(var i=0;i<list.length;i++){	
			if(list[i].categoryLevel=="1"){
				$('#decategory').append("<option value='"+categorylist[i].categoryCode+"'>"+categorylist[i].categoryName+"</option>");
			}
		}
	}
	
	function changeCategory(obj, lv){
		cd = $(obj).val();
		if(lv==2){
			$('#jocategory').empty().append("<option value = ''>선택</option>");
			$('#socategory').empty().append("<option value = ''>선택</option>");
		}else if(lv==3){	
			$('#socategory').empty().append("<option value = ''>선택</option>");
		}
		for(var i=0;i<categorylist.length;i++){
			if(categorylist[i].categoryLevel == lv && categorylist[i].upperCategoryCode==cd){
				option = "<option value='"+categorylist[i].categoryCode+"'>"+categorylist[i].categoryName+"</option>";				
				if(lv==2){
					$('#jocategory').append(option);
				}else if(lv==3){	
					$('#socategory').append(option);
				}
			} 
		}
		
		
	}
	

		


</script>

</html>