<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일별정산 정보</title>
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
<tr>
정산 일자 : 
</tr>
        <table class="tg mt-4" id = 'adjustmentDetailTable'>
            <thead>
                <tr>
                    <td class="sub-header">NO</td>
                    <td class="sub-header">대분류</td>
                    <td class="sub-header">소분류</td>
                    <td class="sub-header">수량</td>
                    <td class="sub-header">금액</td>
                </tr>
            </thead>
            <tbody>
                <!-- 상품 정보 행을 여기에 추가할 수 있습니다 -->
            </tbody>
        </table>

    </form>
</body>

<script src="/assets/js/main.js"></script>
<script src = "/assets/js/jquery-3.7.1.min.js"></script>
<script>


</script>
</html>