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
					<h2>Shop Detail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Shop</a></li>
						<li class="breadcrumb-item active">Shop Detail</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Detail  -->
	<div class="shop-detail-box-main">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6">
					<div id="carousel-example-1"
						class="single-product-slider carousel slide" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block w-100" src="${cakeDetail.thumbnail }"
									alt="First slide">
							</div>


						</div>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">
					<div class="single-product-details">
						<h2>${cakeDetail.cakeName }</h2>
						<h5>${cakeDetail.currencyPrice }</h5>
						<p class="available-stock">
							<span> Mua trên 10 sản phẩm giảm giá <a href="#"> 10% </a></span>
						<p>
						<h4>Chi tiết:</h4>
						<p>${cakeDetail.content }</p>
						<ul>
							<li>
								<div class="form-group quantity-box">
									<label class="control-label">Quantity</label> <input
										class="form-control" value="1" min="0" max="20" type="number">
								</div>
							</li>
						</ul>

						<div class="price-box-bar">
							<div class="cart-and-bay-btn">

								<a class="btn hvr-hover cart" data-fancybox-close=""
									href="${pageContext.request.contextPath }/add-to-cart?cakeId=${cakeDetail.cakeId}&quantity=1">Thêm
									vào giỏ </a>
							</div>
						</div>


					</div>
				</div>
			</div>

			<div class="row my-5">
				<div class="card card-outline-secondary my-4"></div>
			</div>
		</div>

		<div class="row my-5">
			<div class="col-lg-12">
				<div class="title-all text-center">
					<h1>Các sản phẩm khác</h1>
					<p>Còn vô vàn bánh hấp dẫn đang đợi bạn nè.</p>
				</div>
				<div class="featured-products-box owl-carousel owl-theme">


					<c:forEach var="cake" items="${listCakeDetail }">
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="${cake.thumbnail }" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li><a
												href="${pageContext.request.contextPath }/cake-detail?cakeId=${cake.cakeId}"
												data-toggle="tooltip" data-placement="right" title="View"><i
													class="fas fa-eye"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Compare"><i
													class="fas fa-sync-alt"></i></a></li>
											<li><a href="#" data-toggle="tooltip"
												data-placement="right" title="Add to Wishlist"><i
													class="far fa-heart"></i></a></li>
										</ul>
										<a class="cart"
											href="${pageContext.request.contextPath }/add-to-cart?cakeId=${cake.cakeId}&quantity=1">Thêm
											vào giỏ</a>
									</div>
								</div>
								<div class="why-text">
									<h4>${cake.cakeName }</h4>
									<h5>${cake.currencyPrice }</h5>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>



	<!-- End Cart -->


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