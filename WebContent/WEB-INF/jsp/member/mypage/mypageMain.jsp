<%@page import="lecture.vo.LectureVO"%>
<%@page import="cart.vo.CartVO"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../../header.jsp" %>


        <div class="page-header mt-30 mb-50">
            <div class="container">
                <div class="archive-header">
                    <div class="row align-items-center">
                        <div class="col-xl-3">
                            <h1 class="mb-15">#마이페이지</h1>
                            <div class="breadcrumb">
                                <a href="index.html" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                                <span></span> 마이페이지
                            </div>
                        </div>
                        <div class="col-xl-9 text-end d-none d-xl-block">

                           <ul class="tags-list">
                                <li class="hover-up active">
                                    <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>내 강의실</a>
                                </li>
                                <li class="hover-up active">
                                    <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>비밀번호 수정</a>
                                </li>
                                <li class="hover-up">
                                    <a href="blog-category-grid.html"><i class="fi-rs-cross mr-10"></i>회원 탈퇴</a>
                                </li>
                            </ul>
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>


               <div class="col-lg-1-5 primary-sidebar sticky-sidebar">
                    <div class="sidebar-widget widget-category-2 mb-30">
                        <h5 class="section-title style-1 mb-30">Category</h5>
                        <ul>
                            <li>
                                <a href="shop-grid-right.html"> <img src="<%=request.getContextPath()%>/nest-frontend/<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/category-1.svg" alt="" />Milks & Dairies</a><span class="count">30</span>
                            </li>
                            <li>
                                <a href="shop-grid-right.html"> <img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/category-2.svg" alt="" />Clothing</a><span class="count">35</span>
                            </li>
                            <li>
                                <a href="shop-grid-right.html"> <img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/category-3.svg" alt="" />Pet Foods </a><span class="count">42</span>
                            </li>
                            <li>
                                <a href="shop-grid-right.html"> <img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/category-4.svg" alt="" />Baking material</a><span class="count">68</span>
                            </li>
                            <li>
                                <a href="shop-grid-right.html"> <img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/category-5.svg" alt="" />Fresh Fruit</a><span class="count">87</span>
                            </li>
                        </ul>
                    </div>

                </div>








<%-- <div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="<%=request.getContextPath() %>/MylectureList.do">수강신청 목록</a></p>
      <p><a href="<%=request.getContextPath() %>/MypagemodifyView.do">회원 정보 수정</a></p>
      <p><a href="<%=request.getContextPath() %>/DeleteformView.do">회원 탈퇴</a></p>
    </div> --%>
      

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
                                            <img class="default-img" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/product-1-1.jpg" alt="" />
                                            <img class="hover-img" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/product-1-2.jpg" alt="" />
                                        </a>
                                    </div>
                                    <div class="product-action-1">
                                        <a aria-label="Add To Wishlist" class="action-btn" href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                                        <a aria-label="Compare" class="action-btn" href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                        <a aria-label="Quick view" class="action-btn" data-bs-toggle="modal" data-bs-target="#quickViewModal"><i class="fi-rs-eye"></i></a>
                                    </div>
                                    <div class="product-badges product-badges-position product-badges-mrg">
                                        <span class="hot">Hot</span>
                                    </div>
                                </div>
                                <div class="product-content-wrap">
                                    <div class="product-category">
                                        <a href="shop-grid-right.html">Snack</a>
                                    </div>
                                    <h2><a href="shop-product-right.html"><%=lec.getLecId() %></a></h2>
                                    <div class="product-rate-cover">
                                        <div class="product-rate d-inline-block">
                                            <div class="product-rating" style="width: 90%"></div>
                                        </div>
                                        <span class="font-small ml-5 text-muted"> (4.0)</span>
                                    </div>
                                    <div>
                                        <span class="font-small text-muted">By <a href="vendor-details-1.html">NestFood</a></span>
                                    </div>
                                    <div class="product-card-bottom">
                                        <div class="product-price">
                                            <span>$28.85</span>
                                            <span class="old-price">$32.8</span>
                                        </div>
                                        <div class="add-cart">
                                            <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
      




      
      
<%=lec.getLecId() %>
<%=lec.getLecTitle() %>
<%=lec.getLecPrice() %>








<% 

		}

%>
      
      
      
      
      
    </div>
    
    

    
    
    
    
    
    
<!--     <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS수정</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div> -->
  </div>
</div>

<%@ include file="../../footer.jsp" %>

</body>
</html>