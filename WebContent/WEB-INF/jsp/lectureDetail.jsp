<%@page import="qna.vo.qnaVO"%>
<%@page import="lecreview.vo.LecReviewVO"%>
<%@page import="lecture.file.vo.AtchFileVO"%>
<%@page import="lecture.vo.LectureVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	LectureVO lv = (LectureVO) request.getAttribute("lv");

	List<LecReviewVO> lecReviewList = (List<LecReviewVO>)request.getAttribute("lecReviewList");

	AtchFileVO atchFile = (AtchFileVO) request.getAttribute("atchFile");
	
	List<qnaVO> qnaList = (List<qnaVO>) request.getAttribute("qnaList");
	
%>         
<!DOCTYPE html>
<html class="no-js" lang="en">
<script>
function changeColor(color)
{
 	document.bgColor = color;
}
</script>
<head>
    <meta charset="utf-8" />
    <title>Nest - Multipurpose eCommerce HTML Template</title>
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
<style>
#myform fieldset{
    display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; 
    border: 0; /* 필드셋 테두리 제거 */
}
#myform input[type=radio]{
    display: none; /* 라디오박스 감춤 */
}
#myform label{
    font-size: 2em; /* 이모지 크기 */
    color: transparent; /* 기존 이모지 컬러 제거 */
    text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}

#myform label:hover{
    text-shadow: 0 0 0 #fdd853; /* 마우스 호버 */
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 #fdd853; /* 마우스 호버 뒤에오는 이모지들 */
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 #fdd853; /* 마우스 클릭 체크 */
}

/* 
media (min-width: 768px) */
.col-md-6 {
    flex: 0 0 auto;
    width: 100% !important;
}



</style>
</head>
<script>
function addToCart(el){
    // 확인 true 취소 false
    if(confirm("장바구니에 추가하시겠습니까?")){ // 확인
       el.form.submit();
       //document.addForm.submit();
    }else{ // 취소
       el.form.reset();
    }
 }
