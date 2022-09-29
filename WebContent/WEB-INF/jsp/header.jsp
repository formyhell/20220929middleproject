<%@page import="lecture.vo.LectureVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
 
	<!-- jQuery Modal. 모달 창을 위한 스크립트 소스-->
	
	<!-- Remember to include jQuery :) -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
	
	<!-- 헤더 이상한부분 있어서 추가함 (5/19 오후 6시 15분경) -->
	
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/nest-frontend/assets/css/plugins/animate.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/nest-frontend/assets/css/main.css?v=5.2" />
	
	<!-- 헤더부분 추가 끝 -->
	
	
<style>

.header-action-2 .header-action-icon-2:last-child {
    padding: 0 0px 0 0px !important;
}



</style>	
	
	
</head>
<body>

  <header class="header-area header-style-1 header-height-2">
  
        <div class="header-bottom header-bottom-bg-color sticky-bar">
            <div class="container">
                <div class="header-wrap header-space-between position-relative">

                    <div class="header-nav d-none d-lg-flex">
                    
                        <div class="logo logo-width-1">
                        <a href="<%=request.getContextPath()%>/index.do"><img src="<%=request.getContextPath()%>/nest-frontend/dingImage/dingding2.png" alt="logo" /></a>
                    	</div>
                        <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                            <nav>
                                <ul>
                                
  									<li>
                                        <a href="<%=request.getContextPath()%>/lecture/list.do">강의 <i class="fi-rs-angle-down"></i></a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="#">개발 · 프로그래밍<i class="fi-rs-angle-right"></i></a>
                                                <ul class="level-menu">
                                                    <li><a href="<%=request.getContextPath()%>/lecture/list2.do">Java</a></li>
                                                    <li><a href="shop-product-left.html">Python</a></li>
                                                    <li><a href="shop-product-full.html">JavaScript</a></li>
                                                    <li><a href="shop-product-vendor.html">C++</a></li>
                                                    <li><a href="shop-product-vendor.html">Spring</a></li>
                                                    <li><a href="shop-product-vendor.html">HTML/CSS</a></li>
                                                </ul>
                                            </li>
                                            <!-- menu 잠시 주석 처리 중~ -->
<%--                                             <li><a href="shop-filter.html">Shop – Filter</a></li>
                                            <li><a href="shop-wishlist.html">Shop – Wishlist</a></li>
                                            <li><a href="<%=request.getContextPath()%>/cart.do">Shop – Cart</a></li>
                                            <li><a href="<%=request.getContextPath()%>/cart.do">Shop – Checkout</a></li>
                                            <li><a href="shop-compare.html">Shop – Compare</a></li>
                                            <li>
                                                <a href="#">Shop Invoice<i class="fi-rs-angle-right"></i></a>
                                                <ul class="level-menu">
                                                    <li><a href="shop-invoice-1.html">Shop Invoice 1</a></li>
                                                    <li><a href="shop-invoice-2.html">Shop Invoice 2</a></li>
                                                    <li><a href="shop-invoice-3.html">Shop Invoice 3</a></li>
                                                    <li><a href="shop-invoice-4.html">Shop Invoice 4</a></li>
                                                    <li><a href="shop-invoice-5.html">Shop Invoice 5</a></li>
                                                    <li><a href="shop-invoice-6.html">Shop Invoice 6</a></li>
                                                </ul>
                                            </li> --%>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="<%=request.getContextPath() %>/listQna.do">커뮤니티<i class="fi-rs-angle-down"></i></a>
                                        <ul class="sub-menu">
                                            <li><a href="<%=request.getContextPath() %>/listQna.do">질문 & 답변</a></li>
                                            <li><a href="<%=request.getContextPath()%>/freeboard/list.do">자유주제</a></li>
                                        </ul>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=request.getContextPath()%>/listPost.do">채용공고</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=request.getContextPath() %>/listNotice.do">공지사항</a>
                                    </li>
                                  
                                </ul>
                            </nav>
                        </div>
                    </div>
                  
		<!-- 로그인, 로그아웃 하면 바뀌는 메뉴 -->
		
        <% 
        String memMail = (String)session.getAttribute("memMail");
        String thYn = (String)session.getAttribute("thYn");
        %>

                        <div class="header-action-right">

                        
                            
                            
