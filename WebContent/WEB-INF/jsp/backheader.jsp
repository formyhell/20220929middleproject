<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="main-header navbar">
		<div class="col-search">
		</div>
		<div class="col-nav">
			<ul class="nav">
				<li class="nav-item"><a href="#"
					class="requestfullscreen nav-link btn-icon"><i
						class="material-icons md-cast"></i></a></li>
				<li class="dropdown nav-item"><a class="dropdown-toggle"
					data-bs-toggle="dropdown" href="#" id="dropdownAccount"
					aria-expanded="false"> <img class="img-xs rounded-circle"
						src="<%=request.getContextPath()%>/images/rupi.jpg" alt="User" /></a>
					<div class="dropdown-menu dropdown-menu-end"
						aria-labelledby="dropdownAccount">
						<a class="dropdown-item" href="#"><i
							class="material-icons md-perm_identity"></i>개인정보 수정</a> <a
							class="dropdown-item" href="#"><i
							class="material-icons md-settings"></i>계정 설정</a>
							<a class="dropdown-item" href="#"><i
							class="material-icons md-help_outline"></i>도움센터</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-danger" href="#"><i
							class="material-icons md-exit_to_app"></i>로그아웃</a>
					</div></li>
			</ul>
		</div>
	</header>
</body>
</html>