<%@page import="freeboard.vo.FreeBoardVO"%>
<%@page import="lecreview.vo.LecReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	FreeBoardVO fv = (FreeBoardVO) request.getAttribute("fv");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시글 수정</title>
</head>
<body>
<%@ include file="../header.jsp" %>
	<form action="update.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="freeNum" value="<%=fv.getFreeNum()%>">  
	<table border="1">
		<tr>
			<td>작성자</td>
			<td><%=fv.getMemMail() %></td>
		</tr>
		<tr>
			<td>작성날짜</td>
			<td><%=fv.getFreeDate() %></td>
		</tr>
	</table>
		
	
		<div>	
			제목
			<input type="text" name="freeTitle" value="<%=fv.getFreeTitle()%>">
		</div>	
		<div>	
			내용
			<textarea name="freeContent"><%=fv.getFreeContent()%></textarea>
		</div>
		
		<input type="submit" value="자유게시글 수정">
	</form>
<%@ include file="../footer.jsp" %>
</body>
</html>