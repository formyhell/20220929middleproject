<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>DING Dashboard</title>
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta property="og:title" content="" />
<meta property="og:type" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="" />
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/imgs/theme/favicon.svg" />
<!-- Template CSS -->
<link href="assets/css/main.css?v=1.1" rel="stylesheet" type="text/css" />
</head>

<body>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	<div class="screen-overlay"></div>
	<%@ include file="../WEB-INF/jsp/aside.jsp"%>
	<main class="main-wrap">
		<%@ include file="../WEB-INF/jsp/backheader.jsp"%>
		<section class="content-main">
			<div class="content-header">
				<h2 class="content-title">Blank page</h2>
			</div>
			<canvas id="myChart"></canvas>
		</section>
		<footer class="main-footer font-xs">
			<div class="card mb-4">
				<header class="card-header">
					<div class="row pb-30 pt-15">
						<div class="col-sm-6">
							<script>
						document.write(new Date().getFullYear());
					</script>
							&copy; DING - HTML Ecommerce Template .
						</div>
						<div class="col-sm-6">
							<div class="text-sm-end">All rights reserved</div>
						</div>
					</div>
					</header>
					</div>
		</footer>
	</main>
	<script src="assets/js/vendors/jquery-3.6.0.min.js"></script>
	<script src="assets/js/vendors/bootstrap.bundle.min.js"></script>
	<script src="assets/js/vendors/select2.min.js"></script>
	<script src="assets/js/vendors/perfect-scrollbar.js"></script>
	<script src="assets/js/vendors/jquery.fullscreen.min.js"></script>
	<!-- Main Script -->
	<script src="assets/js/main.js?v=1.1" type="text/javascript"></script>
	<script type="text/javascript">
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(context, {
			type : 'bar', // 차트의 형태
			data : { // 차트에 들어갈 데이터
				labels : [
				//x 축
				'1', '2', '3', '4', '5', '6', '7' ],
				datasets : [
						{ //데이터
							label : 'test1', //차트 제목
							fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
							data : [ 21, 19, 25, 20, 23, 26, 25 //x축 label에 대응되는 데이터 값
							],
							backgroundColor : [
							//색상
							'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [
							//경계선 색상
							'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						//경계선 굵기
						}, {
							label : 'test2',
							fill : false,
							data : [ 8, 34, 12, 24 ],
							backgroundColor : 'rgb(157, 109, 12)',
							borderColor : 'rgb(157, 109, 12)'
						} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>
</body>
</html>
