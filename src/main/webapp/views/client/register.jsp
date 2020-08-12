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
<title>Tài khoản</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->


<link href="<c:url value='template/client/images/favicon.ico' />"
	rel="shortcut icon" type="image/x-icon">
<link
	href="<c:url value='template/client/images/apple-touch-icon.png' />"
	rel="apple-touch-icon">

<!-- Bootstrap CSS -->
<link href="<c:url value='template/client/css/bootstrap.min.css' />"
	rel="stylesheet">
<!-- Site CSS -->
<link href="<c:url value='template/client/css/style.css' />"
	rel="stylesheet">
<!-- Responsive CSS -->
<link href="<c:url value='template/client/css/responsive.css ' />"
	rel="stylesheet">
<!-- Custom CSS -->

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
					<h2>Tài Khoản</h2>


				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">
			<div class="row new-account-login">
				<div class="col-sm-6 col-lg-6 mb-3">
				
					<div class="title-left">
						<h3>Đăng nhập</h3>
					</div>
					<h5>
						<a data-toggle="collapse" href="#formLogin" role="button"
							aria-expanded="false">Ấn vào đây để đăng nhập</a>

						
					</h5>
					<div class="alert alert-primary" role="alert">
						<strong>${alert}</strong>
					</div>

					<form action="${pageContext.request.contextPath }/login"
						class="mt-3 collapse review-form-box" id="formLogin" method="post">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="InputEmail" class="mb-0">Tên đăng nhập</label> <input
									type="text" class="form-control" id="InputEmail"
									placeholder="Tên đăng nhập" name="userName" required>
							</div>
							<div class="form-group col-md-6">
								<label for="InputPassword" class="mb-0">Mật khẩu</label> <input
									type="password" class="form-control" id="InputPassword"
									placeholder="Mật khẩu" name="password" required>
							</div>
						</div>
						<button type="submit" class="btn hvr-hover">Đăng nhập</button>
					</form>
				</div>
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="title-left">
						<h3>Tạo tài khoản</h3>
					</div>
					<h5>
						<a data-toggle="collapse" href="#formRegister" role="button"
							aria-expanded="false">Ấn vào đây để đăng kí</a>

					</h5>
					<div class="alert alert-primary" role="alert">
						<strong>${thongBao}</strong>
					</div>

					<form action="${pageContext.request.contextPath }/register"  method="post"
						class="mt-3 collapse review-form-box" id="formRegister">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="InputName" class="mb-0">Tên người dùng</label> <input
									type="text" class="form-control" id="InputName"
									placeholder="Tên người dùng" name="fullName" required>
							</div>
							<div class="form-group col-md-6">
								<label for="InputName" class="mb-0">Tên đăng nhập</label> <input
									type="text" class="form-control" id="InputName"
									placeholder="Tên đăng nhập" name="userName" required>
							</div>
							<div class="form-group col-md-6">
								<label for="InputEmail1" class="mb-0">Email Address</label> <input
									type="email" class="form-control" id="InputEmail1"
									placeholder="Gmail" name="gmail" required>
							</div>
							<div class="form-group col-md-6">
								<label for="InputPassword1" class="mb-0">Password</label> <input
									type="password" class="form-control" id="InputPassword1"
									placeholder="Mật khẩu" name="password" required>
							</div>
						</div>
						<button type="submit" class="btn hvr-hover">Đăng kí</button>
					</form>
				</div>
			</div>







		</div>
	</div>
	<!-- End Cart -->



	<jsp:include page="footer.jsp"></jsp:include>

	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

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