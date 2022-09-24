<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">


<!-- Css Styles -->
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<style>
.menu-image {
	height: 250px;
}

#change {
	width: 40%;
}

.text-bar {
	text-align: center;
}

/* .total-bar{
            background-color: #f5f5f5;
        } */
.text-bar>nav>ul>li>a {
	font-size: 25px;
}

/** 수량 버튼 디자인  */
.qty-box {
	width: 120px;
	height: 40px;
	display: inline-block;
	position: relative;
	text-align: center;
	background: #f5f5f5;
	margin-bottom: 5px;
}

.qty-box>input {
	height: 100%;
	width: 50px;
	font-size: 16px;
	color: black;
	border: none;
	background: #f5f5f5;
	text-align: center;
}

.qtybtn {
	border: 0;
	outline: 0;
	background: #f5f5f5;
}
</style>

</head>
<body>

	<jsp:include page="../include/HEADER.jsp" />

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>장바구니</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">상품명</th>
									<th>상품금액</th>
									<th>수량</th>
									<th>총 금액</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="shoping__cart__item"><img
										src="img/cart/cart-1.jpg" alt="">
										<h5 name="product_name">Vegetable’s Package</h5></td>
									<td class="shoping__cart__price" name="product_price">
										$55.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="qty-box">
												<button class="minus-btn qtybtn">-</button>
												<input class="qty-input" type="text" value="1">
												<button class="plus-btn qtybtn">+</button>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">₩110.00</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>
								<tr>
									<td class="shoping__cart__item"><img
										src="img/cart/cart-2.jpg" alt="">
										<h5>Fresh Garden Vegetable</h5></td>
									<td class="shoping__cart__price">₩39.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1">
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">₩39.99</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>
								<tr>
									<td class="shoping__cart__item"><img
										src="img/cart/cart-3.jpg" alt="">
										<h5>Organic Bananas</h5></td>
									<td class="shoping__cart__price">₩69.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1">
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">₩69.99</td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a>
                    </div>
                </div> -->
				<div class="col-lg-12">
					<div class="shoping__checkout">
						<h5>주문금액</h5>
						<ul>
							<li>상품가격 <span>₩454.98</span></li>
							<li>배송비 <span>₩3,000</span></li>
							<li>총 결재금액 <span>₩3,000</span></li>
						</ul>
						<a href="#" class="primary-btn">구매하기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>

	<jsp:include page="../include/FOOTER.jsp" />

</body>

<script>

	/** 수량 버튼 조작 */
	let quantity = $(".qty-input").val();
	
	$(".plus-btn").on("click", function(){
		$(".qty-input").val(++quantity);
	});
	
	$(".minus-btn").on("click", function(){
		if(quantity > 1){
			$(".qty-input").val(--quantity);
		}
	});
	
	

	

</script>
</html>