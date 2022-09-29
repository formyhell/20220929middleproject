<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="lecture.vo.LectureVO"%>
<%@page import="java.util.List"%>
<%
	List<LectureVO> lecList = (List<LectureVO>)request.getAttribute("lecList");


	String msg = session.getAttribute("msg") == null ? ""
			: (String) session.getAttribute("msg");
	session.removeAttribute("msg"); // 꺼내온 메세지 속성 제거하기
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>위시리스트</title>
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta property="og:title" content="" />
        <meta property="og:type" content="" />
        <meta property="og:url" content="" />
        <meta property="og:image" content="" />
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/imgs/theme/favicon.svg" />
        <!-- Template CSS -->
        <link href="nest-backend/assets/css/main.css?v=1.1" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div class="screen-overlay"></div>
        <main class="main-wrap">
        <%@ include file="header.jsp" %>
            <section class="content-main">
                <div class="content-header">
                    <div>
                        <h2 class="content-title card-title">승인요청 페이지</h2>
                        <p>승인요청 대기 중인 강의들입니다.</p>
                    </div>
                </div>
                <div class="card mb-4">
                    <header class="card-header">
                        <div class="row align-items-center">
                            <div class="col-md-3 col-12 me-auto mb-md-0 mb-3">
                                <select class="form-select">
                                    <option selected>All category</option>
                                    <option>Electronics</option>
                                    <option>Clothes</option>
                                    <option>Automobile</option>
                                </select>
                            </div>
                        </div>
                    </header>
                    <!-- card-header end// -->
                    <div class="card-body">
					<%
						int lecSize = lecList.size();
					if (lecSize > 0) {
						for (int i = 0; i < lecSize; i++) {
					%>
					<article class="itemlist">
                            <div class="row align-items-center">
                                <div class="col-lg-4 col-sm-4 col-8 flex-grow-1 col-name">
                                    <a class="itemside" href="#">
                                        <div class="left">
                                            <img src="<%=request.getContextPath()%>/images/poo.jpg" class="img-sm img-thumbnail" alt="Item" />
                                        </div>
                                        <div class="info">
                                            <h6 class="mb-0"><%=lecList.get(i).getLecId() %></h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-4 col-price"><%=lecList.get(i).getLecTitle()%></div>
                                <div class="col-lg-2 col-sm-2 col-4 col-status">
                                    <span class="badge rounded-pill alert-success"><%=lecList.get(i).getApprove()%></span>
                                </div>
                                <div class="col-lg-1 col-sm-2 col-4 col-date">
                                    <span><a href="detail.do?lecId=<%=lecList.get(i).getLecId()%>"><%=lecList.get(i).getInstructorId()%></a></span>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-4 col-action text-end">
                                    <a href="<%= request.getContextPath() %>/approveUpdate.do?lecId=<%=lecList.get(i).getLecId()%>" class="btn btn-sm font-sm rounded btn-brand"> <i class="material-icons md-edit"></i> 승인 </a>
                                    <a href="#" class="btn btn-sm font-sm btn-light rounded"> <i class="material-icons md-delete_forever"></i> 삭제 </a>
                                </div>
                            </div>
                            <!-- row .// -->
                        </article>
					<%
						}
					} else {
					%>
					<tr>
						<td colspan="4">강의정보가 없습니다.</td>
					</tr>
					<%
						}
					%>

					</table>

					<%
						if (msg.equals("성공")) {
					%>
					<script>
						alert('정상적으로 처리되었습니다.');
					</script>
					<%
	}
%>
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
        <script src="<%=request.getContextPath() %>/nest-backend/assets/js/main.js" type="text/javascript"></script>
    </body>
</html>
