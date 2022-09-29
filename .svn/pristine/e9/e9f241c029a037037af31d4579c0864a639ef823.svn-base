<%@page import="coment.vo.comentVO"%>
<%@page import="java.util.List"%>
<%@page import="qna.vo.qnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	List<qnaVO> moreQna = (List<qnaVO>) request.getAttribute("moreQna");
	
	LectureVO lv = (LectureVO) request.getAttribute("lv");
	
	
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
										<a href="<%=request.getContextPath() %>/lecture/detail.do?lecId=<%=lv.getLecId() %>"><h4 class="mb-10"><%=lv.getLecTitle() %></h4></a>
									
										<div class="font-xs mt-15 mb-15"">
											<table width="100%" class="table table-bordered"
												style="text-align: center; border: 1px solid #dddddd">
												<tr>
													<th style="background-color: #eeeeee; text-align: center;">과목</th>
													<th style="background-color: #eeeeee; text-align: center;">제목</th>
													<th style="background-color: #eeeeee; text-align: center;">작성날짜</th>
												</tr>
												<%
													int qnaSize = moreQna.size();
												if (qnaSize > 0) {
													for (int i = 0; i < qnaSize; i++) {
												%>
												<tr>
													<td><%=lv.getLecTitle() %></td>
													<td><a href="<%=request.getContextPath() %>/moreQnaDetail.do?qnaNo=<%=moreQna.get(i).getQnaNo()%>&lecId=<%=lv.getLecId() %>"><%=moreQna.get(i).getQnaTitle()%></a></td>
													<td><%=moreQna.get(i).getQnaDate().substring(0,10)%></td>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
		
	<%@ include file="../footer.jsp" %>
</body>
</html>