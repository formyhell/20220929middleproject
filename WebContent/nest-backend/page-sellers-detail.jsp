<%@page import="admin.vo.instructorVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	instructorVO instVO = (instructorVO) request.getAttribute("instVO");
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
        <main class="main-wrap">
        <%@ include file="../WEB-INF/jsp/backheader.jsp" %>
            <section class="content-main">
                <div class="content-header">
                    <h2 class="content-title"><%=instVO.getInstructorId() %> 선생님 상세보기</h2>
                    <div>
                        <a href="<%=request.getContextPath() %>/listSeller.do" class="btn btn-primary">목록보기</a>
                    </div>
                </div>
                <div class="card mb-4">
                    <header class="card-header">
                        <div class="row gx-3">
                            <div class="col-lg-4 col-md-6 me-auto">
                                <%=instVO.getInstructorId() %> 선생님
                            </div>
                        </div>
                    </header>
                    <!-- card-header end// -->
                    
                    
                    
                    
                    
                    
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                    <tr>
                                        <td>이메일</td>
                                        <td><%=instVO.getMemMail() %></td>
                                    </tr>
                                    <tr>
                                        <td>전화번호</td>
                                        <td><%=instVO.getTeachTel() %></td>
                                    </tr> 
                                    <tr>  
                                        <td>과목</td>
                                        <td><%=instVO.getTeachSubject()%></td>
                                    </tr> 
                                    <tr>  
                                        <td>소개</td>
                                        <td><%=instVO.getTeachIntrod() %></td>
                                    </tr> 
                                    <tr>  
                                        <td>LINK</td>
                                        <td><%=instVO.getTeachLink() %></td>
                                    </tr>
                            </table>
                            <!-- table-responsive.// -->
                        </div>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    <!-- card-body end// -->
                </div>
                <!-- card end// -->
            </section>
            <!-- content-main end// -->
            <footer class="main-footer font-xs">
                <div class="row pb-30 pt-15">
                    <div class="col-sm-6">
                        <script>
                            document.write(new Date().getFullYear());
                        </script>
                        &copy; DING - HTML Ecommerce Template .
                    </div>
                    <div class="col-sm-6">
                        <div class="text-sm-end">All rights reserved</div>
                    </div>
                </div>
            </footer>
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
