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
<title>회원 가입 페이지</title>

<style type="text/css">
  table {
    width: 600px;
  }
  
  .table{
  	max-width:60% !important;
  	    margin-left:auto !important; 
    margin-right:auto !important;
  }
  
</style>

</head>
<body>
  <!-- 헤더 위치 -->
  <%@ include file="../header.jsp" %>



<!-- 회원가입폼 -->


      <div class="page-content pt-150 pb-150">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-10 col-md-12 m-auto">
                        <div class="row">
                            <div class="col-lg-6 col-md-8">
                                <div class="login_wrap widget-taber-content background-white">
                                    <div class="padding_eight_all bg-white">
                                        <div class="heading_s1">
                                            <h1 class="mb-5">회원 가입</h1>
                                            <p class="mb-30">딩~~ 함께해요! </p>
                                        </div>
                                        <form action="<%=request.getContextPath()%>/member/insert.do" method="post" onSubmit="return post_check();"> 
                                            <div class="form-group">
											  <input type="text" class="form-control" id="name" name="email" 
											  		pattern="[a-zA-Z0-9]+@[a-zA-Z0-9]+(\.[a-z]+){1,2}" placeholder="이메일">
											  <font id="checkId" size ="2"></font> <p>
												이메일 조건 : ID@domain.com의 형식으로 작성해주세요.</p>
											</div>
											<div class="form-group">
											  <input type="password" class="form-control" id="pw1" name="pw" placeholder="비밀번호" onchange="check_pw()" required
											  		pattern="(?=.*?[a-ZA-Z])(?=.*?[0-9])(?=.*?[~!@#$%^&*()_+]).{6,}">
											  	<p>비밀번호 조건 : 영문, 숫자, 특수문자(~!@#$%^&*()_+)를 혼용한 6자 이상</p>
											</div>
											
											
											<div class="form-group">
											  <input type="password" class="form-control" id="pw2" name="pw" placeholder="비밀번호확인" onchange="check_pw()" required
											  		 pattern="(?=.*?[a-ZA-Z])(?=.*?[0-9])(?=.*?[~!@#$%^&*()_+]).{6,}">&nbsp;<span id="check"></span>
											  <font id="checkPw" size="2"></font>
											</div>
                                            <div class="form-group mb-30">
                                                <button type="submit" class="btn btn-fill-out btn-block hover-up font-weight-bold" name="login">가입하기</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


<!-- 아이디 중복 확인 체크 스크립트 -->
<!-- <script>
	$('.input_mail').focusout(function(){
		let mailId = $('.input_mail').val();
		// ID가 input_mail인 input 요소의 값을 변수 mailId에 저장
		console.log(mailId);
		
		$.ajax({
			url : "member/controller/InsertMemberController",
			type : "post",
			data : {mailId: mailId},
			dataType : 'text',
			success : function(result){
					if(result == 0){
						$("#checkId").html('이미 존재하는 이메일입니다.');
						$("#checkId").attr('color','red');
				} else{
						$("#checkId").html('사용 가능한 이메일입니다.');
						$("#checkId").attr('color','green');
				}
			},
			error : function(){
				alert("서버 요청에 실패하였습니다.")
				
			}
		})
	})
</script> -->

<!-- 비밀번호 일치 여부 체크 스크립트 -->
<script>
	$('.pw').keyup(function(){
		let pass1 = $("#pw1").val();
		// ID가 pw1인 input 요소의 값을 변수 pass1에 저장
		let pass2 = $("#pw2").val();
		// ID가 pw2인 input 요소의 값을 변수 pass2에 저장
		
		if(pass1 != "" || pass2 != ""){
				if (pass1 == pass2) {
				$("#checkPw").html('비밀번호가 일치합니다.'); // checkPw는 fontId
				$("#checkPw").attr('color','green');
			} else {
				$("#checkPw").html('비밀번호가 일치하지 않습니다.');
				$("#checkPw").attr('color','red');
				}
		}
		
	})
</script>


  <!-- 푸터 위치 -->
  <%@ include file="../footer.jsp" %>
</body>
</html>