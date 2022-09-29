<%@page import="admin.vo.AdminVO"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="notice.vo.noticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<noticeVO> noticeList = (List<noticeVO>) request.getAttribute("noticeList");
MemberVO memVO = new MemberVO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
	<%@ include file="../header.jsp"%>
	<%-- <jsp:include page="<%=request.getContextPath() %>/WEB-INF/jsp/header.jsp"> --%>
	<main class="main">
		<div class="page-header mt-30 mb-50">
			<div class="container">
				<div class="archive-header">
					<div class="row align-items-center">
						<div class="col-xl-3">
							<h1 class="mb-15">공지사항</h1>
							<div class="breadcrumb">
								<a href="index.html" rel="nofollow"><i
									class="fi-rs-home mr-5"></i>Home</a> <span></span> 공지사항
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="page-content mb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 m-auto">
						<table width="100%" class="table table-bordered"
							style="text-align: center; border: 1px solid #dddddd">
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">공지
									번호</th>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th style="background-color: #eeeeee; text-align: center;">공지날짜</th>
							</tr>
							<%
								int noticeSize = noticeList.size();
							if (noticeSize > 0) {
								for (int i = 0; i < noticeSize; i++) {
							%>
							<tr>
								<td><%=noticeList.get(i).getNoticeNum()%></td>
								<td><a
									href="noticeDetail.do?noticeNum=<%=noticeList.get(i).getNoticeNum()%>"><%=noticeList.get(i).getNoticeTitle()%></a></td>
								<td><%=noticeList.get(i).getNoticeDate().substring(0, 10)%></td>
							</tr>
							<%
								}
							}
							%>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>




	<%@ include file="../footer.jsp"%>

</body>
</html>