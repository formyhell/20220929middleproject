<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<aside class="navbar-aside" id="offcanvas_aside">
		<div class="aside-top">
			<a href="<%=request.getContextPath() %>/backindex.do" class="brand-wrap"> <img
				src="<%=request.getContextPath() %>/nest-frontend/dingImage/dingding2.png" class="logo" alt="Nest Dashboard" />
			</a>
		</div>
		<nav>
			<ul class="menu-aside">
				<li class="menu-item active"><a class="menu-link"
					href="<%=request.getContextPath() %>/backindex.do"> <i class="icon material-icons md-home"></i>
						<span class="text">대시보드</span>
				</a></li>
				<li class="menu-item has-submenu"><a class="menu-link"
					href="<%=request.getContextPath() %>/page-products-list.do"> <i
						class="icon material-icons md-shopping_bag"></i> <span
						class="text">강의</span>
				</a>
					<div class="submenu">
						<a href="<%=request.getContextPath() %>/page-products-list.do">강의 목록</a> <a
							href="<%=request.getContextPath() %>/page-approve-list.do">강의 승인</a>
					</div></li>
				<li class="menu-item has-submenu"><a class="menu-link"
					href="<%=request.getContextPath() %>/listSeller.do"> <i
						class="icon material-icons md-store"></i> <span class="text">강사</span>
				</a>
					<div class="submenu">
						<a href="<%=request.getContextPath() %>/listSeller.do">강사 목록</a>
					</div></li>
				<li class="menu-item has-submenu"><a class="menu-link"
					href="<%=request.getContextPath() %>/backlistNotice.do"> <i
						class="icon material-icons md-store"></i> <span class="text">게시판</span>
				</a>
					<div class="submenu">
						<a href="<%=request.getContextPath() %>/backlistNotice.do">공지사항</a>
					</div></li>	
				<li class="menu-item has-submenu"><a class="menu-link" href="#">
						<i class="icon material-icons md-person"></i> <span class="text">계정</span>
				</a>
					<div class="submenu">
					 <a	href="<%=request.getContextPath() %>/admin/list.do">회원 목록</a>
					</div></li>
			</ul>
			<hr />
			<ul class="menu-aside">
				<li class="menu-item has-submenu"><a class="menu-link" href="#">
						<i class="icon material-icons md-settings"></i> <span class="text">설정</span>
				</a>
					<div class="submenu">
						<a href="page-settings-1.jsp">계정 설정</a>
					</div></li>
			</ul>
			<br /> <br />
		</nav>
	</aside>
</body>
</html>