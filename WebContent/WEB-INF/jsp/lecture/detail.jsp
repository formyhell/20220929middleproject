<%@page import="java.util.List"%>
<%@page import="lecture.file.vo.AtchFileVO"%>
<%@page import="lecture.vo.LectureVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LectureVO lv = (LectureVO) request.getAttribute("lv");

	List<AtchFileVO> atchFileList = (List<AtchFileVO>) request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 상세</title>
</head>
<body>
<%@ include file="../header.jsp" %>
	<table border="1">
		<tr>
			<td>I D:</td>
			<td><%=lv.getLecId() %></td>
		</tr>
		<tr>
			<td>제목:</td>
			<td><%=lv.getLecTitle() %></td>
		</tr>
		<tr>
			<td>강의소개:</td>
			<td><%=lv.getLecIntro() %></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td>
				<%
					if(atchFileList != null) {
						for(AtchFileVO fileVO : atchFileList) {
				%>
					
					<div><%=fileVO.getOrignlFileNm() %></div>
					
				<%			
						}
					}
				%>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<a href="list.do">[목록]</a>
			<a href="update.do?lecId=<%=lv.getLecId() %>">[강의정보 수정]</a>
			<a href="delete.do?lecId=<%=lv.getLecId() %>">[강의정보 삭제]</a>
			</td>
		</tr>
	</table>
<%@ include file="../footer.jsp" %>	
</body>
</html>