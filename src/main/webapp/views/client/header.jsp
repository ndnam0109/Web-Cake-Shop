<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- Start Main Top -->
<div class="main-top">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="our-link">
					<ul>
						<li><a href="#"><i class="fas fa-phone"></i>Hotline:
								0373831172 </a></li>



					</ul>
				</div>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
				<c:choose>
					<c:when test="${sessionScope.account == null}">
						<div class="dangnhap-dangki">
							<ul>
								<li><a href="${pageContext.request.contextPath }/login">
										Đăng nhập</a></li>
								<li><a href="${pageContext.request.contextPath }/register">
										Đăng kí</a></li>

							</ul>
						</div>
					</c:when>
					<c:otherwise>
						<div class="dangnhap-dangki">
							<ul>
								<li><i>${account.fullName }</i></li>
								<li><a href="${pageContext.request.contextPath }/logout">
										Đăng xuất</a></li>
							</ul>

						</div>
					</c:otherwise>
				</c:choose>
				<div class="text-slid-box">
					<div id="offer-box" class="carouselTicker">
						<ul class="offer-box">
							<li><i class="fab fa-opencart"></i> Chào mừng bạn đến với
								Cake Shop !</li>
							<li><i class="fab fa-opencart"></i> Shop đang giảm giá 10%
								nhân dịp sinh nhật !</li>
							<li><i class="fab fa-opencart"></i> Bánh Crepe đã mở bán !
								Hãy ghé qua !</li>


						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
	<!-- Start Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
		<div class="container">
			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar-menu" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand"><img
					src="template/client/images/logoshop.jpg" class="logo" alt=""></a>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li class="nav-item "><a class="nav-link"
						href="${pageContext.request.contextPath }/trangchu">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath }/chungtoi">Chúng tôi</a></li>
					<li class="dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown-menu">Cửa
							hàng</a>
						<ul class="dropdown-menu">

							<li><a
								href="${pageContext.request.contextPath }/category?categoryId=1">Bánh
									ngọt</a></li>
							<li><a
								href="${pageContext.request.contextPath }/category?categoryId=2">Bánh
									mặn</a></li>
							<li><a
								href="${pageContext.request.contextPath }/category?categoryId=3">Bánh
									trái cây</a></li>
							<li><a
								href="${pageContext.request.contextPath }/category?categoryId=4">Bánh
									kem</a></li>
							<li><a
								href="${pageContext.request.contextPath }/category?categoryId=5">Bánh
									pizza</a></li>
							<li><a
								href="${pageContext.request.contextPath }/category?categoryId=6">Bánh
									Crepe</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath }/blog">Blog</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath }/contact">liên hệ</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->

			<!-- Start Atribute Navigation -->
			<div class="attr-nav">
				<ul>
				
					<li class="side-menu"><a href="#"> <c:forEach
								items="${cart}" var="cart1">
								<c:set var="count" value="${count + cart1.value.quantity}" />
							</c:forEach> <i class="fa fa-shopping-bag"></i> <span class="badge">${count}</span>
							<p>Giỏ Hàng</p>
					</a></li>
				</ul>
			</div>
			<!-- End Atribute Navigation -->
		</div>
		<div class="side">
			<a href="#" class="close-side"><i class="fa fa-times"></i></a>
			<li class="cart-box">
				<ul class="cart-list">

					<c:forEach var="cart1" items="${cart}">
						<li><a href="#" class="photo"><img
								src="${cart1.value.cake.thumbnail }" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">${cart1.value.cake.cakeName } </a>
							</h6>
							<p>
								${cart1.value.quantity }x - <span class="price">${cart1.value.cake.currencyPrice }</span>
							</p></li>
						<c:set var="totalPrice"
							value="${totalPrice+cart1.value.quantity*cart1.value.cake.price}" />
					</c:forEach>

					<li class="total"><a
						href="${pageContext.request.contextPath }/view-cart"
						class="btn btn-default hvr-hover btn-cart">Xem giỏ hàng</a> <span
						class="float-right"><strong>Total</strong>: ${total }</span>
				</ul>
			</li>
		</div>
		<!-- End Side Menu -->
	</nav>
	<!-- End Navigation -->
</header>
<!-- End Main Top -->