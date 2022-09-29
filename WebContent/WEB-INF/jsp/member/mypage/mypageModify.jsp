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
                                <li class="hover-up">
                                    <a href="<%=request.getContextPath() %>/MylectureList.do"><i class="fi-rs-cross mr-10"></i>내 강의실</a>
                                </li>
                                <li class="hover-up active">
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
        <!-- <div class="container mb-30">
            <div class="row flex-row-reverse">
                <div class="col-lg-4-5">
                    <div class="shop-product-fillter">
                        <div class="totall-product">
                            <p>We found <strong class="text-brand">29</strong> items for you!</p>
                        </div>

                    </div> -->

                    

                    
 <form  style="width: 40%;margin: 0 auto;" action="<%=request.getContextPath() %>/memberupdate.do" method="post" >
      
      <table>
      	<tr>
      		<td>기존 비밀번호 입력</td>
			<td><input type="password" name="memPw" class="pw" id="pw1">
			</td>
		</tr>
		<tr>
			<td>새 비밀번호 입력</td>
			<td><input type="password" name="memNewPw" class="pw" id="newPw"></td>
		</tr>
		<tr>
			<td>새 비밀번호 입력 확인</td>
			<td><input type="password" name="memNewPw" class="pw" id="newPw"></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="확인" class="btn btn-primary" id="pwOk"/>
			</td>
		</tr>
      </table>
      
      </form>
      
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
  
    
    
    <script>
	
		$('#pwOk').click(function(e) {
			
			e.preventDefault(); // 폼 전송을 안한다?

			let memPw = $('#pw1').val();
			let memNewPw = $('#newPw').val();
			$.ajax({
				type : "POST",
				url : "<%=request.getContextPath() %>/memberupdate.do",
				data : "memPw=" + memPw + "&memNewPw=" + memNewPw,
				dataType : "json",
				success : function(data, textStatus, xhr) {
					
					console.log(data);
					
					if (data.result == 'fail') {
						
						$("#errMsg").text("비밀번호가 올바르지 않습니다.");
						
					} else {
						console.log("비밀번호가 일치하여 새로운 비번으로 변경하였습니다!")
						window.location.href = "<%=request.getContextPath() %>/index.do";
					} 
				}, error : function(data, textStatus, xhr) {
					console.log("에러가 났어요.");
				}
			})
		});
	</script>
    
    
   
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