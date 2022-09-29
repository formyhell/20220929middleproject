<%@page import="lecture.vo.LectureVO"%>
<%@page import="cart.vo.CartVO"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <title>마이페이지</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:title" content="" />
    <meta property="og:type" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/favicon.svg" />
    <!-- Template CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/nest-frontend/assets/css/plugins/slider-range.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/nest-frontend/assets/css/main.css?v=5.2" />
</head>

<body>
<%@ include file="../../header.jsp" %>

    <main class="main">
        <div class="page-header mt-30 mb-50">
            <div class="container">
                <div class="archive-header">
                    <div class="row align-items-center">
                        <div class="col-xl-3">
                            <h1 class="mb-15">#마이페이지</h1>
                            <div class="breadcrumb">
                                <a href="index.html" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                                <span></span>마이페이지
                            </div>
                        </div>
                        <div class="col-xl-9 text-end d-none d-xl-block">
                        
                           <ul class="tags-list">
                                <li class="hover-up active">
                                    <a href="<%=request.getContextPath() %>/MylectureList.do"><i class="fi-rs-cross mr-10"></i>내 강의실</a>
                                </li>
                                <li class="hover-up">
                                    <a href="<%=request.getContextPath() %>/MypagemodifyView.do"><i class="fi-rs-cross mr-10"></i>비밀번호 수정</a>
                                </li>
                                <li class="hover-up">
                                    <a href="<%=request.getContextPath() %>/DeleteformView.do"><i class="fi-rs-cross mr-10"></i>회원 탈퇴</a>
                                </li>
                            </ul>
                        
  
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mb-30">
            <div class="row flex-row-reverse">
                <div class="col-lg-4-5">
                    <div class="shop-product-fillter">
<!--                         <div class="totall-product">
                            <p>We found <strong class="text-brand">29</strong> items for you!</p>
                        </div> -->

                    </div>
                    <div class="row product-grid">
                    
                    
 <%
	List<LectureVO> orderList = (List<LectureVO>)request.getAttribute("orderList");
			
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg"); // 꺼내온 메시지 속성 제거하기
	// 알림창 뜨면서 삭제 처리된다.
		for(int i = 0; i < orderList.size(); i++) {
			LectureVO lec = orderList.get(i);
%>
                    
                        <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
                            <div class="product-cart-wrap mb-30">
                                <div class="product-img-action-wrap">
                                    <div class="product-img product-img-zoom">
                                        <a href="shop-product-right.html">
                                            <img class="default-img" src="<%=request.getContextPath()%>/nest-frontend/dingimage/mypage.png" alt="" />
                                            <img class="hover-img" src="<%=request.getContextPath()%>/nest-frontend/dingimage/mypage.png" alt="" />
                                        </a>
                                    </div>
<!--                                     <div class="product-action-1">
                                        <a aria-label="Add To Wishlist" class="action-btn" href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                        <a aria-label="Compare" class="action-btn" href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        <a aria-label="Quick view" class="action-btn" data-bs-toggle="modal" data-bs-target="#quickViewModal"><i class="fi-rs-eye"></i></a>
                                    </div> -->
                                    <div class="product-badges product-badges-position product-badges-mrg">
                                        <span class="hot">수강중</span>
                                    </div>
                                </div>
                                <div class="product-content-wrap">
                                    <div class="product-category">
                                        <a href="shop-grid-right.html">임시</a>
                                    </div>
                                    <h2><a href="<%=request.getContextPath()%>/lecture/detail.do?lecId=<%=lec.getLecId()%>"><%=lec.getLecTitle() %></a></h2>
<!--                                     <div class="product-rate-cover">
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 90%"></div>
                                        </div>
                                        <span class="font-small ml-5 text-muted"> (4.0)</span>
                                    </div> -->
                                    <div>
                                        <span class="font-small text-muted">By <a href="vendor-details-1.html"><%=lec.getInstructorId() %></a></span>
                                    </div>
                                    <div class="product-card-bottom">
                                        <div class="product-price">
                                            <span>￦<%=lec.getLecPrice()%></span>
                                            <span class="old-price">￦<%=(lec.getLecPrice())*100 %></span>
                                        </div>
<!--                                         <div class="add-cart">
                                            <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        

<% 

		}

%>
                        
                        
                    </div>
                    <!--product grid-->
                    
                    <!-- 페이징 번호 -->
<!--                     <div class="pagination-area mt-20 mb-20">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-start">
                                <li class="page-item">
                                    <a class="page-link" href="#"><i class="fi-rs-arrow-small-left"></i></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link dot" href="#">...</a></li>
                                <li class="page-item"><a class="page-link" href="#">6</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><i class="fi-rs-arrow-small-right"></i></a>
                                </li>
                            </ul>
                        </nav>
                    </div> -->

                </div>
                
                <!-- 사이드 메뉴 -->
             <%--    <div class="col-lg-1-5 primary-sidebar sticky-sidebar">
                    <div class="sidebar-widget widget-category-2 mb-30">
                        <h5 class="section-title style-1 mb-30">Side Menu</h5>
                        <ul>
                            <li>
                                <a href="<%=request.getContextPath() %>/MylectureList.do"> 내 강의실</a><span class="count"><%=orderList.size() %></span>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath() %>/listWishlist.do"> 위시리스트</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath() %>/MypagemodifyView.do"> 비밀번호 수정 </a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath() %>/DeleteformView.do"> 회원 탈퇴 </a>
                            </li>
                        </ul>
                    </div> --%>

                </div>
            </div>
        </div>
    </main>
   
    <!-- Vendor JS-->
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/slick.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/jquery.syotimer.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/wow.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/slider-range.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/perfect-scrollbar.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/magnific-popup.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/select2.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/waypoints.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/counterup.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/jquery.countdown.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/images-loaded.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/isotope.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/scrollup.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/jquery.vticker-min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/jquery.theia.sticky.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/plugins/jquery.elevatezoom.js"></script>
    <!-- Template  JS -->
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/main.js?v=5.2"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/shop.js?v=5.2"></script>
</body>

</html>