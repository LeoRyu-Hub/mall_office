<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="productform" enctype = "multipart/form-data">
<input type='hidden' name="productCode" value="${productCode}">

<table>
    <tr>
        <td>상품코드</td>
        <td> <input type='text' id='productCode' class="value-cell" readonly="readonly"> (상품코드는 수정이 불가합니다.)</td>
    </tr>
    <tr>
        <td>상품명</td>
        <td> <input type='text' id='productName' class="value-cell" name="productName"  ></td>
    </tr>
    <tr>
        <td>정상가</td>
        <td> <input type='text' id='originalPrice' class="value-cell" name="originalPrice" >원</td>
        <td>판매가</td>
        <td> <input type='text' id='price' class="value-cell" name="price" >원</td>
    </tr>
    <tr>
        <td>재고수량</td>
        <td> <input type='text' id='qta' class="value-cell" name="qta" >개</td>
         <td>상품상태</td>
        <td>
        	<select id='productSt' class="form-select large-select" aria-label="Default select example" name="productSt">
        		<option selected>선택</option>
        		<option value="판매중">판매중</option>
        		<option value="판매종료">판매종료</option>
        	</select>
        </td>
    </tr>
    <tr>
        <td>카테고리</td>
        <td >
        <select id='deCategory' class="form-select large-select" aria-label="Default select example" >
        		<option selected>선택</option>
        </select>
        <select id='joCategory' class="form-select large-select" aria-label="Default select example" >
        		<option selected>선택</option>
        </select>
        <select id='soCategory' class="form-select large-select" aria-label="Default select example" >
        		<option selected>선택</option>
        </select>
        </td>
         <td>거래처</td>
        <td>
        	<select id='connection' class="form-select large-select" aria-label="Default select example" name="connection">
        		<option selected>선택</option>
        		<option value="명신산업">명신산업</option>
        		<option value="길동산업">길동산업</option>
        		<option value="진우모직">진우모직</option>
        		<option value="명진산업">명진산업</option>
        	</select>
        </td>
    </tr>
    <tr>
        <td>섬네일</td>
          <td> <input type='file' id='thumbnail' class="value-cell" name = 'thumbnailFile'></td>
    </tr>
    <tr>
        <td>설명</td>
    </tr>
    <tr>
        <td colspan="2">
            <textarea id='productDetail' cols="50" rows="7" id='answer' name="productDetail" ></textarea>
        </td>
    </tr>
    <tr>
        <td>
            <button type="button" onclick="productUpdate()" class="btn btn-primary btn-sm custom-button">수정</button>
        </td>
        <td>
            <button type="button" onclick="closeWindow()" class="btn btn-success custom-button">닫기</button>
        </td>
    </tr>
</table>
</form>
<style>
    /* 테이블 셀의 여백 및 패딩 조정 */
    td {
        padding: 5px; /* 셀 내부 여백 */
        vertical-align: top; /* 셀 내용의 정렬 방식 */
    }

    .value-cell {
        padding-left: 1px; /* 제목과 값 사이의 간격 */
    }
</style>

 <script src="/assets/js/main.js"></script>
 <script src = "/assets/js/jquery-3.7.1.min.js"></script>
<script>
 $(document).ready(function(){
		var code = '${productCode}';
		$.ajax({
			data : {productCode:code},
			type : 'post',
			url	: '/product/getInfo',
			dataType:'json',
			success : function(data){
				setProductInfo(data);
			},
			error : function(request, status, error){
				console.log(error);
			}
		});
 });
 	
 function setProductInfo(data){
	 	console.log(data);
		$('#productCode').val(data.productCode);
		$('#productName').val(data.productName);
		$('#originalPrice').val(data.originalPrice);
		$('#price').val(data.price);
		$('#qta').val(data.qta);
		$('#productSt').val(data.productSt);
		$('#connection').val(data.connection);
		$('#thumbnail').val(data.thumbnail);
		$('#productDetail').val(data.productDetail);
		
		for(var i=0;i<data.categorylist.length;i++){
			if(data.categorylist[i].categoryLevel=="1"){
				$('#deCategory').append("<option value='"+data.categorylist[i].categoryCode+"'>"+data.categorylist[i].categoryName+"</option>");
			}else if(data.categorylist[i].categoryLevel=="2" && data.categoryCode.substr(0,2)==data.categorylist[i].categoryCode.substr(0,2)){
				$('#joCategory').append("<option value='"+data.categorylist[i].categoryCode+"'>"+data.categorylist[i].categoryName+"</option>");
			}else if(data.categorylist[i].categoryLevel=="3" && data.categoryCode.substr(0,4)==data.categorylist[i].categoryCode.substr(0,4)){
				$('#soCategory').append("<option value='"+data.categorylist[i].categoryCode+"'>"+data.categorylist[i].categoryName+"</option>");
			}
		}
		$('#deCategory').val(data.categoryCode.substr(0,2));
		$('#joCategory').val(data.categoryCode.substr(0,4));
		$('#soCategory').val(data.categoryCode);
		//$('#categoryCode').val(data.deCategory.substring(0, 2));
		//$('#categoryCode').val(data.joCategory.substring(0, 4));
		//$('#categoryCode').val(data.soCategory);
	}
 
 function closeWindow(){
	 self.close();
 }
 
 function productUpdate(){ 
		var formData = new FormData($(productform)[0]);
		$.ajax({ 
			type : 'post',
			data : formData,
			url : '/product/update',
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

	function callBackSave(data){
		if(data){
			alert("저장되었습니다.");
			self.close();
		}else{
			alert("오류가 발생하였습니다.");
		}
		
	}
 </script>

</body>
</html>