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
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>DING Dashboard</title>
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta property="og:title" content="" />
        <meta property="og:type" content="" />
        <meta property="og:url" content="" />
        <meta property="og:image" content="" />
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/nest-backend/assets/imgs/theme/favicon.svg" />
        <!-- Template CSS -->
        <link href="<%=request.getContextPath() %>/nest-backend/assets/css/main.css?v=1.1" rel="stylesheet" type="text/css" />
    </head>

    <body>
    	<div class="screen-overlay"></div>
        <%@ include file="../WEB-INF/jsp/aside.jsp" %>
        
	<%-- <jsp:include page="<%=request.getContextPath() %>/WEB-INF/jsp/header.jsp"> --%>
        <main class="main-wrap">
        <%@ include file="../WEB-INF/jsp/backheader.jsp" %>
            <section class="content-main">
		<div class="page-content mb-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 m-auto">
						<div class="single-page pt-50 pr-30">
							<div class="single-header style-2">
								<div class="row">
									<div class="col-xl-10 col-lg-12 m-auto">
										<h2 class="mb-10">공지사항</h2>
										<div class="row">
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
													<td><a href="<%=request.getContextPath() %>/backNoticeDetail.do?noticeNum=<%=noticeList.get(i).getNoticeNum()%>"><%=noticeList.get(i).getNoticeTitle()%></a></td>
													<td><%=noticeList.get(i).getNoticeDate().substring(0,10)%></td>
												</tr>
												<%
													}
												}
												%>
											</table>
											
											<form action="<%=request.getContextPath()%>/insertNotice.do">
												<input class="btn btn-primary" type="submit" value="작성">
											</form>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</main>
		<script src="<%=request.getContextPath() %>/nest-backend/assets/js/vendors/jquery-3.6.0.min.js"></script>
        <script src="<%=request.getContextPath() %>/nest-backend/assets/js/vendors/bootstrap.bundle.min.js"></script>
        <script src="<%=request.getContextPath() %>/nest-backend/assets/js/vendors/select2.min.js"></script>
        <script src="<%=request.getContextPath() %>/nest-backend/assets/js/vendors/perfect-scrollbar.js"></script>
        <script src="<%=request.getContextPath() %>/nest-backend/assets/js/vendors/jquery.fullscreen.min.js"></script>
        <!-- Main Script -->
        <script src="<%=request.getContextPath() %>/nest-backend/assets/js/main.js?v=1.1" type="text/javascript"></script>
</body>
</html>