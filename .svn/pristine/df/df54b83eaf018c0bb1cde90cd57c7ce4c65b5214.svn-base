<%@page import="lecreview.vo.LecReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LecReviewVO rv = (LecReviewVO) request.getAttribute("rv");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 수정</title>
</head>
<body>
<%@ include file="../header.jsp" %>
	<form action="update.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="reNum" value="<%=rv.getReNum()%>">  
	<table border="1">
		<tr>
			<td>강의</td>
			<td><%=rv.getLecId() %></td>
		</tr>
		<tr>
			<td>작성날짜</td>
			<td><%=rv.getReDate() %></td>
		</tr>
	</table>
		
	
		<div>	
			제목
			<input type="text" name="reTitle" value="<%=rv.getReTitle()%>">
		</div>	
		<div>	
			내용
			<textarea name="reContent"><%=rv.getReContent()%></textarea>
		</div>
		
		<input type="submit" value="리뷰 수정">
	</form>
<%@ include file="../footer.jsp" %>
</body>
</html>