<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-yj5y{background-color:#efefef;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-ped4{background-color:#34cdf9;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-x6qq{background-color:#dae8fc;border-color:inherit;text-align:left;vertical-align:top}
</style>
<body>
<table class="tg" style="undefined;table-layout: fixed; width: 906px" id='deTable'>
<colgroup>
<col style="width: 151px">
<col style="width: 151px">
</colgroup>
<thead>
  <tr>
    <th class="tg-ped4" colspan="2">대분류</th>
  </tr>
  <tr>
    <td class="tg-yj5y">대분류코드</td>
    <td class="tg-yj5y">대분류명</td>
  </tr>
  </thead>
<tbody>
</tbody>
</table>
<table class="tg" style="undefined;table-layout: fixed; width: 906px" id='middleTable'>
<colgroup>
<col style="width: 151px">
<col style="width: 151px">
</colgroup>
<thead>
  <tr>
    <th class="tg-ped4" colspan="2">중분류</th>
  </tr>
  <tr>
    <td class="tg-yj5y">중분류코드</td>
    <td class="tg-yj5y">중분류명</td>
  </tr>
  </thead>
<tbody>
</tbody>
</table>
<table class="tg" style="undefined;table-layout: fixed; width: 906px" id='smallTable'>
<colgroup>
<col style="width: 151px">
<col style="width: 151px">
</colgroup>
<thead>
  <tr>
    <th class="tg-ped4" colspan="2">소분류</th>
  </tr>
  <tr>
    <td class="tg-yj5y">소분류코드</td>
    <td class="tg-yj5y">소분류명</td>
  </tr>
  </thead>
<tbody>
</tbody>
</table>
<td>
    <div class="d-flex justify-content-end">
        <button type="button" onclick="newCategory()" class="btn btn-primary btn-sm custom-button">신규</button>
    </div>
</td>

<style>
    .custom-select, .form-control {
        width: 200px; /* 원하는 너비로 설정 */
        height: 40px; /* 원하는 높이로 설정 */
    }
</style>
<form id= 'categoryform'><td>
    <div class="row mb-3 align-items-center">
        <label class="col-form-label col-sm-4 mb-0">카테고리</label>
            <select class="form-select custom-select" aria-label="Default select example" id="deSelect" onchange="changeSelect(this, 1)" name = 'deCategory'>
				<option value="">선택</option>
            </select>
            <select class="form-select custom-select" aria-label="Default select example" id="joSelect" onchange="changeSelect(this, 2)" name = 'joCategory'>
                <option value="">선택</option>
            </select>
            <select class="form-select custom-select" aria-label="Default select example" id="soSelect" >
                <option value="">선택</option>
            </select>
           <button type="button" onclick="saveCategory()" class="btn btn-primary btn-sm custom-button">저장</button>
    </div>
</td>
<td>카테고리명</td>
<td>
    <input type="text" class="form-control" name = categoryName />
</td> 
</form>      
</body>

 <script src="/assets/js/main.js"></script>
 <script src = "/assets/js/jquery-3.7.1.min.js"></script>
 
 <script>
 $(document).ready(function(){
	 ajaxCall(1, '', 'T');
	});
 
 function ajaxCall(lv, cd, target){
	 $.ajax({
		    data : {categoryLevel:lv, upperCategoryCode:cd},
			type : 'post',
			url	: '/category/info',
			dataType:'json',
			success : function(list){
				setCategoryList(list, lv, target);
			},
			error : function(request, status, error){
				console.log(error);
			}
		});
 }
 
 
 function setCategoryList(list, lv, target){
	 if(target=='T'){
		 if(lv==1){
		    	$('#deTable > tbody').empty();
		    	$('#middleTable > tbody').empty();
		    	$('#smallTable  > tbody').empty();
		 }else if(lv==2){
		    	$('#middleTable > tbody').empty();
		    	$('#smallTable  > tbody').empty();
		 }else if(lv==3){
		    	$('#smallTable  > tbody').empty();
		 }
	 
	 	for(var i=0;i<list.length;i++){
	 		str="<tr>";
	 		str+="<td class=\"tg-x6qq\" onclick = \"ajaxCall(" + (lv + 1) + ", '"+list[i].categoryCode+"','T')\">"+list[i].categoryCode+"</td>";
	 	    str+="<td class=\"tg-x6qq\">"+list[i].categoryName+"</td>";
	 	    str+="</tr>";
	 	    option = " <option value='"+list[i].categoryCode+"'>"+list[i].categoryName+"</option>";
	 	    if(lv==1){
	 	    	$('#deTable').append(str);	
	 	    	$('#deSelect').append(option);
	 	    }else if(lv==2){
	 	    	$('#middleTable').append(str);
	 	    }else if(lv==3){
	 	    	$('#smallTable').append(str);
	 	    }
	 	   
	 	}
	 }else if(target=='S'){
		 for(var i=0;i<list.length;i++){
			 option = " <option value='"+list[i].categoryCode+"'>"+list[i].categoryName+"</option>";
			 if(lv==2){
				 $('#joSelect').append(option);
		 	 }else if(lv==3){
		 	     $('#soSelect').append(option);
		 	 }
		 }
	 }
 }

 
 function changeSelect(obj, lv){
	 
	 if(lv==1){
	    $('#joSelect').empty();$('#joSelect').append("<option value=''>선택</option>");
	    $('#soSelect').empty();$('#soSelect').append("<option value=''>선택</option>");
	}else if(lv==2){
		$('#soSelect').empty();$('#soSelect').append("<option value=''>선택</option>");
	 }else{
		 $('#joSelect').empty();$('#joSelect').append("<option value=''>선택</option>");
	    $('#soSelect').empty();$('#soSelect').append("<option value=''>선택</option>");
	 }
	 if($(obj).val()==''){
		 return;
	 }
		
	 ajaxCall(lv+1, $(obj).val(), 'S');
 }

 
 function newCategory(){
	 $('#deSelect').val('');
	 $('#joSelect').val('');
	 $('#soSelect').val('');
 }
 
 
 function saveCategory(){
		var formData = new FormData($("#categoryform")[0]);
		$.ajax({ 
			type : 'post',
			data : formData,
			url : '/category/save',
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
	 }
	 else{
		 alert("오류가 발생하였습니다.");
	}
}
 </script>
 
</html>

