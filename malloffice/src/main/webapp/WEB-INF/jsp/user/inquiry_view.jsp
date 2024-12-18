<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="inquiryform">
<input type='hidden' name="userId" value="${userId}">
<input type='hidden' name="inquirySq" value="${inquirySq}">
<table>
    <tr>
        <td>제목</td>
        <td id='title' class="value-cell"></td>
    </tr>
    <tr>
        <td>유형</td>
        <td id='type' class="value-cell"></td>
    </tr>
    <tr>
        <td>회원ID/회원명</td>
        <td id='userId' class="value-cell">/</td>
        <td id='userName' class="value-cell"></td>
    </tr>
    <tr>
        <td>문의일</td>
        <td id='inquiryDate' class="value-cell"></td>
    </tr>
    <tr>
        <td>첨부파일</td>
        <td id='attachment1' class="value-cell"></td>
    </tr>
    <tr>
        <td>문의내용</td>
    </tr>
    <tr>
        <td colspan="2">
            <textarea cols="50" rows="5" id='content'></textarea>
        </td>
    </tr>
    <tr>
        <td>답변내용</td>
    </tr>
    <tr>
        <td colspan="2">
            <textarea cols="50" rows="7" id='answer' name="answer"></textarea>
        </td>
    </tr>
    <tr>
        <td>
            <input type='button' onclick='regReply()' value='답변등록'>
        </td>
        <td>
            <input type='button' onclick='closeWindow()' value='닫기'>
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
		var id = '${userId}';
		var seq = ${inquirySq};
		$.ajax({
			data : {userId:id, inquirySq:seq},
			type : 'post',
			url	: '/inquiry/getInfo',
			dataType:'json',
			success : function(data){
				setUserInfo(data);
			},
			error : function(request, status, error){
				console.log(error);
			}
		});
	});
 
 function setUserInfo(data){
	    console.log(data);
		$('#title').text(data.title);
		$('#type').text(data.type);
		$('#userId').text(data.userId);
		$('#userName').text(data.userName);
		$('#inquiryDate').text(data.inquiryDate);
		$('#attachment1').text(data.attachment1);
		$('#content').text(data.content);
		$('#answer').text(data.answer);
	}
 
 function closeWindow(){
	 self.close();
 }
 
 function regReply(){  //name 속성에 있는 값만 전달됌(name 설정 필수, hidden 사용)
		var formData = new FormData($(inquiryform)[0]);
		$.ajax({ 
			type : 'post',
			data : formData,
			url : '/inquiry/reg',
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
			alert("답변이 등록되었습니다.");
		}else{
			alert("답변 등록중 오류가 발생하였습니다.");
		}
		
	}
 </script>
 
 </body>
</html>