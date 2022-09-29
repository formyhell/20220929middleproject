<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의리뷰 등록</title>
</head>
<body>
<%@ include file="../header.jsp" %>
	<form action="<%=request.getContextPath() %>/lecreview/list.do" method="post" >
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="reTitle" value=""></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="reContent" ></textarea></td>
			</tr>
			<tr>
				<td>별점</td>
				<td>
					<fieldset>
						<input type="radio" name="satisfaction" value="5" id="rate1"><label for="rate1">⭐</label> 
						<input type="radio" name="satisfaction" value="4" id="rate2"><label for="rate2">⭐</label>
						<input type="radio" name="satisfaction" value="3" id="rate3"><label for="rate3">⭐</label>
						<input type="radio" name="satisfaction" value="2" id="rate4"><label for="rate4">⭐</label>
						<input type="radio" name="satisfaction" value="1" id="rate5"><label for="rate5">⭐</label>
					</fieldset>
				</td>
			</tr>
		</table>
		<input type="submit" value="리뷰 등록">
	</form>
<%@ include file="../footer.jsp" %>	
</body>
</html>