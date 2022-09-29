<%@page import="lecreview.vo.LecReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<LecReviewVO> lecReviewList = (List<LecReviewVO>)request.getAttribute("lecReviewList");


	String msg = session.getAttribute("msg") == null ? ""
			: (String) session.getAttribute("msg");
	session.removeAttribute("msg"); // 꺼내온 메세지 속성 제거하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰목록</title>
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
										<h2 class="mb-10">수강 후기</h2>
										<div>
											<form action="<%=request.getContextPath() %>/list.do" method="post">
												<input type="text" name="reTitle" placeholder="검색" onkeyup="javascript:if (event.keyCode == 13) addrSearchKey();">
											</form>
										</div>
											
										<div class="font-xs mt-15 mb-15"">
											<table width="100%" class="table table-bordered"
												style="text-align: center; border: 1px solid #dddddd">
												<tr>
													<th style="background-color: #eeeeee; text-align: center;">번호</th>
													<th style="background-color: #eeeeee; text-align: center;">강의제목</th>
													<th style="background-color: #eeeeee; text-align: center;">제목</th>
													<th style="background-color: #eeeeee; text-align: center;">별점</th>
													<th style="background-color: #eeeeee; text-align: center;">작성날짜</th>
												</tr>
												<%
													int lecReviewSize = lecReviewList.size();
													if(lecReviewSize > 0) {
														for(int i = 0; i < lecReviewSize; i++) {
												%>
												<tr>
													<td><%=lecReviewList.get(i).getReNum()%></td>
													<td><%=lecReviewList.get(i).getLecId()%></td>
													<td><a
														href="detail.do?reNum=<%=lecReviewList.get(i).getReNum()%>"><%=lecReviewList.get(i).getReTitle()%></a></td>
													<td><%=lecReviewList.get(i).getSatisfaction()%></td>
													<td><%=lecReviewList.get(i).getReDate()%></td>
												</tr>
												<%
													}
												}
												%>
		

											</table>
											<a href="<%=request.getContextPath() %>/lecreview/insert.do" rel="tag" class="hover-up btn btn-sm btn-rounded mr-10">글쓰기</a>
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