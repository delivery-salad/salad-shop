<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문페이지</title>
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
						<h2>주문결제</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">

			<div class="checkout__form">
				<h4>주문내역</h4>
				<form action="#">
					<div class="row">
						<div class="col-lg-8 col-md-6">
						<div class="checkout__input">
								<p>
									아이디<span></span>
								</p>
								<input type="text" value="" readonly>
							</div>
							<div class="checkout__input">
								<p>
									이름<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											휴대전화<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											이메일<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<p>
									기본배송지<span>*</span>
								</p>
								<input type="text" placeholder="서울시 강남구"
									class="checkout__input__add">
								<div class="checkout__input__checkbox">
									<label for="diff-acc"> 배송지 변경 <input type="checkbox"
										id="diff-acc"> <span class="checkmark"></span>
									</label>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											우편번호<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-3">
									<div class="checkout__input">
										<button type="button" class="primary-btn search_btn">주소찾기</button>
									</div>
								</div>
							</div>

							<div class="checkout__input">
								<p>
									주소<span>*</span>
								</p>
								<input type="text" placeholder="서울시 강남구"
									class="checkout__input__add"> <input type="text"
									placeholder="세부주소">
							</div>

							<div class="checkout__input">
								<p>
									배송메모<span></span>
								</p>
								<input type="text" placeholder="배송전 미리 연락 바랍니다"
									class="checkout__input__add">
							</div>

						</div>
						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4>결제 상세</h4>
								<div class="checkout__order__products">
									상품명 <span>상품금액</span>
								</div>
								<ul>
									<li>Vegetable’s Package <span>$75.99</span></li>
									<li>Fresh Vegetable <span>$151.99</span></li>
									<li>Organic Bananas <span>$53.99</span></li>
								</ul>
								<div class="checkout__order__products add_border">
									총 금액 <span>$750.99</span>
								</div>
								<div class="checkout__order__products">
									배송비 <span>$750.99</span>
								</div>
								<div class="checkout__order__total add_border">
									총 결제금액 <span>$750.99</span>
								</div>
								<div class="checkout__input__checkbox">
									<label for="acc-or"> 위 주문 내용을 확인 하였으며, 회원 본인은 개인정보 이용 및
										제공(해외직구의 경우 국외제공) 및 결제에 동의합니다. <input type="checkbox"
										id="acc-or"> <span class="checkmark"></span>
									</label>
								</div>

								<!-- <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Check Payment
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>
                                </div> -->

								<button type="submit" class="site-btn">결제하기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->

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
</html>