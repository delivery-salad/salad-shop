<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



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

/*주소찾기 버튼 디자인 */
.search_btn {
	position: relative;
	top: 46px;
	border: none;
}

/* 결제 상세 내 총금액 위 추가 보더 */
.add_border {
	border-top: solid 1px #e1e1e1;
	padding-top: 15px;
}
/** 배송지 버튼 */
.address-btn {
	width: 50%;
	height: 46px;
	background-color: #FFFFFF;
	color: black; border : 1px solid #e1e1e1;
	margin-top: 20px; margin-bottom : 5px;
	float: left;
	margin-bottom: 5px;
	border: 1px solid #e1e1e1;
}

.address-btn:hover {
	background: #848484;
	color: #FFFFFF;
}

.addressInfo-btn-div::after {
	content: '';
	display: block;
	clear: both;
}

.addressInfo-input-div {
	display: none;
}

.individual-productCount-span {
	margin-right: 20px;
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
						<h2>주문결제</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
	<form class="order-form" name="orderForm" action="<c:url value='/order/Order2'/>" method="post" >
		<div class="container">
		<input type="hidden" value="${cart.cartNum}" name="cartNum" readonly>
			<div class="checkout__form">
				<h4>주문내역</h4>
				<form action="#">
					<div class="row">
						<!--  회원, 배송 정보 -->
						<div class="col-lg-8 col-md-6 user-info-div">
							<div class="checkout__input">
								<input type="hidden" value="${login.userEmail}" name="userEmail" readonly>
							</div>
							<div class="checkout__input">
								<p >
									이름<span>*</span>
								</p>
								<input type="text" id="orderName" name="orderName" value="">
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											휴대전화<span>*</span>
										</p>
										<input type="text" id="orderPhone" name="orderPhone" value="">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											이메일<span>*</span>
										</p>
										<input type="text" id="orderEmail" name="orderEmail" value="">
									</div>
								</div>
							</div>

						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										우편번호<span>*</span>
									</p>
									<input type="text" class="addr1-input"
										id="orderAddress1" id="orderAddress1" name="orderAddress1" value="" readonly>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="checkout__input">
									<button type="button" class="primary-btn search_btn"
										onclick="searchAddress()">주소찾기</button>
								</div>
							</div>
						</div>
						<div class="checkout__input">
							<p>
								주소<span>*</span>
							</p>
							<input type="text" class="checkout__input__add addr2-input orderAddress2" name="orderAddress2"
								id="orderAddress2" value=""> 
							<input type="text"
								name="orderAddress3" class="addr3-input orderAddress3" id="orderAddress3" value="">
						</div>


						<!-- 	<div class="checkout__input addressInfo-div"> -->
								<!-- <p>
									기본배송지<span>*</span>
								</p> -->
<!-- 								<div class="addressInfo-btn-div">
									<button class="address-btn address-btn-1" type="button"
										onclick="showAdress('1')">기본 배송지</button>
									<button class="address-btn address-btn-2" type="button"
										onclick="showAdress('2')">직접 입력</button>
								</div> -->
								<%-- <div class="addressInfo-input-div-wrap">
									<div class="addressInfo-input-div addressInfo-input-div-1"
										style="display: block">

										<div class="checkout__input">
											<!-- <p>
												기존 배송지<span>*</span>
											</p> -->
											<input type="text" class="checkout__input__add"
													value="${login.userBasicAddr }" readonly> 
											<input type="text" value="${login.userDetailAddr }" readonly>
											
											<input class="selectAddress" value="T" type="hidden">
											
											<input class="orderName-input" value="${login.userName}" type="hidden">
											<input class="addr1-input" id="addr1-input" value="${userInfo.userAddr1}" type="hidden">
											<input class="addr2-input" id="addr2-input" value="${login.userBasicAddr}" type="hidden">
											<input class="addr3-input" id="addr3-input" value="${login.userDetailAddr}" type="hidden">
											
										</div>

									</div>
									<div class="addressInfo-input-div addressInfo-input-div-2">

										<div class="row">
											<div class="col-lg-6">
												<div class="checkout__input">
													<p>
														우편번호<span>*</span>
													</p>
													<input class="selectAddress" name="orderAddress1" value="F" type="hidden">
													
													<input type="text" class="addr1-input" id="addr1-input" name="orderAddress2"
														readonly>
												</div>
											</div>
											<div class="col-lg-3">
												<div class="checkout__input">
													<button type="button" class="primary-btn search_btn"
														onclick="searchAddress()">주소찾기</button>
												</div>
											</div>
										</div>
										<div class="checkout__input">
											<p>
												주소<span>*</span>
											</p>
											<input type="text" class="checkout__input__add addr2-input"
												id="addr2-input"> 
											<input type="text" name="orderAddress2"
												class="addr3-input" id="addr3-input">
										</div>
									</div>
								</div>
							</div>
 --%>
 
 
 

 
							<div class="checkout__input">
								<p>
									배송메모<span></span>
								</p>
								<input type="text" placeholder="배송전 미리 연락 바랍니다"
									class="checkout__input__add" name="deliveryComment">
							</div>
						</div>


						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4>결제 상세</h4>
								
								<!--  상품 정보  -->
								<div class="checkout__order__products">
									상품명 <span>상품금액</span><span>수량 &emsp;</span>
								</div>
								
								
								<ul class="product-list-price">
								
										<div class="product-price-list">
										<input type="hidden" class="individual-productNum-input" name="productNum" value="${cart.productNum} ">
										<input type="hidden" class="individual-productName-input" name="productName" value="${cart.productName} ">
										<input type="hidden" class="individual-productCount-span" name="orderCount" value="${cart.productCount}"/>
										<input type="hidden" class="individual-productPrice-span" name="ProductPrice" value="${cart.productPrice}"/>
										<input type="hidden" name="deliveryCost" value="3000"/>
										<input type="hidden"  name="totalPrice" value="${cart.productCount*cart.productPrice+3000}"/>
										
										
											<li class="individual-productName-input" name="productName" value="">${cart.productName} <span>원</span>
											<span class="individual-productPrice-span">${cart.productPrice}</span>
											<span  class="individual-productCount-span" name="orderCount" value="">${cart.productCount} &emsp;&emsp;</span>
											</li>
												
												<input type="hidden" class="individual-totalPrice-input" value="">
										</div>
						
								</ul>

								<!--  최종 금액  -->
								<div
									class="checkout__order__products add_border total-info-price-div">
									총 상품 금액 <span class="total-price-span">${cart.productCount*cart.productPrice}</span>
								</div>
								<div class="checkout__order__products">
									배송비 <span class="delivery-cost-span" name="deliveryCost" value="">3000</span>
								</div>
								<div class="checkout__order__total add_border">
									총 결제금액 ₩<span class="final-total-price-span" name="totalPrice" value="">${cart.productCount*cart.productPrice+3000}</span>
								</div>
								<div class="checkout__input__checkbox">
									<label for="acc-or"> 위 주문 내용을 확인 하였으며, 회원 본인은 개인정보 이용 및
										제공(해외직구의 경우 국외제공) 및 결제에 동의합니다. 
										<input type="checkbox" id="acc-or" name="agree"> 
										<span class="checkmark" id="check-span"></span>
									</label>
								</div>

							

								<button type="button" id="orderBtn" class="site-btn order-btn">결제하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- 주문요청 form -->
		
			<!-- 주문자 회원아이디  -->
			<input name="userEmail" value="${login.userEmail}" type="hidden">
			
			<!--  주소록 / 배송인  -->
			<!-- <input name="orderName" type="hidden">
			<input name="userAddrBasic" type="hidden">
			<input name="userAddrDetail" type="hidden"> -->
		
		</form>
		
		
		
		
	</section>
	<!-- Checkout Section End -->



<%@ include file="../include/FOOTER.jsp"%>


<!-- 다음 주소  -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

/* $(document).ready(function(){
	
	// 주문 정보 최신화 
	setTotalInfo();
	


}); */

/** 주소 content 버튼 동작 (숨김, 등장)*/
/* function showAdress(className) {
	/** content 모두 숨기기 */
/* 	$(".addressInfo-input-div").css('display', 'none'); */
	/** content 보여주기 */
/* 	$(".addressInfo-input-div-" + className).css('display', 'block'); */

	/** 버튼 색상 */
		/** 기본 색상 */
/* 		$(".address-btn").css('backgroundColor', '#FFFFFF');
		$(".address-btn").css('color', 'black'); */
		/** 지정 색상 변경 */
/* 		$(".address-btn-" + className).css('backgroundColor', '#848484');
		$(".address-btn-" + className).css('color', '#FFFFFF');
	 */
	/** selectAddress T/F */
		/** 모든 selectAddress F 만들기 */
/* 		$(".addressInfo-input-div").each(function(i, obj){
			$(obj).find(".selectAdress").val("F");
		}); */
		/** 선택한 selectAddress T 만들기 */
//		$(".addressInfo-input-div-" + className).find(".selectAddress").val("T");
// }    //주소 content 버튼 동작 끝 

 

//다음 주소 api 사용해 보기
function searchAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }	                

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('orderAddress1').value = data.zonecode;
            document.getElementById("orderAddress2").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("orderAddress3").focus();
        }
    }).open();
}
	

	/** 총 주문 정보 세팅 (배송비, 총 가격, 상품 수  )*/