</script>
<body class="single-product">
<!-- 헤더 위치 -->
  <%@ include file="header.jsp" %>
    <!-- Quick view -->
 
                    <div class="header-action-icon-2 d-block d-lg-none">
                        <div class="burger-icon burger-icon-white">
                            <span class="burger-icon-top"></span>
                            <span class="burger-icon-mid"></span>
                            <span class="burger-icon-bottom"></span>
                        </div>
                    </div>
                    <div class="header-action-right d-block d-lg-none">
                        <div class="header-action-2">
                            <div class="header-action-icon-2">
                                <a href="#">
                                    <img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-heart.svg" />
                                    <span class="pro-count white">4</span>
                                </a>
                            </div>
                            <div class="header-action-icon-2">
                                <a class="mini-cart-icon" href="shop-cart.html">
                                    <img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-cart.svg" />
                                    <span class="pro-count white">2</span>
                                </a>
                                <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                    <ul>
                                        <li>
                                            <div class="shopping-cart-img">
                                                <a href="shop-product-right.html"><img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/thumbnail-3.jpg" /></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="shop-product-right.html">Plain Striola Shirts</a></h4>
                                                <h3><span>1 × </span>$800.00</h3>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="fi-rs-cross-small"></i></a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="shopping-cart-img">
                                                <a href="shop-product-right.html"><img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/thumbnail-4.jpg" /></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="shop-product-right.html">Macbook Pro 2022</a></h4>
                                                <h3><span>1 × </span>$3500.00</h3>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="fi-rs-cross-small"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="shopping-cart-footer">
                                        <div class="shopping-cart-total">
                                            <h4>Total <span>$383.00</span></h4>
                                        </div>
                                        <div class="shopping-cart-button">
                                            <a href="shop-cart.html">View cart</a>
                                            <a href="shop-checkout.html">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!--End header-->
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="index.html" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                    <span></span> <a href="/lecture/list.do">강의</a> <span></span> 자바스크립트/JSP
                </div>
            </div>
        </div>
        <div class="container mb-30">
            <div class="row">
                <div class="col-xl-11 col-lg-12 m-auto">
                   <!--  <div class="row"> -->
                        <div class="col-xl-9">
                            <div class="product-detail accordion-detail">
                                <div class="row mb-50 mt-30">
                                    <div class="col-md-6 col-sm-12 col-xs-12 mb-md-0 mb-sm-5">
                                        <div class="detail-gallery">
                                            
                                            <!-- MAIN SLIDES -->
                                            <div class="product-image-slider">
                                                <figure class="border-radius-10">
                                                    <video height="620" width="800" controls src="<%=request.getContextPath()%>/movie/videoView.do?filename=<%=atchFile.getStreFileNm() %>.<%=atchFile.getFileExtsn() %>"></video>
                                                </figure>
                                            </div>


                                        </div>
                                        <!-- End Gallery -->
                                    </div>
                                    <div class="col-md-6 col-sm-12 col-xs-12">
                                        <div class="detail-info pr-30 pl-30">
                                            <span class="stock-status out-stock"> 인기 </span>
                                            <h2 class="title-detail"><%=lv.getLecTitle() %></h2>
                                            <div class="product-detail-rating">
                                                <div class="product-rate-cover text-end">
                                                    <div class="product-rate d-inline-block">
                                                        <div class="product-rating" style="width: 90%"></div>
                                                    </div>
                                                    <span class="font-small ml-5 text-muted"></span>
                                                </div>
                                            </div>
                                            <div class="clearfix product-price-cover">
                                                <div class="product-price primary-color float-left">
                                                    <span class="current-price text-brand">￦<%=lv.getLecPrice() %></span>
                                                    <span>
                                                        
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="short-desc mb-30">
                                                <p class="font-lg"><%=lv.getLecIntro() %></p>
                                            </div>
                                            <div class="attr-detail attr-size mb-30">
                                                
                                            </div>
                                 
                                                <div class="product-extra-link2">
                                                    <form id="addForm" name="addForm" method="get" action="<%=request.getContextPath()%>/addCart.do">
                                                    <button type="submit" class="button button-add-to-cart">수강신청 하기</button>
                                                    <button class="button button-add-to-cart" onclick="addToCart(this)"><i class="fi-rs-shopping-cart mr-5"></i>Add</button> <br><br>
                                                    </form>
                                                    <a onclick="" aria-label="Add To Wishlist" class="action-btn hover-up" href="<%=request.getContextPath() %>/insertWishlist.do?lecId=<%=lv.getLecId() %>"><i class="fi-rs-heart"></i></a>
                                                    <a aria-label="Compare" class="action-btn hover-up" href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                                                </div>
                                            </div>
                                          
                                        <!-- Detail Info -->
                                    </div>
                                </div>
                                <div class="product-info">
                                    <div class="tab-style3">
                                        <ul class="nav nav-tabs text-uppercase">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="Description-tab" data-bs-toggle="tab" href="#Description">강의소개</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="Additional-info-tab" data-bs-toggle="tab" href="#Additional-info">커리큘럼</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="Reviews-tab" data-bs-toggle="tab" href="#Reviews">수강평</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="qna-tab" data-bs-toggle="tab" href="#Qna">강의 질문</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content shop_info_tab entry-main-content">
                                            <div class="tab-pane fade show active" id="Description">
                                                <div class="">
                                                    <p><%=lv.getLecIntro() %></p>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="Additional-info">
                                                <div>
                                                	<p><%=lv.getLecCurri() %></p>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="Vendor-info">
                                                <div class="vendor-logo d-flex mb-30">
                                                    <img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/vendor/vendor-18.svg" alt="" />
                                                    <div class="vendor-name ml-15">
                                                        <h6>
                                                            <a href="vendor-details-2.html">Noodles Co.</a>
                                                        </h6>
                                                        <div class="product-rate-cover text-end">
                                                            <div class="product-rate d-inline-block">
                                                                <div class="product-rating" style="width: 90%"></div>
                                                            </div>
                                                            <span class="font-small ml-5 text-muted"> (32 reviews)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <ul class="contact-infor mb-50">
                                                    <li><img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-location.svg" alt="" /><strong>Address: </strong> <span>5171 W Campbell Ave undefined Kent, Utah 53127 United States</span></li>
                                                    <li><img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-contact.svg" alt="" /><strong>Contact Seller:</strong><span>(+91) - 540-025-553</span></li>
                                                </ul>
                                                <div class="d-flex mb-55">
                                                    <div class="mr-30">
                                                        <p class="text-brand font-xs">Rating</p>
                                                        <h4 class="mb-0">92%</h4>
                                                    </div>
                                                    <div class="mr-30">
                                                        <p class="text-brand font-xs">Ship on time</p>
                                                        <h4 class="mb-0">100%</h4>
                                                    </div>
                                                    <div>
                                                        <p class="text-brand font-xs">Chat response</p>
                                                        <h4 class="mb-0">89%</h4>
                                                    </div>
                                                </div>
                                                <p>
                                                    Noodles & Company is an American fast-casual restaurant that offers international and American noodle dishes and pasta in addition to soups and salads. Noodles & Company was founded in 1995 by Aaron Kennedy and is headquartered in Broomfield, Colorado. The company went public in 2013 and recorded a $457 million revenue in 2017.In late 2018, there were 460 Noodles & Company locations across 29 states and Washington, D.C.
                                                </p>
                                            </div>
                                            <div class="tab-pane fade" id="Reviews">
                                                <!--Comments-->
                                                <div class="comments-area">
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <h4 class="mb-30">수강 후기</h4>
                                                            <div class="comment-list">
