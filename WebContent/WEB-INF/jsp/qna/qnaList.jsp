<%@page import="coment.vo.comentVO"%>
<%@page import="java.util.List"%>
<%@page import="qna.vo.qnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<qnaVO> qnaList = (List<qnaVO>) request.getAttribute("qnaList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../header.jsp"%>



	<main class="main">
		<div class="page-header mt-30 mb-50">
			<div class="container">
				<div class="archive-header">
					<div class="row align-items-center">
						<div class="col-xl-3">
							<h1 class="mb-15">질문 & 답변</h1>
							<div class="breadcrumb">
								<a href="index.html" rel="nofollow"><i
									class="fi-rs-home mr-5"></i>Home</a> <span></span> 질문 & 답변
							</div>
							<form action="<%=request.getContextPath()%>/listQna.do"
								method="post">
								<input type="text" name="qnaTitle" placeholder="궁금한 질문을 검색해보세요!"
									onkeyup="javascript:if (event.keyCode == 13) addrSearchKey();">
							</form>
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
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th style="background-color: #eeeeee; text-align: center;">작성날짜</th>
							</tr>
							<%
								int qnaSize = qnaList.size();
							if (qnaSize > 0) {
								for (int i = 0; i < qnaSize; i++) {
							%>
							<tr>
								<td><%=qnaList.get(i).getQnaNo()%></td>
								<td><a
									href="<%=request.getContextPath()%>/qnaDetail.do?qnaNo=<%=qnaList.get(i).getQnaNo()%>"><%=qnaList.get(i).getQnaTitle()%></a></td>
								<td><%=qnaList.get(i).getQnaDate().substring(0, 10)%></td>
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