/* 	function setTotalInfo() {

		let totalPrice = 0; /* 총 가격 =(모든상품 금액)  */
//		let deliveryCost = 0; /* 배송비 */
//		let finalTotalPrice = 0; /* 최종 금액 = (총가격 + 배송비)  */

//		$(".product-price-list").each(function(index, element){
			//총 가격 
/* 			totalPrice += parseInt($(element).find(".individual-totalPrice-input").val());
			
		)};
		 
		 
		totalPrice += ($('individual-productPrice-span').find("span").val());
		console.log(totalPrice.val());
		
		/** 배송비 결정 */
/* 		if(totalPrice >= 30000){
			deliveryCost = 0;
		}else if(totalPrice == 0){
			deliveryCost =0;
		}else {
			deliveryCost = 3000;
		}
		
		finalTotalPrice = totalPrice + deliveryCost;  */
		
		/**  값 입력 */
		
		/** 총 가격 */
/* 		$(".total-price-span").text(totalPrice.toLocaleString()); */
		/** 배송비 */
/* 		$(".delivery-cost-span").text(deliveryCost.toLocaleString());	
		console.log("배달료 " + delieveryCost); */
		/** 최종 가격 (총 가격 + 배송비 )*/
/* 		$(".final-total-price-span").text(finalTotalPrice.toLocaleString());

	}
	 */
	/**  주문요청 */
