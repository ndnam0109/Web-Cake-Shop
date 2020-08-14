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
					<h2>BLOG</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">BLOG</li>
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
					<div class="banner-frame ">
						<img class="img-fluid blog "  src="template/client/images/blog1.jpg"
							alt="" />
					</div>
				</div>
				<div class="col-lg-6">
					<h2 class="noo-sh-title-top">
						We are <span>Cakeshop</span>
					</h2>
					<p>Sau hơn một tuần vắng nhà, cuối tuần vừa rồi mới lại được
						vào bếp nghịch bột trứng, đợi bánh nở, và hí húi với đống dụng cụ
						để chụp ảnh. Cảm giác thật tuyệt! Vừa háo hức như gặp lại bạn cũ,
						vừa có cảm giác mới mẻ là lạ, giống như mới được “sạc” thêm năng
						lượng và cảm hứng vậy ^.^ Hơn một tuần không được ăn bánh, thấy
						“thiếu thốn” nhiều nên có đứa tham ăn làm một lúc hai loại bánh
						khác nhau: Japanese cotton cheesecake để thỏa mãn cái sự nhớ nhung
						vị ngậy béo, mềm xốp của bánh gateau pho-mát và Hokkaido chiffon
						cupcakes để tận hưởng sự mềm mại mịn màng trong từng thớ bánh nhỏ.</p>
					<a class="btn hvr-hover" href="#">Read More</a>
					<hr>
				</div>

			</div>


			<div class="row ">
				<div class="col-lg-6">
					<div class="banner-frame ">
						<img class="img-fluid blog" src="template/client/images/blog2.jpg"
							alt="" />
					</div>
				</div>
				<div class="col-lg-6">
					<h2 class="noo-sh-title-top">
						We are <span>Cakeshop</span>
					</h2>
					<p>Món bánh thứ hai – Hokkaido chiffon cupcakes – được làm từ
						gợi ý của một số bạn tại Savoury Days. Mình khá là tò mò về xuất
						xứ của món bánh này. Vì thường các loại bánh có thêm “nhãn”
						Hokkaido là do được làm với sữa Hokkaido, vốn là một loại sữa ngon
						nổi tiếng. Nhưng Hokkaido chiffon cupcakes thì hình như chẳng có
						liên quan gì mấy. Bánh gồm một cốt bánh Chiffon với phần kem
						Custard trộn whipped cream thơm ngậy bên trong. Tuy không có gì
						mới mẻ nhưng đây là một sự kết hợp tuyệt vời, mà chắc cả trẻ con
						lẫn “trẻ nhớn” ai cũng sẽ thích cả. Cupcake của mình ngoài phần
						nhân custard có thêm cả kem tươi đánh bông và dâu tây nữa. Cá nhân
						mình thì thích có thêm kem tươi hơn, vì giữ được độ ẩm cho bánh,
						lại rất hợp với phần chiffon và kem custard. Nhưng nếu bạn nào
						ngại ngấy thì có thể bỏ qua hoặc thay whipping cream bằng topping
						cream nhé.</p>
					<a class="btn hvr-hover" href="#">Read More</a>
				</div>
				<hr>
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