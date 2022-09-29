<%@page import="java.util.List"%>
<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MemberVO mv = (MemberVO) request.getAttribute("mv");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 변경</title>
</head>
<body>
	<form action="update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="memId" value="<%=mv.getMemMail() %>"> <!-- 왜 숨겨놓음..? -->
			
		<table>
			<tr>
				<td>I D:</td> <!-- id는 기본키이기 때문에 변경할 일이 없다. 나머지 데이터들만 변경한다. -->
				<td><%=mv.getMemMail() %></td> <!-- 수정 불가, 보기만 함. -->
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="text" name="memName" value="<%=mv.getMemPw()%>"></td>
			</tr>
			<tr>
		
		</table>
		<input type="submit" value="회원정보 수정">

	</form>
</body>
</html>