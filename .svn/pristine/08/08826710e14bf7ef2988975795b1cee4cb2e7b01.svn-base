<%@page import="notice.vo.noticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	noticeVO notiVO = (noticeVO) request.getAttribute("notiVO");
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
        <%@ include file="../WEB-INF/jsp/aside.jsp" %>
        <div class="screen-overlay"></div>
        <%@ include file="../WEB-INF/jsp/backheader.jsp" %>
    <main class="main">
        <div class="page-content mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 m-auto">
                        <div class="single-page pt-50 pr-30">
                            <div class="single-header style-2">
                                <div class="row">
                                    <div class="col-xl-10 col-lg-12 m-auto">
                                        <h6 class="mb-10">Notice</h6>
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
                                             
                                              	 	<a href="<%=request.getContextPath() %>/backlistNotice.do" rel="tag" class="btn btn-primary">목록</a>
	                                                <a href="<%=request.getContextPath() %>/updateNotice.do?noticeNum=<%=notiVO.getNoticeNum() %>" class="btn btn-primary">수정</a>
													<a href="<%=request.getContextPath() %>/deleteNotice.do?noticeNum=<%=notiVO.getNoticeNum() %>" class="btn btn-primary">삭제</a>
                                              	
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
</body>
</html>