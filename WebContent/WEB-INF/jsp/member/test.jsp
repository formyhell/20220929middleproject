<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.gnb {
background-color:red;
}

.lnb {
background-color:blue;
}

.bodyContents {
background-color:red;
}
</style>

<script>
    function acyncMovePage(url){
        // ajax option
        var ajaxOption = {
                url : url,
                async : true,
                type : "POST",
                dataType : "html",
                cache : false
        };
        
        $.ajax(ajaxOption).done(function(data){
            // Contents 영역 삭제
            $('#bodyContents').children().remove();
            // Contents 영역 교체
            $('#bodyContents').html(data);
        });
    }
</script>

</head>
<body>

        <div id="gnb"></div>
        <div id="lnb"></div>
        <div id="bodyContents"></div>
        <input type="button" value="페이지 이동" onclick="acyncMovePage('login.jsp')">
        
</body>
</html>