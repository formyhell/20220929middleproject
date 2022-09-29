
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                                        <form action="<%=request.getContextPath() %>/insertNotice.do" method="post">
                                        <div class="single-header-meta">
	                                        <input class="form-control" type="text" name="noticeTitle" placeholder="제목을 입력하세요.">
                                        </div>
                                        <div class="font-xs mt-15 mb-15">
	                                        <textarea class="form-control" cols="125" rows="100" name="comentContent"></textarea>
                                        </div>
                                          <input type="submit" class="btn btn-primary" value="등록">
                                        </form>
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