<% 



String msg = session.getAttribute("msg") == null ? ""
		: (String) session.getAttribute("msg");
session.removeAttribute("msg"); // 꺼내온 메세지 속성 제거하기

for(int i = 0; i < lecReviewList.size(); i++) {
	LecReviewVO lecReview = lecReviewList.get(i);
%>

                                                                <div class="single-comment justify-content-between d-flex mb-30">
                                                                    <div class="user justify-content-between d-flex">
                                                                        <div class="thumb text-center">
                                                                            <%-- <img src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/blog/author-2.png" alt="" /> --%>
                                                                            <a href="#" class="font-heading text-brand"><%=lv.getLecTitle() %></a>
                                                                        </div>
                                                                        <div class="desc">
                                                                            <div class="d-flex justify-content-between mb-10">
                                                                                <div class="d-flex align-items-center">
                                                                                    <span class="font-xs text-muted"><%=lecReviewList.get(i).getReDate() %></span>
                                                                                </div>
                                                                                <div class="product-rate d-inline-block">
                                                                                    <div class="product-rating" style="width: 100%"></div>
                                                                                </div>
                                                                            </div>
                                                                            <a href="<%=request.getContextPath() %>/lecreview/Detail.do?reNum=<%=lecReviewList.get(i).getReNum() %>&lecId=<%=lecReviewList.get(i).getLecId() %>" class="mb-10"><%=lecReviewList.get(i).getReContent() %>Reply</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <%} %>  
                                                            </div>
                                                        </div>
                                                        <!-- <div class="col-lg-4">
                                                            <h4 class="mb-30">Customer reviews</h4>
                                                            <div class="d-flex mb-30">
                                                                <div class="product-rate d-inline-block mr-15">
                                                                    <div class="product-rating" style="width: 90%"></div>
                                                                </div>
                                                                <h6>4.8 out of 5</h6>
                                                            </div>
                                                            <div class="progress">
                                                                <span>5 star</span>
                                                                <div class="progress-bar" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                                                            </div>
                                                            <div class="progress">
                                                                <span>4 star</span>
                                                                <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                                                            </div>
                                                            <div class="progress">
                                                                <span>3 star</span>
                                                                <div class="progress-bar" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">45%</div>
                                                            </div>
                                                            <div class="progress">
                                                                <span>2 star</span>
                                                                <div class="progress-bar" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">65%</div>
                                                            </div>
                                                            <div class="progress mb-30">
                                                                <span>1 star</span>
                                                                <div class="progress-bar" role="progressbar" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">85%</div>
                                                            </div>
                                                            <a href="#" class="font-xs text-muted">How are ratings calculated?</a>
                                                        </div> -->
                                                    </div>
                                                </div>
                                                <!--comment form-->
 <%
 
 %>                                               
                                                <div class="comment-form">
                                                    <h4 class="mb-15">수강 후기 작성</h4>
													<form name="myform" id="myform" method="post" action="<%= request.getContextPath() %>/lecture/insert.do?lecId=<%=lv.getLecId()%>">
														<fieldset>
															<input type="radio" name="satisfation" value="5" id="rate1"><label for="rate1">⭐</label> 
															<input type="radio" name="satisfation" value="4" id="rate2"><label for="rate2">⭐</label>
															<input type="radio" name="satisfation" value="3" id="rate3"><label for="rate3">⭐</label>
															<input type="radio" name="satisfation" value="2" id="rate4"><label for="rate4">⭐</label>
															<input type="radio" name="satisfation" value="1" id="rate5"><label for="rate5">⭐</label>
														</fieldset>
													<br>
													<div class="row">
                                                        <div class="col-lg-8 col-md-12">
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <div class="form-group">
                                                                            <input class="form-control" name="reTitle" id="title" type="text" placeholder="제목을 입력하세요" />
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12">
                                                                        <div class="form-group">
                                                                            <textarea class="form-control w-100" name="reContent" id="content" cols="30" rows="9" placeholder="내용을 입력하세요"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
																<div class="form-group">
                                                                    <button type="submit" class="button button-contactForm">후기 작성</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            <div class="tab-pane fade" id="Qna">
                                                <!--Comments-->
                                                <div class="comments-area">
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <h4 class="mb-30">질문</h4>
                                                            <%
                                                            	int qnaSize = qnaList.size();
                                                            	if (qnaSize > 0) {
                                                            		for(int i = 0; i < qnaSize; i++) {
                                                            			
                                                            %>
                                                            <div class="comment-list">
                                                                <div class="single-comment justify-content-between d-flex mb-30">
                                                                    <div class="user justify-content-between d-flex">
                                                                        <div class="thumb text-center">
                                                                        	
                                                                        </div>
                                                                        <div class="desc">
                                                                            <div class="d-flex justify-content-between mb-10">
                                                                                <div class="d-flex align-items-center">
                                                                                    <span class="font-xs text-muted"><%=lv.getLecTitle() %></span>
                                                                                </div>
                                                                                <div>
                                                                                    <span class="font-xs text-muted"><%=qnaList.get(i).getQnaDate() %></span>
                                                                                </div>
                                                                            </div>
                                                                            <a href="<%=request.getContextPath() %>/moreQnaDetail.do?qnaNo=<%=qnaList.get(i).getQnaNo() %>&lecId=<%=qnaList.get(i).getLectureId() %>" class="mb-10"><%=qnaList.get(i).getQnaTitle() %></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                              <%
                                                              		}
                                                            	}
                                                              %>
                                                            </div>
                                                        </div>
			                                        </div>
			                                </div>
			                                <div class="form-group">
                                                 <a href="<%=request.getContextPath() %>/moreQna.do?lecId=<%=lv.getLecId() %>" class="button button-contactForm">더보기</a>
                                                 <a href="<%=request.getContextPath() %>/insertQna.do?lecId=<%=lv.getLecId() %>" class="button button-contactForm">질문하기</a>
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

        
      
    <!-- 푸터 위치 -->
  	<%@ include file="footer.jsp" %>
    <!-- Vendor JS-->
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/nest-frontend/assets/js/vendor/bootstrap.bundle.min.js"></script>
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

<script>
function addWish(){
	alert('추가되었습니다')
}
</script>

</body>

</html>