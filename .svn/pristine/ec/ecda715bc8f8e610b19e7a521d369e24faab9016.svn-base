<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%
	String errMsg = (String)session.getAttribute("errMsg");
	if(errMsg == null) {
		errMsg = "";
	}
	
	session.invalidate();

%>     --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>관리자 로그인 페이지(모달은 나중에 적용)</title>

<!-- <style>

.errMsg{
 text-align: center;

}
</style> -->
</head>
<body>

<form action="<%=request.getContextPath()%>/adminLogin.do" method="post"> 
	<table class="table table-bordered">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="adminId" class="input_mail" id="adminId"/>
				<font id="checkId" size ="2"></font>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="adminPw" class="pw" id="pw1" onchange="check_pw()"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인" class="btn btn-primary" id="login"/>
			</td>
		</tr>
	</table>
</form>
<%-- 
	<div id="errMsg" style="color:red" ><%=errMsg %></div> --%>
	
<%-- 	<script>
	
		$('#login').click(function(e) {
			
			e.preventDefault(); // 폼 전송을 안한다. 
			
			let memMail = $('#email').val();
			let memPw = $('#pw1').val();
			$.ajax({
				type : "POST",
				url : "<%=request.getContextPath()%>/member/login.do",
				data : "memMail=" + memMail + "&memPw=" + memPw,
				dataType : "json",
				success : function(data, textStatus, xhr) {
					
					console.log(data);
					
					if (data.result == 'fail') {
						
						$("#errMsg").text("아이디 또는 비밀번호가 올바르지 않습니다.");
						
					} else {
						window.location.href = "<%=request.getContextPath()%>/backindex.do";
					} 
				}, error : function(data, textStatus, xhr) {
					console.log("에러에요.");
				}
			})
		});
	</script> --%>
	
	



</body>
</html>