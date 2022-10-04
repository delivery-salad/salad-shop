<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>





<!-- JQuery -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


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


<%@ include file="../include/HEADER.jsp"%>

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
										<input type="hidden"  id="aaa" class="individual-productPrice-input" value="${ci.productPrice }">
										<input type="hidden"  class="individual-productCount-input" value="${ci.productCount }">
										<input type="hidden" class="individual-totalPrice-input" value="${ci.totalPrice}">
										<input type="hidden" class="individual-productName-input" value="${ci.productName }">
										<input type="hidden" class="individual-productNum-input" value="${ci.productNum }">
										<input type="text" class="individual-cartNum-input" value="${ci.cartNum }">
									</td>
									
									<td class="shoping__cart__item">
										<input type="checkbox" class="individual-cart-checkbox" checked="checked">
										<img src="<c:url value='/resources/img/cart/cart-1.jpg'/>" alt="" >
										<h5 class="product_name"name="product_name">${ci.productName}</h5>
									</td>
									<td class="shoping__cart__price test-price" >${ci.productPrice}원</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="qty-box">
												<button class="minus-btn qtybtn">-</button>
												<input class="qty-input" type="text" value="${ci.productCount}" >
												<button class="plus-btn qtybtn">+</button>
												<button type="button" class="qty_modify_btn" data-cartNum="${ci.cartNum}">수량변경</button>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total totalPrice"  name="totalPrice">${ci.productPrice*ci.productCount }원</td>
									<td class="shoping__cart__item__close">
										<input type="text" class="individual-cartNum-input" value="${ci.cartNum }">
										<button class="icon_close deleteBtn" data-cartNum="${ci.cartNum}" type="button"></button>
									</td>
								</tr>
								</c:forEach>
								
								
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
							<li>상품가격 <span class="totalPrice-span"></span></li>
							<li>배송비 <span class="delivery-price"></span></li>
							<li>총 결재금액 <span class="finalTotalPrice-span"></span></li>
						</ul>
						<a href="#" class="primary-btn order-btn">구매하기</a>
					</div>
				</div>
			</div>
		</div>
		
		<!--  수량 조정 form  -->
		<form action="<c:url value='/order/updateCart'/>" method="post" class="qty-update-form">
			<input type="hidden" name="cartNum"  id="zzz" class="update-cartNum">
			<input type="hidden" name="productCount"  id="xxx" class="update-productCount">
			<input type="hidden" name="userEmail" value="${login.userEmail}">
		</form>
		<!--  삭제 form  -->
		<form action="<c:url value='/order/deleteCart/${login.userEmail}' />" method="post" class="qtyDeleteForm">
			<input type="hidden" name="cartNum" class="deleteCartNum">
			
		</form>
		<!--  주문 form  -->
		<form action="<c:url value='/order/orderCheck/${login.userEmail}' />" method="get" class="order-form">
		
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

	<%@ include file="../include/FOOTER.jsp"%>



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
	/* $(".qty_modify_btn").on("click", function(){
		/* var cartNum = parseInt($(".individual-cartNum-input").val());
		
		
		var productPrice = parseInt($('#aaa').val());
		var productCount = parseInt($('#bbb').val());
		console.log(typeof(cartNum));
		console.log(typeof(productPrice));
		console.log(typeof(productCount));;
		
		$("#zzz").val(cartNum);
		$("#xxx").val(productCount);
		//$('#ccc').val(productCount*productPrice);
		console.log('뷰 수정요청');
		*/
		
		 
	/*	 console.log($(this).siblings($('#aaa'))[3].value); //count	
		 console.log($(this).siblings($('#bbb'))[3].value);	 //price
		 

		 console.log(typeof($(this).siblings($('#aaa'))[3].value)); //count	
		 console.log(typeof($(this).siblings($('#bbb'))[3].value));	 //price
		 
		 $("#zzz").val(parseInt($(this).siblings($('#bbb'))[3].value));
		 $("#xxx").val(parseInt($(this).siblings($('#aaa'))[3].value));
		 $('#ccc').val(parseInt($(this).siblings($('#ccc'))[3].value));
		 $(".qty-update-form").submit();  
			 
		 
	}); */
	
	
	/** 수량 수정 버튼 */
	$(".qty-modify-btn").on("click", function(){
		let cartNum = $(this).data("cartnum");
		let productCount = $(this).parent("div").find("input").val();
		$(".update-cartNum").val(carNum);
		$(".update-productCount").val(productCount);
		$(".qty-update-form").submit();
	});
	
	
	
	
		
	/** 장바구니 삭제 버튼 */
	$(".deleteBtn").on("click", function(e){
		e.preventDefault();
		/* const cartNum = $(this).parent("td").find(".individual-cartNum-input").val(); */
		const cartNum = $(this).parent("td").find("input").val();
		$(".deleteCartNum").val(cartNum);
		
		$(".qtyDeleteForm").submit();
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
		$(".delivery-price").text(deliveryPrice);
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
