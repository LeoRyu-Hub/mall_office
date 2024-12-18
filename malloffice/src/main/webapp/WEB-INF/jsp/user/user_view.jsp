<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 20px;
	word-break: normal;
}

.tg .tg-3dyu {
	background-color: #dae8fc;
	border-color: #ffffff;
	text-align: left;
	vertical-align: top
}

.tg .tg-tizx {
	background-color: #000000;
	border-color: #ffffff;
	color: #ffffff;
	text-align: left;
	vertical-align: top
}
</style>
	<table class="tg">
		<thead>
			<tr>
				<th class="tg-tizx">회원 ID</th>
				<th class="tg-tizx">회원명</th>
				<th class="tg-tizx">전화번호</th>
				<th class="tg-tizx">주소</th>
				<th class="tg-tizx">이메일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="tg-3dyu" id=userId></td>
				<td class="tg-3dyu" id=userName></td>
				<td class="tg-3dyu" id=phone></td>
				<td class="tg-3dyu" id=addr></td>
				<td class="tg-3dyu" id=email></td>
			</tr>
		</tbody>
		<tr>
			<th class="tg-tizx">가입일</th>
			<th class="tg-tizx">탈퇴여부</th>
			<th class="tg-tizx">탈퇴일</th>
			<th class="tg-tizx">총주문횟수</th>
			<th class="tg-tizx">총주문금액</th>
		</tr>
		<tbody>
			<tr>
				<td class="tg-3dyu" id=joinDate></td>
				<td class="tg-3dyu" id=withdrawYN></td>
				<td class="tg-3dyu" id=withdrawDate></td>
				<td class="tg-3dyu"></td>
				<td class="tg-3dyu"></td>
			</tr>
		</tbody>
		</table>
		<table class="tg" id = 'orderInfoTable'>
		<thead>
		<tr>
			<th class="tg-tizx">NO</th>
			<th class="tg-tizx">주문번호</th>
			<th class="tg-tizx">주문상품명</th>
			<th class="tg-tizx">상품수량</th>
			<th class="tg-tizx">주문금액</th>
			<th class="tg-tizx">수취인</th>
			<th class="tg-tizx">배송지</th>
			<th class="tg-tizx">배송상태</th>
			<th class="tg-tizx">주문서보기</th>
		</tr>
		</thead>
		<tbody>
		
		</tbody>
	</table>
	<button type="button" onclick='closeWindow()' class="btn btn-secondary">닫기</button>
</body>
</html>
<script src="/assets/js/main.js"></script>
<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script>
	$(document).ready(function() {
		var id = '${userId}';
		$.ajax({
			data : {
				userId : id
			},
			type : 'post',
			url : '/user/getInfo',
			dataType : 'json',
			success : function(data) {
				setUserInfo(data);
			},
			error : function(request, status, error) {
				console.log(error);
			}
		});
	});

	function setUserInfo(data) {
		console.log(data);
		$('#userId').text(data.userId);
		$('#userName').text(data.userName);
		$('#withdrawYN').text(data.withdrawYN);
		$('#withdrawDate').text(data.withdrawDate);
		$('#phone').text(data.phone);
		$('#addr').text(data.addr);
		$('#email').text(data.email);
		$('#joinDate').text(data.joinDate);
		var str='';
		for (var i =0; i < data.orderList.length; i++){
			str = "<tr>";
			str+= "<td class='tg-3dyu'>"  + (i + 1) + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].orderNo + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].productName + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].orderQta + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].orderPrice + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].receiveName + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].orderAddr + "</td>";
			str+= "<td class='tg-3dyu'>" + data.orderList[i].orderSt + "</td>";
			str+= "<td class='tg-3dyu'>"+"<input type='button' onclick=\"viewOrder('" + data.orderList[i].orderNo + "')\" value='보기' style='padding: 5px; background-color: #007bff; color: black; border: none; border-radius: 5px; cursor: pointer;'>"+"</td>"
			str+= "</tr>";
			$('#orderInfoTable > tbody').append(str);
			
		}
	}

	function closeWindow() {
		self.close();
	}
	
	function viewOrder(no) {
		window.open('/order/view?orderNo='+no,'주문정보','width=700, height=900, history=no, resizable=no, status=no, scrollbars=yes, menubar=no')
	}


</script>