<%-- 카트부분                                <div class="header-action-icon-2">
                                    <a href="shop-wishlist.html">
                                        <img class="svgInject" alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-heart.svg" />
                                        <span class="pro-count blue">6</span>
                                    </a>
                                    <a href="shop-wishlist.html"><span class="lable">Wishlist</span></a>
                                </div>
                                <div class="header-action-icon-2">
                                    <a class="mini-cart-icon" href="<%=request.getContextPath()%>/cart.do">
                                        <img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-cart.svg" />
                                        <span class="pro-count blue">2</span>
                                    </a>
                                    <a href="<%=request.getContextPath()%>/cart.do"><span class="lable">Cart</span></a>
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                        <ul>
                                            <li>
                                                <div class="shopping-cart-img">
                                                    <a href="shop-product-right.html"><img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/thumbnail-3.jpg" /></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h4><a href="shop-product-right.html">Daisy Casual Bag</a></h4>
                                                    <h4><span>1 × </span>$800.00</h4>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="fi-rs-cross-small"></i></a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="shopping-cart-img">
                                                    <a href="shop-product-right.html"><img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/thumbnail-2.jpg" /></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h4><a href="shop-product-right.html">Corduroy Shirts</a></h4>
                                                    <h4><span>1 × </span>$3200.00</h4>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="fi-rs-cross-small"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="shopping-cart-footer">
                                            <div class="shopping-cart-total">
                                                <h4>Total <span>$4000.00</span></h4>
                                            </div>
                                            <div class="shopping-cart-button">
                                                <a href="<%=request.getContextPath()%>/cart.do" class="outline">View cart</a>
                                                <a href="<%=request.getContextPath()%>/cart.do">Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> --%>
                               
                               <!-- 로그인 -->
                                
        <% 
        if (memMail == null) {
        %>
        <!-- 로그인 하기 전 헤더 화면 -->
                                
                       <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                            <nav>
                                <ul>
                              
                                    <li>
                                        <a href="<%=request.getContextPath() %>/LoginView.do" rel="modal:open">로그인</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=request.getContextPath() %>/InsertformView.do">회원가입</a>
                                    </li>
                                </ul>
							</nav>
                        </div>
        <!-- 로그인 한 후(강사회원) 헤더 화면 (구현 예정) -->
        <!-- } else if (thYn.equals("Y")) { [memVO에 강사회원여부 넣고..  th_yn = Y면 뜨는 메뉴 (강의 추가만 추가하면 될듯..)->
        <!-- 로그아웃 마이페이지 장바구니 강의업로드-->
        
        
        <!-- 관리자 로그인 후 헤더 화면 -->
        <!-- } else if (adminId.equals("admin")) {  (AdminVO 값 받아와서.. admin 아이디가 admin이면 뜨게 하는 메뉴 -->                
        <!-- 관리자 페이지 ㄱㄱ -->
                        
                        
        <% 
        } else {
        %>
        <!-- 로그인 한 후(일반회원) 헤더 화면 -->
        
                        <div class="main-menu main-menu-padding-1 main-menu-lh-2 d-none d-lg-block font-heading">
                            <nav>
                                <ul>
        
                                    <li>
                                        <a href="<%=request.getContextPath() %>/member/logout.do">로그아웃</a>
                                    </li>
                                    
                                    <li>
                                        <a href="<%=request.getContextPath() %>/MylectureList.do">마이페이지</a>
                                    </li>
                                  
                                    <!-- 지영아 여기가 장바구니 시작이야 -->
                                    
                                    <li>
                                    
                               <div class="header-action-2">
                                <div class="header-action-icon-2">
                                    
                                        <a href="<%=request.getContextPath()%>/cart.do"><span class="lable">장바구니</span></a>
                                        
                                    <div class="cart-dropdown-wrap cart-dropdown-hm2">
                                        <ul>
                              <%
                                 ArrayList<LectureVO> cartList = (ArrayList<LectureVO>)session.getAttribute("cartlist");
                                    //out.print("cartList크기: "+ cartList.size());
                                    if(cartList == null){
                                       cartList = new ArrayList<LectureVO>();
                                    }
                                    int sum = 0; 
                                    for(int i=0; i<cartList.size(); i++){
                                       LectureVO lec = cartList.get(i);
                                       // 소계 = 가격 * 수량
                                       int total = lec.getLecPrice();
                                       sum = sum + total;
                              %>                                      
                                  			<li>
<!--                                                 <div class="shopping-cart-img"> -->
<%--                                                     <a href="shop-product-right.html"><img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/thumbnail-3.jpg" /></a> --%>
<!--                                                 </div> -->
                                                <div class="shopping-cart-title">
                                                    <h4><a href="shop-product-right.html"><%=lec.getLecTitle()%></a></h4>
                                                    <h4><%=lec.getLecPrice() %></h4>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="<%=request.getContextPath()%>/cart/cartDelete.do?i=<%=i %>"><i class="fi-rs-cross-small"></i></a>
                                                </div>
                                            </li>         
                                                       
								<%
								      }
								%>                                            
                                        </ul>
                                        
                                        <div class="shopping-cart-footer">
                                            <div class="shopping-cart-total">
                                                <h4>Total <span><%=sum %></span></h4>
                                            </div>
                                            <div class="shopping-cart-button">
                                                <a href="<%=request.getContextPath()%>/cart.do" class="outline">View cart</a>
                                            </div>
                                        </div>
                                    </div>
                                        
                                        <!-- 지영아 여기가 장바구니 끝이야 -->
                                        
                                    </li>
                                    
                                    <%
                                    
                                    if (thYn.equals("N")) {
                                    
                                    %>
                                    
                                    <li>
                                        <a href="<%=request.getContextPath() %>/TeacherApplyView.do">강사신청</a>
                                    </li>
                                    
                                    <%
                                    
                                    } else if (thYn.equals("Y")) {
                                    
                                    %>
                                    
                                    <li>
                                        <a href="<%=request.getContextPath() %>/lecture/insert.do">강의등록</a>
                                    </li>
                                    
                                    <% 
                                    
                                    }
                                    
                                    %>

        <% 
        }
        %>
                                </ul>
                            </nav>
                        </div>
                            
                            </div>
                        </div>
                    </div> <!-- <div class="header-action-right"> 메뉴 끝 -->
                    
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
                                <a href="shop-wishlist.html">
                                    <img alt="Nest" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/theme/icons/icon-heart.svg" />
                                    <span class="pro-count white">4</span>
                                </a>
                            </div>
                            <div class="header-action-icon-2">
                                <a class="mini-cart-icon" href="#">
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
                                            <a href="<%=request.getContextPath()%>/cart.do">View cart</a>
                                            <a href="<%=request.getContextPath()%>/cart.do">Checkout</a>
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
    
    
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "56e83a1b-9e77-45cd-9363-759eb05aac3c"
  });
</script>
<!-- End Channel Plugin -->
   

</body>
</html>