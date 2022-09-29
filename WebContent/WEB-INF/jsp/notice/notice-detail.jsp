<%@page import="member.vo.MemberVO"%>
<%@page import="admin.vo.AdminVO"%>
<%@page import="notice.vo.noticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	noticeVO notiVO = (noticeVO) request.getAttribute("notiVO");
	AdminVO adVO = new AdminVO();
	MemberVO memVO = new MemberVO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
                                        <h6 class="mb-10"><a href="<%=request.getContextPath() %>/listNotice.do">Notice</a></h6>
                                        <h2 class="mb-10"><%=notiVO.getNoticeTitle() %></h2>
                                        <div class="single-header-meta">
                                            <div class="entry-meta meta-1 font-xs mt-15 mb-15">
                                                <span class="post-by">By <%=notiVO.getAdminId() %></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-content">
                                <div class="row">
                                    <div class="col-xl-10 col-lg-50 m-auto">
                                        <%=notiVO.getNoticeContent() %>
                       

											<!--Entry bottom-->
											<div class="entry-bottom mt-50 mb-30">
												<div class="tags w-50 w-sm-100">
                                              	 	<a href="<%=request.getContextPath() %>/listNotice.do" rel="tag" class="hover-up btn btn-sm btn-rounded mr-10">목록</a>
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
	
	
<script>

</script>
<%@ include file="../footer.jsp" %>
</body>
</html>