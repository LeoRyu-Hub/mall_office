<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connection Form</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 20px;
    }
    .sub-header {
        background-color: #007bff;
        color: white;
        font-weight: bold;
        text-align: center;
    }
    .form-section {
        border: 1px solid #007bff;
        padding: 15px;
        border-radius: 5px;
        background-color: white;
    }
    .small-select {
        width: 150px; /* Adjust width as needed */
    }
    .btn-custom {
        padding: 10px 20px; /* Increase padding for larger buttons */
    }
</style>
</head>
<body>
<div class="container">
    <form id="connectionitemform">
        <input type='hidden' name="cnOrderNo" value="${cnOrderNo}">
        <div class="form-group">
            <label for="connection">거래처</label>
            <select onchange='loadConnectionDetail(this)' class="form-control small-select" name="connectionCode">
                <option selected>선택</option>
                <option value="40001" name ='40001'>승현산업</option>
                <option value="40002" name ='40002'>길동산업</option>
                <option value="40003" name ='40003'>진우모직</option>
                <option value="40004" name ='40004'>명지사업</option>
            </select>
        </div>
        
        <div class="form-section mb-4">
            <div class="row">
               <div class="col-md-4">
             		<p>거래처명: <span id='connectionName' name="connectionName"></span></p>
    				<p>대표자명: <span id='ceoName'></span></p>
    				<p>전화번호: <span id='connectionNumber'></span></p>
				</div>
				<div class="col-md-4">
    					<p>담당자명: <span id='chargeName'></span></p>
    					<p>전화번호: <span id='chargeNumber'></span></p>
				</div>
				<div class="col-md-4">
    					<p>이메일: <span id='chargeEmail'></span></p>
    					<p>상태: <span id='connectionSt'></span></p>
				</div>
            </div>
        </div>

        <table class="table table-bordered" id='connectionItemDetail'>
      	<div class="d-flex justify-content-between align-items-center">
 		   <label for="orderList">주문상품</label>
    	   <button type="button" onclick='addList()' class="btn btn-success btn-custom btn-sm">+</button>
		</div>
            <thead>
                <tr>
                    <td class="sub-header">상품코드</td>
                    <td class="sub-header">상품명</td>
                    <td class="sub-header">단가</td>
                    <td class="sub-header">수량</td>
                    <td class="sub-header">삭제</td>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamic rows will be added here -->
            </tbody>
        </table>

        <div class="text-center">
            <button type="button" onclick="saveOrder()" class="btn btn-primary btn-custom">발주</button>
            <button type="button" onclick="closeWindow()" class="btn btn-success btn-custom">닫기</button>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</body>
<script>

$(document).ready(function(){
	var no = '${cnOrderNo}';
	var cd = '${connectionCode}';
	if(no=='' && cd==""){
		return;
	}
	$.ajax({
		data : {cnOrderNo:no, connectionCode:cd},
		type : 'post',
		url	: '/connectionitem/getInfo',
		dataType:'json',
		success : function(data){
			setConnectionItemInfo(data);
		},
		error : function(request, status, error){
			console.log(error);
		}
	});
})

function setConnectionItemInfo(data){
	//$('#connectionName').val(data.connectionName).change();
	$('#connectionName').text(data.connectionName);
	$('#ceoName').text(data.ceoName);
	$('#connectionNumber').text(data.connectionNumber);
	$('#chargeName').text(data.chargeName);
	$('#chargeNumber').text(data.chargeNumber);
	$('#chargeEmail').text(data.chargeEmail);
	$('#connectionSt').text(data.connectionSt);
	$('#connectionItemDetail tbody').empty();
	var str = "";
	for (var i = 0; i < data.connectionItemList.length; i++){
		str = "<tr>";
		str+= "<td>" + data.connectionItemList[i].productCode + "</td>";
		str+= "<td>" + data.connectionItemList[i].productName + "</td>";
		str+= "<td>" + data.connectionItemList[i].cnOrderPrice + "</td>";
		str+= "<td>" + data.connectionItemList[i].cnOrderQta + "</td>";
		str += "<td><button class='btn btn-danger btn-sm'>삭제</button></td>";
		str+= "</tr>";
		$('#connectionItemDetail').append(str);
	}
}

