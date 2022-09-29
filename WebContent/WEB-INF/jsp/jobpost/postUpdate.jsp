<%@page import="jobposting.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PostVO pv = (PostVO) request.getAttribute("pv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath() %>/updatePost.do">
	<div class="container">
		<div class="row">
			<table width="100%" class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글보기</th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글제목</td>
					</tr>
					<tr height="500px" bordercolor="black">
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=pv.getPostContent() %></td>
					</tr>
				</tbody>
			</table>
			<a href="listPost.do">목록</a>
			<a href="deletePost.do?postNo=<%=pv.getPostNo() %>">삭제</a>
			
			<a href="updatePost.do?postNo=<%=pv.getPostNo() %>">수정</a>		
		</div>
	</div>
	<input type="hidden" name="postNo" value="<%=pv.getPostNo() %>">
	<table border="1">
<%-- 		<tr>
			<td>강의번호: </td>
			<td><%=pv.getLectureId() %></td>
		</tr>
		<tr>
			<td>회원: </td>
			<td><%=pv.getMemMail() %></td>
		</tr>
		<tr>
			<td>작성날짜: </td>
			<td><%=pv.getQnaDate() %></td>
		</tr>
	</table> --%>
		<div>
			제목
			<input name="postTitle" value="<%=pv.getPostTitle() %>">
		
		</div>
		<div>
			내용
			<textarea name="postContent" cols="50" rows="50"><%=pv.getPostContent() %></textarea>
		</div>
		
	<input type="submit" value="수정 ">
	</form>
</body>
</html>