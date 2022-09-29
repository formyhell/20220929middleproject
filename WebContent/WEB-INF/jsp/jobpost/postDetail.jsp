<%@page import="member.vo.MemberVO"%>
<%@page import="admin.vo.AdminVO"%>
<%@page import="jobposting.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	PostVO pv = (PostVO) request.getAttribute("pv");
	AdminVO adVO = new AdminVO();
	MemberVO memVO = new MemberVO();
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
			<div class="page-content mb-50">
				<div class="container">
					<div class="row">
						<div class="col-lg-9 m-auto">
							<div class="single-page pt-50 pr-30">
								<div class="single-header style-2">
									<div class="row">
										<div class="col-xl-10 col-lg-12 m-auto">
											<h6 class="mb-10">
												<a href="<%=request.getContextPath()%>/listPost.do">채용공고</a>
											</h6>
											<h2 class="mb-10"><%=pv.getPostTitle()%></h2>
											<div class="single-header-meta">
												<div class="entry-meta meta-1 font-xs mt-15 mb-15">
													<a class="author-avatar" href="#"> <img
														class="img-circle" src="assets/imgs/blog/author-1.png"
														alt="">
													</a> <span class="post-by">By admin</span>
												</div>
												<div class="social-icons single-share">
													<ul class="text-grey-5 d-inline-block">
														<li class="mr-5"><a href="#"><img
																src="assets/imgs/theme/icons/icon-bookmark.svg" alt=""></a></li>
														<li><a href="#"><img
																src="assets/imgs/theme/icons/icon-heart-2.svg" alt=""></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="single-content">
									<div class="row">
										<div class="col-xl-10 col-lg-12 m-auto">
											<%=pv.getPostContent()%>

											<!--Entry bottom-->
											<div class="entry-bottom mt-50 mb-30">
												<div class="tags w-50 w-sm-100">
                                              	 	<a href="<%=request.getContextPath() %>/listPost.do" rel="tag" class="hover-up btn btn-sm btn-rounded mr-10">목록</a>
												</div>
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
</body>
</html>