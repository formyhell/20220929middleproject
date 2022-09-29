<%@page import="memberTeacher.service.MemberTeacherServiceImpl"%>
<%@page import="member.service.MemberServiceImpl"%>
<%@page import="memberTeacher.service.IMemberTeacherService"%>
<%@page import="lecture.service.ILectureService"%>
<%@page import="lecture.service.LectureServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규강의 등록</title>
<script>

</script>
</head>
<body>
<%@ include file="../header.jsp" %>
    <%
    	IMemberTeacherService sTeacherService = MemberTeacherServiceImpl.getInstance();
    	String mtId = sTeacherService.getTeacherId(memMail);
    	
    	
     %>
	<div class="page-content pt-150 pb-150">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-10 col-md-12 m-auto">
                        <div class="row">
                            <div class="col-lg-6 col-md-8">
                                <div class="login_wrap widget-taber-content background-white">
                                    <div class="padding_eight_all bg-white">
                                        <div class="heading_s1">
                                            <h1 class="mb-5">강의 등록 신청</h1>
                                            <p class="mb-30">당신의 지식을 나눠주세요!</p>
                                        </div>
                                        <form action="<%=request.getContextPath()%>/lecture/insert.do" method="post" enctype="multipart/form-data"> 
                                       		<input type="hidden" name="memMail"  value="<%=memMail %>">
                                       		<input type="hidden" name="instructorId"  value="<%=mtId %>">
                                            <div class="form-group">
											  강사이메일:	<%=memMail %>
											</div>
                                            <div class="form-group">
											  <input type="text" class="form-control" name="lecId" placeholder="강의 아이디">
											</div>
											<div class="form-group">
											  <input type="text" class="form-control" name="lecTitle" placeholder="제목">
											</div>
											<div class="form-group">
											  <input type="text" class="form-control"  name="lecPrice" placeholder="가격(￦)">
											</div>
											<div class="form-group">
											  <textarea class="form-control" rows="5" name="lecIntro" placeholder="강의소개"></textarea>
											</div>
											<div class="form-group">
											  <input type="text" class="form-control" name="lecCurri" placeholder="커리큘럼">
											</div>
											<div class="form-group">
											  	<select id="Scategory" name="scategoryId">
													<option value="">카테고리 선택</option>
													<option value="scate2">Java</option>
													<option value="scate7">C++</option>
													<option value="scate6">Python</option>
													<option value="scate3">JavaScript</option>
													<option value="scate5">Spring</option>
													<option value="scate1">HTML/CSS</option>
													<option value="scate8">시스템 보안</option>
													<option value="scate9">패스워드 크래킹</option>
													<option value="scate10">백도어</option>
													<option value="scate11">버퍼 오버플로우</option>
													<option value="scate12">네트워크 보안</option>
													<option value="scate13">3D MAX</option>
													<option value="scate14">마야</option>
													<option value="scate15">캐릭터 디자인</option>
													<option value="scate16">3D 건축</option>
													<option value="scate17">retas studio</option>
													<option value="scate18">adobe flash</option>
													<option value="scate19">VR</option>
													<option value="scate20">MR</option>
													<option value="scate21">AR</option>
												</select>
											</div>
											<div class="form-group">
											  <input type="file" class="form-control" name="atchFile" multiple="multiple" placeholder="첨부파일">
											</div>
                                            <div class="form-group mb-30">
                                                <button type="submit" class="btn btn-fill-out btn-block hover-up font-weight-bold" value="강의 등록">신청하기</button>
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
	
	
<%@ include file="../footer.jsp" %>	
</body>
</html>