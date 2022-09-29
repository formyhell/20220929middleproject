<%@page import="lecture.vo.LectureVO"%>
<%@page import="cart.vo.CartVO"%>
<%@page import="member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/* 	List<MemberVO> memList = (List<MemberVO>)request.getAttribute("memList"); */

	List<LectureVO> orderList = (List<LectureVO>)request.getAttribute("orderList");
			
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg"); // 꺼내온 메시지 속성 제거하기
	
	// 알림창 뜨면서 삭제 처리된다.
	
		for(int i = 0; i < orderList.size(); i++) {
			LectureVO lec = orderList.get(i);
		
		// 이 가져온 아이디를 통해서 또 그 강의에 대한 정보를 가져와야 한다..
		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>




<%=lec.getLecId() %>
<%=lec.getLecTitle() %>
<%=lec.getLecPrice() %>


<% 

		}

%>








<!-- 아래 전부 다 일단 무시 -->



 <%--      <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
          <div class="product-cart-wrap mb-30">
              <div class="product-img-action-wrap">
                  <div class="product-img product-img-zoom">
                      <a href="shop-product-right.html">
                          <img class="default-img" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/poo.jpg" alt="" />
                          <img class="hover-img" src="<%=request.getContextPath()%>/nest-frontend/assets/imgs/shop/poo.jpg" alt="" />
                      </a>
                  </div>
                  <div class="product-action-1">
                      <a aria-label="Add To Wishlist" class="action-btn" href="shop-wishlist.html"><i class="fi-rs-heart"></i></a>
                      <a aria-label="Compare" class="action-btn" href="shop-compare.html"><i class="fi-rs-shuffle"></i></a>
                      <a aria-label="Quick view" class="action-btn" data-bs-toggle="modal" data-bs-target="#quickViewModal"><i class="fi-rs-eye"></i></a>
                  </div>
                  <div class="product-badges product-badges-position product-badges-mrg">
                      <span class="hot">인기</span>
                  </div>
              </div>
              <div class="product-content-wrap">
                  <div class="product-category">
                      <a href="<%=request.getContextPath()%>/lecture/list.do">JavaScript</a>
                  </div>
                  <h2><a href="<%=request.getContextPath()%>/lecture/detail.do?lecId=<%=lec.getLecId() %>"><%=lec.getLecTitle() %></a></h2>
                  <div class="product-rate-cover">
                      <div class="product-rate d-inline-block">
                          <div class="product-rating" style="width: 90%"></div>
                      </div>
                      <span class="font-small ml-5 text-muted"> (4.0)</span>
                  </div>
                  <div>
                      <span class="font-small text-muted">강사 <a href="vendor-details-1.html">동동이</a></span>
                  </div>
                  <div class="product-card-bottom">
                      <div class="product-price">
                          <span>￦<%=lec.getLecPrice() %></span>
                          <span class="old-price">￦70000</span>
                      </div>
                     <form class="add-cart" id="addForm" name="addForm" method="get" action="<%=request.getContextPath()%>/addCart.do">
                          <input type="hidden" name="lecId" value="<%=lec.getLecId()%>">
                          <button class="add" onclick="addToCart(this)"><i class="fi-rs-shopping-cart mr-5"></i>Add</button>
                     </form>
                  </div>
              </div>
          </div>
      </div>
      <%} %>
                        
                        
                         --%>
                        









































<%-- 

	<table border="1">
		<tr>
			<th>이메일 주소</th>
			<th>비밀번호 </th>
			 <!-- 표의 맨 윗줄 제목을 나타내는 역할이다. 열이 4개임을 알 수 있다.-->
		</tr>
	<% 
		int memSize = memList.size();
		if(memSize > 0) {
			for(int i=0 ; i<memSize; i++) {
	%>	
		<tr>
			<!-- <td><%//out.print(memList.get(i).getMemId()); %></td> -->
			<td><%=memList.get(i).getMemMail() %></td>
			<td><a href="detail.do?memId=<%=memList.get(i).getMemMail() %>"><%=memList.get(i).getMemMail() %></a></td>
			<td><%=memList.get(i).getMemPw() %></td>
		</tr> <!--  for문이 반복되므로, 한 행을 채울 때마다 </tr>로 닫아준다.-->
	<% 
			}
		}else{
	%>
		<tr>
			<td colspan="4">회원정보가 없습니다.</td> <!-- 4개 열 합쳐서 회원 정보가 없다고 띄워준다. -->
		</tr>		
	<% 	}%> 
	<tr align="center">
		<td colspan="5"><a href="insert.do">[회원 등록]</a></td> <!--  = ./insert.do 랑 똑같음--> 
	</tr>

	</table> --%>
<%-- 	
<% if(msg.equals("성공")) { %>
	<script>
		alert('정상적으로 처리되었습니다.');
	</script>
	
<% }%>
 --%>



</body>
</html>