<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="resources/img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Arclabs Architecture</title>

	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Roboto:400,500" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="resources/css/linearicons.css">
	<link rel="stylesheet" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/css/nice-select.css">
	<link rel="stylesheet" href="resources/css/main.css">
</head>


<body>

	<!-- Start Header Area -->
	<c:choose>
		<c:when test="${sessionScope.loginId eq 'admin'}">
			<header class="default-header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="indexForm" style="color:white;">
				ICIA Hotel
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li><a class="active" href="A_mlist">?????? ?????? ??????</a></li>
						<li><a href="A_nwriteForm">???????????? ??????</a></li>
						<li><a href="A_qlist">?????? ?????? ??????</a></li>
						<li><a href="M_logout">????????????</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
		</c:when>
		
		<c:when test="${not empty sessionScope.loginId}">
			<header class="default-header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="indexForm" style="color:white;">
				ICIA Hotel
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li><a class="active" href="M_logout">????????????</a></li>
						<li><a href="R_list">??????</a></li>
						<li><a href="R_around">??????????????????</a></li>
						<li><a href="B_bookform">??????</a></li>
						<li class="dropdown">
							<a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								Board
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="R_notice">????????????</a>
								<a class="dropdown-item" href="Q_writeForm">??????</a>
								<a class="dropdown-item" href="RV_list">????????????</a>
							</div>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								Mypage
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="M_modiform">????????????</a>
								<a class="dropdown-item" href="B_mlist">????????????</a>
								<a class="dropdown-item" href="M_qlist?QId=${sessionScope.loginId}">????????????</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
		</c:when>
		
		<c:otherwise>
			<header class="default-header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="indexForm" style="color:white;">
				ICIA Hotel
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li><a class="active" href="M_loginForm">?????????</a></li>
						<li><a href="M_joinForm">????????????</a></li>
						<li><a href="R_list">??????</a></li>
						<li><a href="R_around">??????????????????</a></li>
						<li><a href="B_bookform">??????</a></li>
						<li class="dropdown">
							<a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								Blog
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="R_notice">????????????</a>
								<a class="dropdown-item" href="Q_writeForm">??????</a>
								<a class="dropdown-item" href="RV_list">????????????</a>
							</div>						
							</li>
	
					</ul>
				</div>
			</div>
		</nav>
	</header>
		</c:otherwise>
	</c:choose>
	<!-- Start top-section Area -->
	<section class="banner-area relative">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row justify-content-between align-items-center text-center banner-content">
				<div class="col-lg-12">
					<h1 class="text-white">Q & A</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- End top-section Area -->
	<!-- Start Align Area -->
	<section class="whole-wrap">
		<div class="container">
			<div class="section-top-border">
				<h3 class="mb-30">????????????</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
						<div class="serial">??????</div>
							<div class="country">ID</div>
							<div class="visit">??????</div>
						</div>
						<c:forEach var="questionList" items="${questionList}">
						<div class="table-row">
							<div class="serial">${questionList.QNo}</div>
							<div class="country">${questionList.QId}</div>
							<div class="visit"><a href="A_qview?QNo=${questionList.QNo}&page=${paging.page}">${questionList.QTitle}</a></div>
							
						</div>
						</c:forEach>
						<br/>
						<!-- ????????? ??????-->
	<!-- [??????] -->
	<c:if test="${paging.page <= 1}">[??????]</c:if>
	<c:if test="${paging.page > 1}"><a href="A_qlist?page=${paging.page-1}">[??????]</a></c:if>
	
	<!-- [??????] -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" step="1" var="i">
		<c:choose>
			<c:when test="${paging.page eq i}">${i}</c:when>
			<c:otherwise><a href="A_qlist?page=${i}">${i}</a></c:otherwise>
		</c:choose>
	</c:forEach>
	
	<!-- [??????] -->
	<c:if test="${paging.page >= paging.maxPage}">[??????]</c:if>
	<c:if test="${paging.page < paging.maxPage}"><a href="A_qlist?page=${paging.page+1}">[??????]</a></c:if>
					
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/main.js"></script>
</body>

</html>