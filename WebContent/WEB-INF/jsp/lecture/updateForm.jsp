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
<title>회원정보 변경</title>
</head>
<body>
<%@ include file="../header.jsp" %>
	<form action="update.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="lecId" value="<%=lv.getLecId()%>">  
	<input type="hidden" name="atchFileId" value="<%=lv.getAtchFileId()%>">  
		<table>
			<tr>
				<td>I D:</td>
				<td><%=lv.getLecId()%></td>
			</tr>
			<tr>
				<td>제목:</td>
				<td><input type="text" name="lecTitle" value="<%=lv.getLecTitle()%>"></td>
			</tr>
			<tr>
				<td>강의소개:</td>
				<td><input type="text" name="lecIntro" value="<%=lv.getLecIntro()%>"></td>
			</tr>
			<tr>
			<td>기존 첨부파일</td>
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
				<td>새로운 첨부파일:</td>
				<td><input type="file" name="atchFile" multiple="multiple"></td>
			</tr>
		</table>
		<input type="submit" value="강의정보 수정">

	</form>
<%@ include file="../footer.jsp" %>	
</body>
</html>