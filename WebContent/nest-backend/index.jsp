<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Ding 관리자 페이지</title>
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta property="og:title" content="" />
<meta property="og:type" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="" />
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/nest-backend/assets/imgs/theme/favicon.svg" />
<!-- Template CSS -->
<link
	href="<%=request.getContextPath()%>/nest-backend/assets/css/main.css?v=1.1"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="screen-overlay"></div>
	<%@ include file="../WEB-INF/jsp/aside.jsp"%>
	<main class="main-wrap">
		<%@ include file="../WEB-INF/jsp/backheader.jsp"%>
		<section class="content-main">
			<div class="content-header">
				<div>
					<h2 class="content-title card-title">대시보드</h2>
					<p>관리자 페이지입니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3">
					<div class="card card-body mb-4">
						<article class="card-body">
							<h5 class="card-title">New Members</h5>
							<div class="new-member-list">
								<div
									class="d-flex align-items-center justify-content-between mb-4">
									<div class="d-flex align-items-center">
										<img src="<%=request.getContextPath()%>/images/edi.jpg" alt=""
											class="avatar" />
										<div>
											<h6>에디</h6>
											<p class="text-muted font-xs">과학자</p>
										</div>
									</div>
									<a href="#" class="btn btn-xs"><i
										class="material-icons md-add"></i> Add</a>
								</div>
								<div
									class="d-flex align-items-center justify-content-between mb-4">
									<div class="d-flex align-items-center">
										<img src="<%=request.getContextPath()%>/images/crong.JPG"
											alt="" class="avatar" />
										<div>
											<h6>크롱</h6>
											<p class="text-muted font-xs">식객</p>
										</div>
									</div>
									<a href="#" class="btn btn-xs"><i
										class="material-icons md-add"></i> Add</a>
								</div>
								<div
									class="d-flex align-items-center justify-content-between mb-4">
									<div class="d-flex align-items-center">
										<img src="<%=request.getContextPath()%>/images/pobi.jpg"
											alt="" class="avatar" />
										<div>
											<h6>포비</h6>
											<p class="text-muted font-xs">심리상담사</p>
										</div>
									</div>
									<a href="#" class="btn btn-xs"><i
										class="material-icons md-add"></i> Add</a>
								</div>
								<div
									class="d-flex align-items-center justify-content-between mb-4">
									<div class="d-flex align-items-center">
										<img src="<%=request.getContextPath()%>/images/peti.jpg"
											alt="" class="avatar" />
										<div>
											<h6>패티</h6>
											<p class="text-muted font-xs">요리사</p>
										</div>
									</div>
									<a href="#" class="btn btn-xs"><i
										class="material-icons md-add"></i> Add</a>
								</div>
								<div
									class="d-flex align-items-center justify-content-between mb-4">
									<div class="d-flex align-items-center">
										<img src="<%=request.getContextPath()%>/images/heri.jpg"
											alt="" class="avatar" />
										<div>
											<h6>해리</h6>
											<p class="text-muted font-xs">상담조수</p>
										</div>
									</div>
									<a href="#" class="btn btn-xs"><i
										class="material-icons md-add"></i> Add</a>
								</div>
							</div>
						</article>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="card mb-4">
						<article class="card-body">
							<h5 class="card-title">우리의 추억들...</h5>
							<ul class="verti-timeline list-unstyled font-sm">
								<li class="event-list">
									<div>
										202205 컨셉회의 <img
											src="<%=request.getContextPath()%>/images/meeting.jpg"
											alt="컨셉 회의">
									</div>
								</li>
								<li class="event-list">
									<div>
										202205 DING 야유회 <img
											src="<%=request.getContextPath()%>/images/picnic.jpg"
											alt="첫 아유회">
									</div>
								</li>
								<li class="event-list">
									<div>
										202205 DING 창립 기념 파티 <img
											src="<%=request.getContextPath()%>/images/birthday.JPG"
											alt="생파">
									</div>
								</li>


							</ul>
						</article>
					</div>
				</div>
			</div>
		</section>
		<!-- content-main end// -->
		<footer class="main-footer font-xs">
			<div class="row pb-30 pt-15">
				<div class="col-sm-6">
					<script>
						document.write(new Date().getFullYear());
					</script>
					&copy; Ding - an Internet lecture site.
				</div>
				<div class="col-sm-6">
					<div class="text-sm-end">All rights reserved</div>
				</div>
			</div>
		</footer>
	</main>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/vendors/jquery-3.6.0.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/vendors/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/vendors/select2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/vendors/perfect-scrollbar.js"></script>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/vendors/jquery.fullscreen.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/vendors/chart.js"></script>
	<!-- Main Script -->
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/main.js?v=1.1"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/nest-backend/assets/js/custom-chart.js"
		type="text/javascript"></script>
</body>
</html>
