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


<title>강사 신청 페이지</title>
</head>
<body>
  <!-- 헤더 위치 -->
  <%@ include file="../header.jsp" %>
  
      <div class="page-content pt-150 pb-150">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-10 col-md-12 m-auto">
                        <div class="row">
                            <div class="col-lg-6 col-md-8">
                                <div class="login_wrap widget-taber-content background-white">
                                    <div class="padding_eight_all bg-white">
                                        <div class="heading_s1">
                                            <h1 class="mb-5">강사 회원 신청</h1>
                                            <p class="mb-30">당신의 지식을 나눠주세요!</p>
                                        </div>
                                        <form action="<%=request.getContextPath()%>/teacherApply.do" method="post" onSubmit="return post_check();"> 
                                            <div class="form-group">
											  <input type="text" class="form-control" id="name" name="name" placeholder="이름 또는 닉네임">
											</div>
											<div class="form-group">
											  <input type="text" class="form-control" id="tel" name="tel" placeholder="전화번호">
											</div>
											<div class="form-group">
											  <input type="text" class="form-control" id="subject" name="subject" placeholder="희망분야">
											</div>
											<div class="form-group">
											  <textarea class="form-control" rows="5" id="comment" name="comment" placeholder="소개"></textarea>
											</div>
											<div class="form-group">
											  <input type="text" class="form-control" id="link" name="link" placeholder="참고 링크">
											</div>
                                            <div class="form-group mb-30">
                                                <button type="submit" class="btn btn-fill-out btn-block hover-up font-weight-bold" name="login">신청하기</button>
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

  
  



  
  <!-- 푸터 위치 -->
  <%@ include file="../footer.jsp" %>
</body>
</html>