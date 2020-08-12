<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
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
					<h2>Shop</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Shop</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Page  -->
	<div class="shop-box-inner">
		<div class="container">
			<div class="row">

				<div
					class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
					<div class="right-product-box">
						<div class="product-item-filter row">
							<div class="col-12 col-sm-8 text-center text-sm-left"></div>
							<div class="col-12 col-sm-4 text-center text-sm-right">
								<ul class="nav nav-tabs ml-auto">
									<li><a class="nav-link active" href="#grid-view"
										data-toggle="tab"> <i class="fa fa-th"></i>
									</a></li>
									<li><a class="nav-link" href="#list-view"
										data-toggle="tab"> <i class="fa fa-list-ul"></i>
									</a></li>
								</ul>
							</div>
						</div>

						<div class="product-categorie-box">
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade show active"
									id="grid-view">
									<div class="row">
										<c:forEach var="cake" items="${cakeSeachByCategory}">
											<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
												<div class="products-single fix">
													<div class="box-img-hover">
														<div class="type-lb">
															<p class="sale">Sale</p>
														</div>
														
														<img src="${cake.thumbnail }" class="img-fluid"
															alt="image">
														<div class="mask-icon">
															<ul>
																<li><a href="#" data-toggle="tooltip"
																	data-placement="right" title="View"><i
																		class="fas fa-eye"></i></a></li>
																<li><a href="#" data-toggle="tooltip"
																	data-placement="right" title="Compare"><i
																		class="fas fa-sync-alt"></i></a></li>

															</ul>
															<a class="cart" href="${pageContext.request.contextPath }/add-to-cart?cakeId=${cake.cakeId}">Thêm vào giỏ</a>
														</div>
													</div>
													<div class="why-text">
														<h4>${cake.cakeName }</h4>
														<h5>${cake.price }vnđ</h5>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>

								</div>

								<div role="tabpanel" class="tab-pane fade" id="list-view">
									<div class="list-view-box">
										<div class="row">
											<c:forEach var="cake" items="${cakeSeachByCategory}">

												<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
													<div class="products-single fix">
														<div class="box-img-hover">
															<div class="type-lb">
																<p class="new">New</p>
															</div>
															
															<img src="${cake.thumbnail } " class="img-fluid"
																alt="image">
															<div class="mask-icon">
																<ul>
																	<li><a href="#" data-toggle="tooltip"
																		data-placement="right" title="View"><i
																			class="fas fa-eye"></i></a></li>
																	<li><a href="#" data-toggle="tooltip"
																		data-placement="right" title="Compare"><i
																			class="fas fa-sync-alt"></i></a></li>

																</ul>

															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
													<div class="why-text full-width">
														<h4>${cake.cakeName}</h4>														
														<h5>${cake.price }</h5>
														<p>${cake.content }</p>
														<a class="btn hvr-hover" href="${pageContext.request.contextPath }/add-to-cart?cakeId=${cake.cakeId}">Thêm vào giỏ</a>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
					<div class="product-categori">
						<div class="filter-sidebar-left">
							<div class="title-left">
								<h3>Categories</h3>
							</div>
							<c:forEach var="cate" items="${category}">
								<div
									class="list-group list-group-collapse list-group-sm list-group-tree"
									id="list-group-men" data-children=".sub-men">
									<a
										href="${pageContext.request.contextPath }/cake/category?categoryId=${cate.categoryId}"
										class="list-group-item list-group-item-action">
										${cate.name} </a>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Shop Page -->


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