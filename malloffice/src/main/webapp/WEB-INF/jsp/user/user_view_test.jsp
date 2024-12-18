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
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 20px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 20px;word-break:normal;}
.tg .tg-3dyu{background-color:#dae8fc;border-color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-tizx{background-color:#000000;border-color:#ffffff;color:#ffffff;text-align:left;vertical-align:top}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-tizx">회원 ID</th>
    <th class="tg-tizx">회원명</th>
    <th class="tg-tizx">전화번호</th>
    <th class="tg-tizx">주소 </th>
    <th class="tg-tizx">이메일</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-3dyu" id = userId>test1</td>
    <td class="tg-3dyu" id = userName>홍길동</td>
    <td class="tg-3dyu" id = phone>010-1111-1111</td>
    <td class="tg-3dyu">(1111) 경기도 의정부시 한국로 12번길</td>
    <td class="tg-3dyu" id = email>test1@naver.com</td>
  </tr>
</tbody>
  <tr>
    <th class="tg-tizx">가입일</th>
    <th class="tg-tizx">탈퇴여부</th>
    <th class="tg-tizx">탈퇴일</th>
    <th class="tg-tizx">총주문횟수</th>
    <th class="tg-tizx">총주문금액</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-3dyu" id = joinDate>2024.03.02</td>
    <td class="tg-3dyu" id = withdrawYN>Y</td>
    <td class="tg-3dyu" id = withdrawDate>2024.03.05</td>
    <td class="tg-3dyu">3</td>
    <td class="tg-3dyu">100,000</td>
  </tr>
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
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-3dyu">1</td>
    <td class="tg-3dyu">20240001</td>
    <td class="tg-3dyu">반팔티셔츠</td>
    <td class="tg-3dyu">5</td>
    <td class="tg-3dyu">50,000</td>
    <td class="tg-3dyu">홍길동</td>
    <td class="tg-3dyu">경기도</td>
    <td class="tg-3dyu">배송완료</td>
    <td class="tg-3dyu"><input type='button' value='보기' style="padding: 5px; background-color: #007bff; color: black; border: none; border-radius: 5px; cursor: pointer;"> </td>
  </tr>
  <tr>
    <td class="tg-3dyu">2</td>
    <td class="tg-3dyu">20240002</td>
    <td class="tg-3dyu">시계</td>
    <td class="tg-3dyu">1</td>
    <td class="tg-3dyu">30,000</td>
    <td class="tg-3dyu">홍길동</td>
    <td class="tg-3dyu">경기도</td>
    <td class="tg-3dyu">배송완료</td>
    <td class="tg-3dyu"><input type='button' value='보기' style="padding: 5px; background-color: #007bff; color: black; border: none; border-radius: 5px; cursor: pointer;"> </td>
  </tr>
  <tr>
    <td class="tg-3dyu">3</td>
    <td class="tg-3dyu">20240003</td>
    <td class="tg-3dyu">청바지</td>
    <td class="tg-3dyu">1</td>
    <td class="tg-3dyu">20,000</td>
    <td class="tg-3dyu">홍길동</td>
    <td class="tg-3dyu">경기도</td>
    <td class="tg-3dyu">배송완료</td>
    <td class="tg-3dyu"><input type='button' value='보기' style="padding: 5px; background-color: #007bff; color: black; border: none; border-radius: 5px; cursor: pointer;"> </td>
  </tr>
  <tr>
    <td class="tg-3dyu">4</td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
  </tr>
  <tr>
    <td class="tg-3dyu">5</td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
  </tr>
  <tr>
    <td class="tg-3dyu">6</td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
    <td class="tg-3dyu"></td>
  </tr>
</tbody>
</table>

<button type="button" onclick = 'closeWindow()' class="btn btn-secondary">닫기</button>
</body>
</html>
 <script src="/assets/js/main.js"></script>
 <script src = "/assets/js/jquery-3.7.1.min.js"></script>
 <script>
 function closeWindow(){
	 self.close();
 }
 </script>
 
</html>