function closeWindow(){
    self.close();
}

//거래처번경시
function loadConnectionDetail(obj){
	productlist = new Array();
	var cd = $(obj).val();
	$.ajax({
		data : {connectionCode:cd},
		type : 'post',
		url	: '/connectionitem/getInfo',
		dataType:'json',
		success : function(data){
			setConnectionDetail(data);
		},
		error : function(request, status, error){
			console.log(error);
		}
	});
}

function setConnectionDetail(data){
	console.log(data);
	//$('#connectionName').val(data.connectionCd);
	$('#connectionName').text(data.connectionName);
	$('#ceoName').text(data.ceoName);
	$('#connectionNumber').text(data.connectionNumber);
	$('#chargeName').text(data.chargeName);
	$('#chargeNumber').text(data.chargeNumber);
	$('#chargeEmail').text(data.chargeEmail);
	$('#connectionSt').text(data.connectionSt);
	$('#connectionItemDetail tbody').empty();
}

//전역변수 선언으로 loadItem() 실행 시 ajax 요청 할 필요 없어짐
var productlist = new Array();


function addList(){
	
	if(productlist!=null && productlist.length>0){
		setAddList(productlist);
		return;
	}
	var formData = new FormData($(connectionitemform)[0]);
	$.ajax({ 
		type : 'post',
		data : formData,
		url : '/product/search',
		cache : false,
		processData : false,
		contentType : false,
		success : function(list){
			setAddList(list);
		},
		error : function(request, status, error){
			console.log(error)
		}
	});
}

var itemCnt = 0;

function setAddList(list){
	console.log(list);
	productlist = list;
	
    var str = "";
    str = "<tr>";
    str += "<td><select onchange='loadItem(this, "+itemCnt+")' class='form-control form-control-sm' name='connectionItemList["+itemCnt+"].productCode' style='width: 100px;'>";
    str += "<option selected>선택</option>"; 
    for (var j = 0; j < list.length; j++) {
        var option = "<option value='" + list[j].productCode + "'>" + list[j].productCode + "</option>";
        str += option;
    }
    str += "</select></td>";
    str += "<td><input type='text' name='connectionItemList["+itemCnt+"].productName' class='form-control form-control-sm' id ='productName"+itemCnt+"' style='width: 130px;'></td>";
    str += "<td><input type='text' name='connectionItemList["+itemCnt+"].cnOrderPrice' class='form-control form-control-sm'></td>";
    str += "<td><input type='text' name='connectionItemList["+itemCnt+"].cnOrderQta' class='form-control form-control-sm'></td>";
    str += "<td><button class='btn btn-danger btn-sm'>삭제</button></td>";
    str += "</tr>";
    $('#connectionItemDetail tbody').append(str);
    itemCnt++;
}

function loadItem(obj, idx){
	var cd = $(obj).val();
	
	console.log(productlist);
	
	for(var i=0;i<productlist.length;i++){
		if(productlist[i].productCode==cd){
			$('#productName'+idx).val(productlist[i].productName);
		}
	}
}

function saveOrder() {
    if (window.confirm("발주정보를 저장하시겠습니까?")) {
        var formData = new FormData($(connectionitemform)[0]);
        $.ajax({
            type: 'post',
            data: formData,
            url: '/connectionitem/save',
            cache: false,
            processData: false,
            contentType: false,
            success: function(data) {
                callBackSave(data);
            },
            error: function(request, status, error) {
                console.log(error);
            }
        });
    }
}

function callBackSave(data) {
    if (data) {
        alert("저장되었습니다.");
        self.close();
    } else {
        alert("오류가 발생하였습니다.");
    }
}


</script>


</html>

