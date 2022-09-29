<%@page import="freeboard.vo.FreeBoardVO"%>
<%@page import="lecreview.vo.LecReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	FreeBoardVO fv = (FreeBoardVO) request.getAttribute("fv");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시글 정보 상세</title>
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
                                        <h6 class="mb-10"><a href="<%=request.getContextPath() %>/freeboard/list.do">FreeBoard</a></h6>
                                        <h2 class="mb-10"><%=fv.getFreeTitle() %></h2>
                                        <div class="single-header-meta">
                                            <div class="entry-meta meta-1 font-xs mt-15 mb-15">
                                                <span class="post-by">By <%=fv.getMemMail() %></span>
                                                <span class="post-by">작성일 <%=fv.getFreeDate() %></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-content">
                                <div class="row">
                                    <div class="col-xl-10 col-lg-50 m-auto">
                                        <%=fv.getFreeContent() %>
                                        
                                        <!--Entry bottom-->
                                        <div class="entry-bottom mt-50 mb-30">
                                            <div class="tags w-50 w-sm-100">
                                              
                                              	 	
                                              	 	<a href="<%=request.getContextPath() %>/freeboard/list.do" rel="tag" class="hover-up btn btn-sm btn-rounded mr-10">목록</a>
	                                                <a href="<%=request.getContextPath() %>/freeboard/update.do?freenum=<%=fv.getFreeNum() %>" rel="tag" class="hover-up btn btn-sm btn-rounded mr-10">수정</a>
	                                                <a href="<%=request.getContextPath() %>/freeboard/delete.do?freenum=<%=fv.getFreeNum() %>" rel="tag" class="hover-up btn btn-sm btn-rounded mr-10">삭제</a>
													
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
<%@ include file="../footer.jsp" %>	
</body>
</html>