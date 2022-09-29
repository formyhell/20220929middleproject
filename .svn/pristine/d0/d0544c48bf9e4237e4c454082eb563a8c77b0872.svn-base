<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LectureVO lv = (LectureVO) request.getAttribute("lv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../header.jsp" %>

	   <main class="main">
        <div class="page-content mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 m-auto">
                        <div class="single-page pt-50 pr-30">
                            <div class="single-header style-2">
                                <div class="row">
                                    <div class="col-xl-10 col-lg-12 m-auto">
                                        <h6 class="mb-10"><a href="<%=request.getContextPath() %>/lecture/detail.do?lecId=<%=lv.getLecId()%>"><%=lv.getLecTitle() %></a></h6>
                                        <form onsubmit="return validCheck()" action="<%=request.getContextPath() %>/insertQna.do" method="post" onsubmit="return false">
                                        <input type="hidden" name=lecId value="<%=lv.getLecId() %>">
                                        <div class="single-header-meta">
	                                        <input id="qnaTitle" type="text" name="qnaTitle" placeholder="제목을 입력하세요.">
                                        </div>
                                        <div class="font-xs mt-15 mb-15">
	                                        <textarea id="qnaContent" name="qnaContent" placeholder="질문해주세요!"></textarea>
                                        </div>
                                          <input type="submit" class="hover-up btn btn-rounded mr-10" value="작성">
                                        </form>
                                    </div>
                                </div>
                            </div>
                          </div>
                      </div>
                   </div>
               </div>
           </div>
	  </main>
	
	<%@ include file="../footer.jsp" %>
<script>
function validCheck() {
	var qnaTitle = document.getElementById('qnaTitle').value;
	var qnaContent = document.getElementById('qnaContent').value;

	if(qnaTitle == ""){
		alert('제목을 입력해주세요');
		return false;
	} else if(qnaContent == ""){
		alert('질문을 입력해주세요');
		return false;
	}
	return true;
}
</script>
</body>
</html>