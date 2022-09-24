<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세보기 페이지</title>
</head>


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">


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
        /* 리뷰 */
        .review-content{
            list-style:none;
            color: #999999;
        }
        .review-title{
            font-weight: 700;
            margin-bottom: 10px;
        }
        .reveiwer{
            margin-right: 10px;
            margin-top: 20px;
            padding-right: 10px;
            
        }
        .re-image{
            margin: 15px 0;
            width: 100px;
            height: 100px;
        }
        .re-prod{
            font-weight: 700;
            margin-bottom: 5px;
            color: green;
        }
        .re-title{
            font-weight: 700;
            margin-bottom: 5px;
        }
        .re-content{
            border-bottom: #dee2e6 solid 1px;
            padding-bottom: 20px;
        }
        
        /** 수량 버튼 디자인  */
.qty-box {
	width: 140px;
	height: 50px;
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
  
<body>

	<jsp:include page="../include/HEADER.jsp" />


   <!-- Breadcrumb Section Begin -->
    <!-- <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Vegetable’s Package</h2>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/product/details/product-details-1.jpg" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3 name="productName">Vetgetable’s Package</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price">$50.00</div>
                        <p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam
                            vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet
                            quam vehicula elementum sed sit amet dui. Proin eget tortor risus.</p>
                        <div class="product__details__quantity">
							<div class="quantity">
								<div class="qty-box">
									<button class="minus-btn qtybtn">-</button>
									<input class="qty-input" type="text" value="1">
									<button class="plus-btn qtybtn">+</button>
								</div>
							</div>
						</div>
                        <a href="#" class="primary-btn cart-btn">ADD TO CARD</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <!-- <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                            <li><b>Weight</b> <span>0.5 kg</span></li>
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul> -->
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">상품설명</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">FAQ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">구매후기 <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus
                                        suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam
                                        vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,
                                        accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a
                                        pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula
                                        elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus
                                        et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam
                                        vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                        <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                        ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                        elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                        porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                        nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.
                                        Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed
                                        porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum
                                        sed sit amet dui. Proin eget tortor risus.</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>FAQ</h6>
                                    <p>배송안내<br><br>
                                        배송 비용 : 3,000원 (결제금액 50,000원 이상 무료) <br>
                                        배송 기간 : 1~2일 (제주도, 도서산간 2~3일)<br>
                                        배송 안내 : <br>
                                        
                                        - 결제완료 후 배송까지 2~3일 소요되며, 출고당일 오전 제작안내 알림톡 발송 <br>
                                        
                                        - 주문량이 많은 월~화, 연휴/명절 다음 날 출고의 경우 배송 지연이 발생할 수 있습니다. <br>
                                        
                                        - 제주 및 도서 산간지역은 운임 3,000원이 추가 됩니다.   <br>
                                        
                                        - 정기배송 홀딩기간은 주문일로부터 최대 3개월까지 입니다.<br>
                                        
                                        - 신선 식품 배송으로 월요일 및 공휴일 다음날은 배송이 불가합니다. <br>
                                        
                                        - 롯데 택배로 배송되며, 상품 출고 후 송장번호가 문자로 발송됩니다. [오후 5시 이후]  <br>
                                        
                                        - 스티로폼 박스에 아이스팩과 함께 포장하여 배송됩니다. (단, 겨울철에는 아이스팩을 제외하고 배송됩니다) <br>
                                        
                                        - 고객님께서 주문하신 상품은 발송되는 날, 당일 제작하여 배송됩니다.</p><br>
                                    <p>교환 및 반품안내<br><br>
                                        - 제품의 하자나 판매자의 실수로 인한 경우 100% 교환/반품/환불이 가능합니다. <br>
                                        
                                        - 식품 특성상 고객님의 단순변심으로 인한 상품 교환 및 반품은 불가하며, 상품 수령 후 임의 반품 및 환불 역시 불가합니다.  <br>
                                        
                                        - 정기배송 상품의 경우 첫 배송 수령 후, 구성품 변경이 가능하며 그 전에는 취소 후 재주문하시면 됩니다. <br>
                                        
                                        ​- 제품 문제 발생 시에는 수령 후 6일 이내 고객센터나 문의하기 게시판으로 접수 부탁드립니다.<br>
                                        
                                          (식품 배송 특성상 유선 상으로 제품 확인이 어려워 사진 촬영본 확인 후 검토하여 환불 또는 재발송으로 진행됩니다)<br>
                                        - 제품에 하자가 있는 경우, 제품 배송 즉시 판매자에게 사전 전화통화를 해야 하며 판매자 승인없이 임의 반품하는 경우 반품/교환이 제한될 수 있습니다. <br>
                                        
                                        
                                        - 상품 수령후 보관상 발생한 변질, 파손에 대해서는 반품/교환이 제한될 수 있습니다.</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <!-- <h5 class="review-title">구매후기</h5> -->
                                    <div class="review-box">
                                        <ul class="review-content">
                                            <li class="re-date"><span class="reveiwer">이름</span> 날짜</li>
                                            <li><img class="re-image" src="img/blog/blog-1.jpg" alt=""></li>
                                            <li class="re-prod">상품명</li>
                                            <li class="re-title">제목</li>
                                            <li class="re-content" >Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                                Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus
                                                suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam
                                                vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.
                                                Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,
                                                accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product__details__tab__desc">
                                    <!-- <h5 class="review-title">구매후기</h5> -->
                                    <div class="review-box">
                                        <ul class="review-content">
                                            <li class="re-date"><span class="reveiwer">이름</span> 날짜</li>
                                            <li><img class="re-image" src="img/blog/blog-1.jpg" alt=""></li>
                                            <li class="re-prod">상품명</li>
                                            <li class="re-title">제목</li>
                                            <li class="re-content" >Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                                Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus
                                                suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam
                                                vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.
                                                Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,
                                                accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a</li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
    
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
	
	/** 서버로 전송할 데이터 */
	const form = {
			userId : '${user.userId}',
			productNum : '${product.productNum}',
			productCount : ''
	}

	/** 장바구니 추가 버튼 */
	$(".cart-btn").on("click", function(){
		form.productCount = $(".qty-input").val();
		$.ajax({
			url: '/order/addCart',
			type: 'POST',
			data: form,
			success: function(result){
				alert("장바구니에 추가되었습니다.");
				if(result == '0'){
					alert("장바구니에 추가하지 못했습니다.");
				}else if(result == '1'){
					alert("장바구니에 추가되었습니다.");
				}else if(result == '2'){
					alert("장바구니에 이미 추가되었습니다.");
				}else if(result == '4'){
					alert("로그인이 필요합니다.");
				} 
			}
		})
	});
	
	
	

</script>

</html>