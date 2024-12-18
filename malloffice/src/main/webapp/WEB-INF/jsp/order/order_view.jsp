<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 정보</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
 <style>
    .tg {
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
        max-width: 800px;
        margin-left: 0;
    }
    .tg td, .tg th {
        border: 1px solid black;
        font-family: Arial, sans-serif;
        font-size: 14px;
        padding: 8px;
        text-align: left;
        color: black;
    }
    .tg th {
        background-color: #34cdf9;
        color: white;
        font-weight: bold;
    }
    .tg .header {
        background-color: #efefef;
        text-align: center;
        color: black;
        font-weight: bold;
    }
    .tg .sub-header {
        background-color: #dae8fc;
        color: black;
        font-weight: bold;
    }
    /* 항목들의 글씨를 두껍게 설정 */
    .item-label {
        font-weight: bold; /* 항목 글씨를 두껍게 */
    }
    .item-value {
        font-weight: normal; /* 데이터 글씨를 보통으로 */
    }
    .status-button {
        margin-left: 10px;
        color: black;
    }
    .btn-complete {
        background-color: orange;
        color: black;
    }
    .btn-preparing {
        background-color: yellow;
        color: black;
    }
    .btn-delivering {
        background-color: #ccccff;
        color: black;
    }
    .btn-delivered {
        background-color: #ccccff;
        color: black;
    }
    .btn-canceled {
        background-color: yellow;
        color: black;
    }
</style>
</head>
<body>
<form id = "orderStform">
<input type='hidden' name="orderNo" value="${orderNo}">
    <div class="container mt-5">
        <!-- 상태 버튼 추가 -->
        <div class="d-flex justify-content-end mb-3">
            <div>
                <input type="button" class="btn-canceled status-button" value="주문취소" onclick = "orderStUpdate('주문취소')" style="float: right;">
                <input type="button" class="btn-delivered status-button" value="배송완료"  onclick = "orderStUpdate('배송완료')"style="float: right;">
                <input type="button" class="btn-delivering status-button" value="배송중"  onclick = "orderStUpdate('배송중')" style="float: right;">
				<input type="button" class="btn-preparing status-button" value="배송준비중" onclick = "orderStUpdate('배송준비중')" style="float: right;">
                <input type="button" class="btn-complete status-button" value="결제완료"   style="float: right;">
            </div>
        </div>
		
		<table>
        <!-- 주문자 정보 표시 -->
        <h3>주문자 정보</h3>
        <p>주문번호: <span id="orderNo"></span></p>
        <p>주문자명: <span id="orderName"></span></p>
        <p>상품명: <span id="productName"></span></p>
        <p>주문일: <span id="orderDt"></span></p>
        <p>주문금액: <span id="paymentAmount"></span></p>
        <p>주문상태: <span id="orderSt"></span></p>
        <p>수취인: <span id="receiveName"></span></p>
        <p>수취인 연락처: <span id="receivePhone"></span></p>
        <p>배송지주소: <span id="orderAddr"></span></p>
        <p>메모: <span id="request"></span></p>
        </table>
        
        <h3>상품 정보</h3>
        <!-- 상품 정보만 표시 -->
        <table class="tg mt-4" id = 'productDetailTable'>
            <thead>
                <tr>
                    <td class="sub-header">NO</td>
                    <td class="sub-header">카테고리</td>
                    <td class="sub-header">상품코드</td>
                    <td class="sub-header">상품명</td>
                    <td class="sub-header">구매단가</td>
                    <td class="sub-header">구매수량</td>
                    <td class="sub-header">재고수량</td>
                </tr>
            </thead>
            <tbody>
                <!-- 상품 정보 행을 여기에 추가할 수 있습니다 -->
            </tbody>
        </table>


        <!-- 결제 정보 표시 -->
        <h3 class="mt-4">결제정보</h3>
        <p>결제 방법: <span id="paymentMethod"></span></p>
    </div>
    </form>
</body>

<script src="/assets/js/main.js"></script>
<script src = "/assets/js/jquery-3.7.1.min.js"></script>
<script>

	$(document).ready(function(){
			var no = '${orderNo}';
			$.ajax({
				data : {orderNo:no},
				type : 'post',
				url	: '/order/getInfo',
				dataType:'json',
				success : function(data){
					setOrderInfo(data);
				},
				error : function(request, status, error){
					console.log(error);
				}
			});
		});

	function setOrderInfo(data){
			$('#orderNo').text(data.orderNo);
			$('#orderName').text(data.orderName);
			$('#productName').text(data.productName);
			$('#orderDt').text(data.orderDt);
			$('#orderSt').text(data.orderSt);
			$('#paymentAmount').text(data.paymentAmount);
			$('#paymentSt').text(data.paymentSt);
			$('#receiveName').text(data.receiveName);
			$('#receivePhone').text(data.receivePhone);
			$('#orderAddr').text(data.orderAddr);
			$('#request').text(data.request);
			$('#paymentMethod').text(data.paymentMethod);
			$('#productDetailTable tbody').empty();
			var str = "";
			for (var i = 0; i < data.orderProductList.length; i++){
				str = "<tr>";
				str+= "<td>"  + (i + 1) + "</td>";
				str+= "<td>" + data.orderProductList[i].categoryName + "</td>";
				str+= "<td>" + data.orderProductList[i].productCode + "</td>";
				str+= "<td>" + data.orderProductList[i].productName + "</td>";
				str+= "<td>" + data.orderProductList[i].price + "</td>";
				str+= "<td>" + data.orderProductList[i].orderQta + "</td>";
				str+= "<td>" + data.orderProductList[i].qta + "</td>";
				str+= "</tr>";
				$('#productDetailTable').append(str);
			}
	}
	

	function orderStUpdate(st){
		if(st=='배송중'){
			if(confirm("배송중으로 변경 하시겠습니까?")){
			var formData = new FormData($(orderStform)[0]);
			formData.append('newSt', st);
			$.ajax({ 
				type : 'post',
				data : formData,
				url : '/orderViewSt/update',
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
		}else if(st=='배송준비중'){
			if(confirm("배송준비중로 변경 하시겠습니까?")){
			var formData = new FormData($(orderStform)[0]);
			formData.append('newSt', st);
			$.ajax({ 
				type : 'post',
				data : formData,
				url : '/orderViewSt/update',
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
			if(confirm("배송완료로 변경 하시겠습니까?")){
			var formData = new FormData($(orderStform)[0]);
			formData.append('newSt', st);
			$.ajax({ 
				type : 'post',
				data : formData,
				url : '/orderViewSt/update',
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
		}else if(st=='주문취소'){
			if(confirm("주문취소로 변경 하시겠습니까?")){
			var formData = new FormData($(orderStform)[0]);
			formData.append('newSt', st);
			$.ajax({ 
				type : 'post',
				data : formData,
				url : '/orderViewSt/update',
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
		}
	}

	function callBackSave(data){
		if(data){
			alert("배송처리가 완료되었습니다.");
			location.reload(true);

		}else{
			alert("오류가 발생하였습니다.");
		}
		
	}
	
	

 
</script>
</html>

