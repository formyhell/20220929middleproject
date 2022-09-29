<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%
	List<MemberVO> memList = (List<MemberVO>)request.getAttribute("memList");


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
        <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/assets/imgs/theme/favicon.svg" />
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
                    <div>
                        <h2 class="content-title card-title">회원 목록</h2>
                        <p>가입된 회원 목록입니다.</p>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body">
					<%
						int memSize = memList.size();
					if (memSize > 0) {
						for (int i = 0; i < memSize; i++) {
					%>
					<article class="itemlist">
                            <div class="row align-items-center">
                                <div class="col-lg-4 col-sm-4 col-8 flex-grow-1 col-name">
                                    <a class="itemside" href="#">
                                        <div class="left">
                                        </div>
                                        <div class="info" >
                                            <h6 class="mb-0"><%=memList.get(i).getMemMail() %></h6>
                                        </div>
                                    </a>
                                </div>
                                 <div class="col-lg-2 col-sm-2 col-4 col-price"></div>
                                <div class="col-lg-2 col-sm-2 col-4 col-status">
                                    <span class="badge rounded-pill alert-success"></span>
                                </div>
                                <div class="col-lg-1 col-sm-2 col-4 col-date">
                                </div>
                                <div class="col-lg-2 col-sm-2 col-4 col-action text-end">
                                    <a href="<%=request.getContextPath() %>/admin/delete.do?memId=<%=memList.get(i).getMemMail() %>" class="btn btn-sm font-sm btn-light rounded" style="float: right;"> <i class="material-icons md-delete_forever"></i> 삭제 </a>
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
