<%@page import="qna.vo.qnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	qnaVO qv = (qnaVO) request.getAttribute("qv");
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
<%--                                         <h6 class="mb-10"><a href="<%=request.getContextPath() %>/lecture/detail.do?lecId=<%=lv.getLecId()%>"><%=lv.getLecTitle() %></a></h6> --%>
                                        <form onsubmit="return validCheck()" action="<%=request.getContextPath() %>/updateQna.do" method="post" onsubmit="return false">
                                        <input type="hidden" name="qnaNo" value="<%=qv.getQnaNo() %>">
                                        
                                        <div class="single-header-meta">
	                                        <input id="qnaTitle" type="text" value="<%=qv.getQnaTitle() %>" name="qnaTitle" >
                                        </div>
                                        <div class="font-xs mt-15 mb-15">
	                                        <textarea id="qnaContent" name="qnaContent"><%=qv.getQnaContent() %></textarea>
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
</body>
</html>