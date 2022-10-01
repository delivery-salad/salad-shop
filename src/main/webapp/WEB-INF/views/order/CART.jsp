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
						<!--  전체 체크박스  -->
						<div class="all-check-input-div">
							<input type="checkbox" class="all-check-input" checked="checked"><span class="all-check-span"> 전체선택</span>
						</div>
						<table>
							<thead>
								<tr>
									<th></th>
									<th>상품명</th>
									<th>상품금액</th>
									<th>상품 수량</th>
									<th>총 금액</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cartInfo}" var="ci">
								<tr>
								
									<td class="cart-info-td">
										<input type="hidden" class="individual-productPrice-input" value="${ci.productPrice }">
										<input type="hidden" class="individual-productCount-input" value="${ci.productCount }">
										<input type="hidden" class="individual-totalPrice-input" value="${ci.productPrice * ci.productCount }">
										<input type="hidden" class="individual-productNum-input" value="${ci.productNum }">
									</td>
									
									<td class="shoping__cart__item">
										<input type="checkbox" class="individual-cart-checkbox" checked="checked">
										<img src="<c:url value='/resources/img/cart/cart-1.jpg'/>" alt="" >
										<h5 name="product_name">${ci.productNum}</h5>
									</td>
									<td class="shoping__cart__price" value="${ci.productPrice}">
										$55.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="qty-box">
												<button class="minus-btn qtybtn">-</button>
												<input class="qty-input" type="text" value="${ci.productCount}" >
												<button class="plus-btn qtybtn">+</button>
												<button class="qty-modify-btn" data-cartNum="${ci.cartNum}">수량변경</button>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total totalPrice" name="totalPrice" value="${ci.productPrice * ci.productCount}"></td>
									<td class="shoping__cart__item__close">
										<span class="icon_close delete-btn" data-cartNum="${ci.cartNum}"></span>
									</td>
								</tr>
								</c:forEach>
								
								
								<tr>
									
									<td class="cart-info-td">
										<input type="hidden" class="individual-productPrice-input" value="${ci.productPrice }">
										<input type="hidden" class="individual-productCount-input" value="${ci.productCount }">
										<input type="hidden" class="individual-totalPrice-input" value="${ci.productPrice * ci.productCount }">
									</td>
									<td class="shoping__cart__item">
										<input type="checkbox" class="individual-cart-checkbox" checked="checked">
										<img src="<c:url value='/resources/img/cart/cart-2.jpg'/>" alt="" >
										<h5>${ci.productNum}</h5></td>
									<td class="shoping__cart__price"  >${ci.productPrice}</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="qty-box">
												<button class="minus-btn qtybtn">-</button>
												<input class="qty-input" type="text" value="${ci.productCount }">
												<button class="plus-btn qtybtn">+</button>
												<button class="qty-modify-btn" data-cartNum="${ci.cartNum}">수량변경</button>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total totalPrice" name="totalPrice" value="${ci.productPrice * ci.productCount}"></td>
									<td class="shoping__cart__item__close">
										<span class="icon_close delete-btn" data-cartNum="${ci.cartNum}"></span>
									</td>
								</tr>
								<tr>
								<td class="cart-info-td">
										<input type="hidden" class="individual-productPrice-input" value="${ci.productPrice }">
										<input type="hidden" class="individual-productCount-input" value="${ci.productCount }">
										<input type="hidden" class="individual-totalPrice-input" value="${ci.productPrice * ci.productCount }">
									</td>
									<td class="shoping__cart__item">
										<input type="checkbox" class="individual-cart-checkbox" checked="checked">
										<img src="<c:url value='/resources/img/cart/cart-3.jpg'/>" alt="" >
										<h5>Organic Bananas</h5></td>
									<td class="shoping__cart__total totalPrice" name="totalPrice" >₩69.00</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="qty-box">
												<button class="minus-btn qtybtn">-</button>
												<input class="qty-input" type="text" value="1">
												<button class="plus-btn qtybtn">+</button>
												<button class="qty-modify-btn" data-cartNum="${ci.cartNum}">수량변경</button>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total">₩69.99</td>
									<td class="shoping__cart__item__close">
										<span class="icon_close delete-btn" data-cartNum="${ci.cartNum}"></span>
									</td>
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
							<li>상품가격 <span class="totalPrice-span">₩454.98</span></li>
							<li>배송비 <span class="delivery-price">₩3,000</span></li>
							<li>총 결재금액 <span class="finalTotalPrice-span">₩3,000</span></li>
						</ul>
						<a href="#" class="primary-btn order-btn">구매하기</a>
					</div>
				</div>
			</div>
		</div>
		
		<!--  수량 조정 form  -->
		<form action="/order/updateCart" method="post" class="qty-update-form">
			<input type="hidden" name="cartNum" class="update-cartId">
			<input type="hidden" name="productCount" class="update-productCount">
			<input type="hidden" name="userId" value="${user.userId}">
		</form>
		<!--  삭제 form  -->
		<form action="/order/deleteCart" method="post" class="qty-delete-form">
			<input type="hidden" name="cartNum" class="delete-cartNum">
			<input type="hidden" name="userId" value="${user.userId}">
		</form>
		<!--  주문 form  -->
		<form action="/order/orderCheck/${user.userId}" method="get" class="order-form">
		
		</form>
		
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
	$(".plus-btn").on("click", function(){
		let quantity = $(this).parent("div").find("input").val();
		$(this).parent("div").find("input").val(++quantity);
	});
	
	$(".minus-btn").on("click", function(){
		let quantity = $(this).parent("div").find("input").val();
		if(quantity > 1){
			$(this).parent("div").find("input").val(--quantity);
		}
	}); 
	
	/** 수량 수정 버튼 */
	$(".qty-modify-btn").on("click", function(){
		let cartNum = $(this).data("cartnum");
		let productCount = $(this).parent("div").find("input").val();
		$(".update-cartNum").val(carNum);
		$(".update-productCount").val(productCount);
		$(".qty-update-form").submit();
	});
	
	/** 장바구니 삭제 버튼 */
	$(".delete-btn").on("click", function(e){
		e.preventDefault();
		const cartNum = $(this).data("cartnum");
		$(".delete-cartNum").val(cartNum);
		$(".qty-delete-form").submit();
	});
	
	
	$(document).ready(function(){
 		/** 종합 정보 섹션 정보 삽입 */
 		setTotalInfo();
	});
	
	/** 체크 여부에 따른 종합 정보 변화 */
	$(".individual-cart-checkbox").on("change", function(){
		/** 총 주문 정보 세팅( 총 금액, 배송비, 최종가격)*/
		setTotalInfo($(".cart-info-td"));
	});
	/** 체크박스 전체 선택*/
	$(".all-check-input").on("click", function(){
		if($(".all-check-input").prop("checked")){
			$(".individual-cart-checkbod").attr("checked", true);
		}else{
			$(".individual-cart-checkbox").attr("checked", false);
		}
		/** 총 주문 정보 세팅 (총 금액, 배송비, 최종 가격 ) */
		setTotalInfo($(".cart-info-td"));
	});


	/** 총 주문 정보 세팅 (총 금액, 배송비, 최종가격 )*/
	function setTotalInfo(){
		
		/** 종합 정보 섹션 정보 삽입  */
		let totalPrice = 0; //총금액 	
		let deliveryPrice = 0; //배송비 
		let finalTotalPrice = 0; //최종가격 (총 가격 + 배송비 )
		
		$(".cart-info-td").each(function(index, element){
			
			if($(element).find(".individual-cart-checkbox").is(":checked") === true){ //체크 여부 
				//총가격 
				totalPrice += parseInt($(element).find("individual-totalPrice-input").val());
			}
			
		});
		
		/** 배송비 결정 */
		if(totalPrice >= 30000) {
			deliveryPrice =0;
		} else if(totalPrice ==0) {
			deliveryPrice =0;
		} else {
			deliverPrice = 3000;
		}
		
		/** 최종 가격 */
		finalTotalPrice = totalPrice + deliveryPrice;
		
		/** 값 입력 */
		//총가격 
		$(".totalPrice-span").text(totalPrice.toLocaleString());
		// 배송비 
		$(".delivery-price").text(deliverPrice);
		// 최종가격 (총 가격 + 배송비 )
		$(".finalTotalPrice-span").text(finalTotalPrice.toLocaleString());
		
	}
	
	/** 주문 페이지 이동 */
	$(".order-btn").on("click", function(){
		let formContents = '';
		let orderNumber = 0;
		
		$(".cart-info-td").each(function(index, element){
			
			if($(element).find(".individual-cart-checkbox").is(":checked") === true){ //체크 여부 
			
			let productNum = $(element).find(".individual-productNum-input").val();
			let productCount = $(element).find(".individual-productCount-input").val();
			
			let productNumInput = "<input name='orders[" + orderNumber + "].productNum' type='hidden' value='" + productNum + "'>";
			formContents += productNumInput;
			
			let productCountInput = "<input name='orders[" + orderNumber + "].productCount' type='hidden' value='" + productCount + "'>";
			formContents += productCountInput;
			
			orderNumber += 1;
			
			} 
			
		});
		
		$(".order-form").html(formContents);
		$(".order-form").submit();
		
	});//주문페이지 이동 끝 
	
 
	 

</script>
</html>