/* 	$(".order-btn").on("click", function(){ */
		
		/** 주소 정보 / 배송인 */
/* 		$(".addressInfo-input-div").each(function(i,obj){
			if($(obj).find(".selectAddress").val() === 'T'){
				$("input[name='orderName']").val($(obj).find(".orderName-input").val());
				$("input[name='userAddrBasic']").val($(obj).find(".addr2-input").val());
				$("input[name='userAddrBasic']").val($(obj).find(".addr3-input").val());
			}
		});
		
		/** 상품 정보 */
/* 		let formContents = '';
		$(".product-list-price").each(function(index, element){
			let productNum = $(element).find(".individual-productNum-input").val();
			let productCount = $(element).find(".individual-productCount-span").val();
			let productNum-input = "<input name='orders[" + index + "].productCount' type='hidden' value='" + productCount + "'>";
			form_contents += productCount-input;
		});
		$(".order-form").append(formContents);
		 */
		/** 서버 전송 */
/* 		$(".order-form").submit(); */
		//주문요청 끝 
		 
	// }); */  

    
	/**결제 버튼 */
	$('.order-btn').on("click", function(){
		
		if($())
		
		if($("#acc-or").is(":checked")){
			alert("주문되었습니다.");
			$(".order-form").submit();
		}else {
			alert('동의해주세요!');
			return "/order/ORDERCHECK2";
		
		}
		
		
	}) //결제끝 


	
</script>


