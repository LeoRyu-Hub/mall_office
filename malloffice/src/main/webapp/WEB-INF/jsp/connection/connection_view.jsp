<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Connection</title>
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
</head>
<body>
<form id="updateForm">
	<input type="hidden" id="crudType" name="crudType">
    <table>
        <tr>
            <td>거래처코드</td>
            <td> <input type='text' id='connectionCode' name="connectionCode" value="${connectionCode}" class="value-cell" readonly="readonly"> (거래처코드는 수정이 불가합니다.)</td>
        </tr>
        <tr>
            <td>거래처명</td>
            <td> <input type='text' id='connectionName' class="value-cell" name="connectionName"></td>
        </tr>
        <tr>
            <td>대표명</td>
            <td> <input type='text' id='ceoName' class="value-cell" name="ceoName"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td> <input type='text' id='connectionNumber' class="value-cell" name="connectionNumber"></td>
        </tr>
        <tr>
            <td>담당자명</td>
            <td> <input type='text' id='chargeName' class="value-cell" name="chargeName"></td>
        </tr>
        <tr>
            <td>담당자 연락처</td>
            <td> <input type='text' id='chargeNumber' class="value-cell" name="chargeNumber"></td>
        </tr>
        <tr>
            <td>담당자 이메일</td>
            <td> <input type='text' id='chargeEmail' class="value-cell" name="chargeEmail"></td>
        </tr>
        <tr>
            <td>거래처상태</td>
            <td>
                <select id='connectionSt' class="form-select large-select" name="connectionSt">
                    <option selected>선택</option>
                    <option value="거래중">거래중</option>
                    <option value="거래종료">거래종료</option>
                    <option value="거래대기중">거래대기중</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <button type="button" onclick="connectionUpdate()" class="btn btn-primary btn-sm custom-button">저장</button>
            </td>
            <td>
                <button type="button" onclick="closeWindow()" class="btn btn-success custom-button">닫기</button>
            </td>
        </tr>
    </table>
</form>

<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script>
$(document).ready(function(){
    var code = '${connectionCode}';
    
    if(code==''){
    	$('#connectionCode').attr('readonly', false);
    	$('#crudType').val("I");
    	return;
    }else{
    	$('#crudType').val("U");
    }
    
    $.ajax({
        data : {connectionCode: code},
        type : 'post',
        url : '/connection/getInfo',
        dataType: 'json',
        success : function(data){
            setConnectionInfo(data);
        },
        error : function(request, status, error){
            console.log(error);
        }
    });
});

function setConnectionInfo(data){
    $('#connectionCode').val(data.connectionCode);
    $('#connectionName').val(data.connectionName);
    $('#ceoName').val(data.ceoName);
    $('#connectionNumber').val(data.connectionNumber);
    $('#chargeName').val(data.chargeName);
    $('#chargeNumber').val(data.chargeNumber);
    $('#chargeEmail').val(data.chargeEmail);
    $('#connectionSt').val(data.connectionSt);
}

function closeWindow(){
    self.close();
}

function connectionUpdate(){ 
	if(window.confirm("거래처 정보를 저장하시겠습니까?.")){
	    var formData = new FormData($(updateForm)[0]);
	    $.ajax({ 
	        type : 'post',
	        data : formData,
	        url : '/connection/update',
	        cache : false,
	        processData : false,
	        contentType : false,
	        success : function(data){
	            callBackSave(data);
	        },
	        error : function(request, status, error){
	            console.log(error);
	        }
	    });
	}
}

function callBackSave(data){
	if(data){
		alert("저장이 완료되었습니다.");
		self.close();
    } else {
        alert("오류가 발생하였습니다.");
    }
}
</script>
</body>
</html>
