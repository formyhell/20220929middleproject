<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String errMsg = (String)session.getAttribute("errMsg");
	if(errMsg == null) {
		errMsg = "";
	}
	
	session.invalidate();

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
	<!-- jQuery Modal. 모달 창을 위한 스크립트 소스-->
	
	<!-- Remember to include jQuery :) -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	
	  

<title>로그인 모달(모달은 나중에 적용)</title>

<style>

.errMsg{
 text-align: center;

}


.col-lg-6, .col-md-8 {

display: inline-block !important;
max-witdh: 100% !important;

}


.btn-heading, button.btn-heading[type="submit"] {

 background-color: #29A56C !important;
}



.modal {

height: auto !important;

}



	.modal a.close-modal {
	position: static;
    margin: auto;
    top: -12.5px;
    right: -12.5px;
    display: block;
    width: 30px;
    height: 30px;
    text-indent: -9999px;
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center center;
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAAAXNSR0IArs4c6QAAA3hJREFUaAXlm8+K00Acx7MiCIJH/yw+gA9g25O49SL4AO3Bp1jw5NvktC+wF88qevK4BU97EmzxUBCEolK/n5gp3W6TTJPfpNPNF37MNsl85/vN/DaTmU6PknC4K+pniqeKJ3k8UnkvDxXJzzy+q/yaxxeVHxW/FNHjgRSeKt4rFoplzaAuHHDBGR2eS9G54reirsmienDCTRt7xwsp+KAoEmt9nLaGitZxrBbPFNaGfPloGw2t4JVamSt8xYW6Dg1oCYo3Yv+rCGViV160oMkcd8SYKnYV1Nb1aEOjCe6L5ZOiLfF120EjWhuBu3YIZt1NQmujnk5F4MgOpURzLfAwOBSTmzp3fpDxuI/pabxpqOoz2r2HLAb0GMbZKlNV5/Hg9XJypguryA7lPF5KMdTZQzHjqxNPhWhzIuAruOl1eNqKEx1tSh5rfbxdw7mOxCq4qS68ZTjKS1YVvilu559vWvFHhh4rZrdyZ69Vmpgdj8fJbDZLJpNJ0uv1cnr/gjrUhQMuI+ANjyuwftQ0bbL6Erp0mM/ny8Fg4M3LtdRxgMtKl3jwmIHVxYXChFy94/Rmpa/pTbNUhstKV+4Rr8lLQ9KlUvJKLyG8yvQ2s9SBy1Jb7jV5a0yapfF6apaZLjLLcWtd4sNrmJUMHyM+1xibTjH82Zh01TNlhsrOhdKTe00uAzZQmN6+KW+sDa/JD2PSVQ873m29yf+1Q9VDzfEYlHi1G5LKBBWZbtEsHbFwb1oYDwr1ZiF/2bnCSg1OBE/pfr9/bWx26UxJL3ONPISOLKUvQza0LZUxSKyjpdTGa/vDEr25rddbMM0Q3O6Lx3rqFvU+x6UrRKQY7tyrZecmD9FODy8uLizTmilwNj0kraNcAJhOp5aGVwsAGD5VmJBrWWbJSgWT9zrzWepQF47RaGSiKfeGx6Szi3gzmX/HHbihwBser4B9UJYpFBNX4R6vTn3VQnez0SymnrHQMsRYGTr1dSk34ljRqS/EMd2pLQ8YBp3a1PLfcqCpo8gtHkZFHKkTX6fs3MY0blKnth66rKCnU0VRGu37ONrQaA4eZDFtWAu2fXj9zjFkxTBOo8F7t926gTp/83Kyzzcy2kZD6xiqxTYnHLRFm3vHiRSwNSjkz3hoIzo8lCKWUlg/YtGs7tObunDAZfpDLbfEI15zsEIY3U/x/gHHc/G1zltnAgAAAABJRU5ErkJggg==);
	}













</style>
</head>
<body>

<%-- <form action="<%=request.getContextPath()%>/member/login.do" method="post"> 
	<table class="table table-bordered">
		<tr>
			<td>이메일</td>
			<td><input type="text" name="memMail" class="input_mail" id="email"/>
				<font id="checkId" size ="2"></font>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="memPw" class="pw" id="pw1" onchange="check_pw()"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그인" class="btn btn-primary" id="login"/>
			</td>
		</tr>
	</table>
</form> --%>




     <div class="login_wrap widget-taber-content background-white">
         <div class="padding_eight_all bg-white">
             <div class="heading_s1">
                 <h1 class="mb-5">Login</h1>
                 <p class="mb-30">Don't have an account? <a href="page-register.html">Create here</a></p>
             </div>
             <form action="<%=request.getContextPath()%>/member/login.do" method="post"> 
                 <div class="form-group">
                     <input type="text" name="memMail" class="input_mail" id="email" placeholder="이메일" />
                 </div>
                 <div class="form-group">
                     <input type="password" placeholder="비밀번호" name="memPw" class="pw" id="pw1" onchange="check_pw()">
                 </div>
                 <div id="errMsg" style="color:red" ><%=errMsg %></div>
                 <div class="login_footer form-group mb-50">
                     <div class="chek-form">
                         <div class="custome-checkbox">
                             <input class="form-check-input" type="checkbox" name="checkbox" id="exampleCheckbox1" value="" />
                             <label class="form-check-label" for="exampleCheckbox1"><span>Remember</span></label>
                         </div>
                     </div>
                     <a class="text-muted" href="#">Find password</a>
                     
                 </div>
                 <div class="form-group">
                     <button type="submit" class="btn btn-heading btn-block hover-up" id="login" name="login">Log in</button>
                 </div>
             </form>
         </div>
     </div>


	
	
<script>
     $('a[href="#ex7"]').modal({
        fadeDuration: 250
     });
</script>

	
	
	
	
	<script>
	
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
						
						$("#errMsg").text("이메일 또는 비밀번호가 올바르지 않습니다.");
						
					} else {
						window.location.href = "<%=request.getContextPath()%>/index.do";
					} // 여기다가 이렇게 하면 로그인은 됐는데 페이지가 안 넘어간다.. 왜죠  */
				}, error : function(data, textStatus, xhr) {
					console.log("에러에요.");
				}
			})
		});
	</script>
	
	


<%--  <span style="color: red;">${param.message}</span> --%>

</body>
</html>