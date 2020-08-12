<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Cake Shop</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link href="<c:url value='/template/client/images/favicon.ico' />"
	rel="shortcut icon" type="image/x-icon">
<link
	href="<c:url value='/template/client/images/apple-touch-icon.png' />"
	rel="apple-touch-icon">

<!-- Bootstrap CSS -->
<link href="<c:url value='/template/client/css/bootstrap.min.css' />"
	rel="stylesheet">
<!-- Site CSS -->
<link href="<c:url value='/template/client/css/style.css' />"
	rel="stylesheet">
<!-- Responsive CSS -->
<link href="<c:url value='/template/client/css/responsive.css ' />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value='/template/client/css/custom.css ' />"
	rel="stylesheet">



<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


	<jsp:include page="header.jsp"></jsp:include>

	<!-- Start Top Search -->
	<div class="top-search">
		<div class="container">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-search"></i></span>
				<input type="text" class="form-control" placeholder="Search">
				<span class="input-group-addon close-search"><i
					class="fa fa-times"></i></span>
			</div>
		</div>
	</div>
	<!-- End Top Search -->

	<!-- Start All Title Box -->
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>ABOUT US</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">ABOUT US</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start About Page  -->
	<div class="about-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="banner-frame">
						<img class="img-fluid" src="template/client/images/about.jpg" alt="" />
					</div>
				</div>
				<div class="col-lg-6">
					<h2 class="noo-sh-title-top">
						We are <span> Nam CakeShop</span>
					</h2>
					<p>"Tại NamCakaShop, chúng tôi luôn hiểu rằng những chiếc bánh
						mới ra lò là những chiếc bánh ngon nhất. Chúng tôi đặc biệt chọn
						lọc những nguyên liệu tốt cho sức khỏe cũng như chú trọng sự tươi
						mới của từng sản phẩm khi đến tay khách hàng.Sự hài lòng của khách
						hàng chính là niềm vui của gia đình Nam CakeShop"</p>
					<a class="btn hvr-hover" href="#">Đọc tiếp</a>
				</div>
			</div>
			<div class="row my-5">
				<div class="col-sm-6 col-lg-4">
					<div class="service-block-inner">
						<h3>We are Trusted</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4">
					<div class="service-block-inner">
						<h3>We are Professional</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
				<div class="col-sm-6 col-lg-4">
					<div class="service-block-inner">
						<h3>We are Expert</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row my-4">
				<div class="col-12">
					<h2 class="noo-sh-title">Meet Our Team</h2>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="hover-team">
						<div class="our-team">
							<img src="images/img-1.jpg" alt="" />
							<div class="team-content">
								<h3 class="title">Williamson</h3>
								<span class="post">Web Developer</span>
							</div>
							<ul class="social">
								<li><a href="#" class="fab fa-facebook"></a></li>
								<li><a href="#" class="fab fa-twitter"></a></li>
								<li><a href="#" class="fab fa-google-plus"></a></li>
								<li><a href="#" class="fab fa-youtube"></a></li>
							</ul>
							<div class="icon">
								<i class="fa fa-plus" aria-hidden="true"></i>
							</div>
						</div>
						<div class="team-description">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Praesent urna diam, maximus ut ullamcorper quis, placerat id
								eros. Duis semper justo sed condimentum rutrum. Nunc tristique
								purus turpis. Maecenas vulputate.</p>
						</div>
						<hr class="my-0">
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="hover-team">
						<div class="our-team">
							<img src="images/img-2.jpg" alt="" />
							<div class="team-content">
								<h3 class="title">Kristiana</h3>
								<span class="post">Web Developer</span>
							</div>
							<ul class="social">
								<li><a href="#" class="fab fa-facebook"></a></li>
								<li><a href="#" class="fab fa-twitter"></a></li>
								<li><a href="#" class="fab fa-google-plus"></a></li>
								<li><a href="#" class="fab fa-youtube"></a></li>
							</ul>
							<div class="icon">
								<i class="fa fa-plus" aria-hidden="true"></i>
							</div>
						</div>
						<div class="team-description">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Praesent urna diam, maximus ut ullamcorper quis, placerat id
								eros. Duis semper justo sed condimentum rutrum. Nunc tristique
								purus turpis. Maecenas vulputate.</p>
						</div>
						<hr class="my-0">
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="hover-team">
						<div class="our-team">
							<img src="images/img-3.jpg" alt="" />
							<div class="team-content">
								<h3 class="title">Steve Thomas</h3>
								<span class="post">Web Developer</span>
							</div>
							<ul class="social">
								<li><a href="#" class="fab fa-facebook"></a></li>
								<li><a href="#" class="fab fa-twitter"></a></li>
								<li><a href="#" class="fab fa-google-plus"></a></li>
								<li><a href="#" class="fab fa-youtube"></a></li>
							</ul>
							<div class="icon">
								<i class="fa fa-plus" aria-hidden="true"></i>
							</div>
						</div>
						<div class="team-description">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Praesent urna diam, maximus ut ullamcorper quis, placerat id
								eros. Duis semper justo sed condimentum rutrum. Nunc tristique
								purus turpis. Maecenas vulputate.</p>
						</div>
						<hr class="my-0">
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="hover-team">
						<div class="our-team">
							<img src="images/img-1.jpg" alt="" />
							<div class="team-content">
								<h3 class="title">Williamson</h3>
								<span class="post">Web Developer</span>
							</div>
							<ul class="social">
								<li><a href="#" class="fab fa-facebook"></a></li>
								<li><a href="#" class="fab fa-twitter"></a></li>
								<li><a href="#" class="fab fa-google-plus"></a></li>
								<li><a href="#" class="fab fa-youtube"></a></li>
							</ul>
							<div class="icon">
								<i class="fa fa-plus" aria-hidden="true"></i>
							</div>
						</div>
						<div class="team-description">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Praesent urna diam, maximus ut ullamcorper quis, placerat id
								eros. Duis semper justo sed condimentum rutrum. Nunc tristique
								purus turpis. Maecenas vulputate.</p>
						</div>
						<hr class="my-0">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About Page -->




	<jsp:include page="footer.jsp"></jsp:include>

	<!-- ALL JS FILES -->
	<script src="<c:url value='/template/client/js/jquery-3.2.1.min.js'/>">
		
	</script>
	<script src="<c:url value='/template/client/js/popper.min.js' />">
		
	</script>
	<script src="<c:url value='/template/client/js/bootstrap.min.js'/>"></script>
	<!-- ALL PLUGINS -->
	<script
		src="<c:url value='/template/client/js/jquery.superslides.min.js'/> "></script>
	<script src="<c:url value='/template/client/js/bootstrap-select.js'/> "></script>
	<script src="<c:url value='/template/client/js/inewsticker.js'/> "></script>
	<script src="<c:url value='/template/client/js/bootsnav.js'/>"></script>
	<script src="<c:url value='/template/client/js/images-loded.min.js '/>"></script>
	<script src="<c:url value='/template/client/js/isotope.min.js'/> "></script>
	<script src="<c:url value='/template/client/js/owl.carousel.min.js' />"></script>
	<script src="<c:url value='/template/client/js/baguetteBox.min.js'/> "></script>
	<script
		src="<c:url value='/template/client/js/form-validator.min.js'/> "></script>
	<script
		src="<c:url value='/template/client/js/contact-form-script.js'/> "></script>
	<script src="<c:url value='/template/client/js/custom.js'/> "></script>
</body>

</html>