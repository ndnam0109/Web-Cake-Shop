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

	<!-- Start Slider -->
	<div id="slides-shop" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center"><img
				src="template/client/images/anhbiabanhngot3.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Nam CakeShop
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn hvr-hover" href="${pageContext.request.contextPath }/blog">Shop Blog</a>
							</p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center"><img
				src="template/client/images/banner-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Nam CakeShop
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn hvr-hover" href="${pageContext.request.contextPath }/blog">Shop Blog</a>
							</p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center"><img
				src="template/client/images/anhbiabanhngot4.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Nam CakeShop
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn hvr-hover" href="${pageContext.request.contextPath }/blog">Shop Blog</a>
							</p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right"
				aria-hidden="true"></i></a> <a href="#" class="prev"><i
				class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End Slider -->

	<!-- Start Categories  -->
	<div class="categories-shop">
    <div class="container">
        <div class="title-all text-center">
            <h1>Sản phẩm bán chạy</h1>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box">
                    <img class="img-fluid" src="template/client/images/cperesaurieng.jpg " alt="" />
                    <a class="btn hvr-hover" href="#">Xem</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box">
                    <img class="img-fluid" src="template/client/images/banhngot1.jpg " alt="" /> <a class="btn hvr-hover" href="#">Xem</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box">
                    <img class="img-fluid" src="template/client/images/bonglantrung.jpg" alt="" /> <a class="btn hvr-hover" href="#"> Xem</a>
                </div>
            </div>
        </div>
    </div>
</div>
	<!-- End Categories -->

	<div class="box-add-products">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="offer-box-products">
						<img class="img-fluid" src="template/client/images/viewshop1.jpg" alt="" />
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="offer-box-products">
						<img class="img-fluid" src="template/client/images/viewshopp.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Start Products  -->
	<div class="products-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>Sản phẩm được quan tâm nè</h1>
						
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter="*">All</button>
							<button data-filter=".top-featured">Top featured</button>
							<button data-filter=".best-seller">Best seller</button>
						</div>
					</div>
				</div>
			</div>

			<div class="row special-list">
				
				
				<c:forEach var="cake1" items="${cakeSearchByCategory1 }">

				<div class="col-lg-3 col-md-6 special-grid best-seller">
					<div class="products-single fix">
						<div class="box-img-hover">
							<div class="type-lb">
								<p class="sale">Sale</p>
							</div>
							<img src="${cake1.thumbnail }"
								class="img-fluid " alt="Image">
							<div class="mask-icon">
								<ul>
									<li><a href="#" data-toggle="tooltip"
										data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="right" title="Compare"><i
											class="fas fa-sync-alt"></i></a></li>
									<li><a href="#" data-toggle="tooltip"
										data-placement="right" title="Add to Wishlist"><i
											class="far fa-heart"></i></a></li>
								</ul>
								<a class="cart" href="${pageContext.request.contextPath }/add-to-cart?cakeId=${cake1.cakeId}&quantity=1">Thêm vào giỏ</a>
							</div>
						</div>
						<div class="why-text">
							<h4>${cake1.cakeName }</h4>
							<h5>${cake1.currencyPrice }</h5>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- End Products  -->

	<!-- Start Blog  -->
	<div class="latest-blog">
		<div class="container">
			
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
	</div>
	<!-- End Blog  -->


	

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