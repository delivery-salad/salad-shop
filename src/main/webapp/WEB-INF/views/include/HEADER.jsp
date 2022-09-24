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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/elegant-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/jquery-ui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/slicknav.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">


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
</style>
<body>


	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__logo">
							<a href="./index.html"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a>
							</div>
							<div class="header__top__right__language">
								<img src="${pageContext.request.contextPath }/resources/img/language.png" alt="">
								<div>English</div>
								<span class="arrow_carrot-down"></span>
								<ul>
									<li><a href="#">Spanis</a></li>
									<li><a href="#">English</a></li>
								</ul>
							</div>
							<div class="header__top__right__auth">
								<a href="<c:url value='/user/moveLogin'/>"><i class="fa fa-user"></i> Login</a>
							</div>

							<div class="header__cart">
								<ul>
									<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
									<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
									<!-- 비동기로 값 넣어주면 될 듯  -->
								</ul>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

	</header>


	<!-- Header Section End -->


	<!-- Categories Section Begin -->
	<section class="total-bar">


		<div class="container px-4 px-lg-5">

			<div class="container">
				<div class="row ">

					<div class="col-lg-12 col-md-12 text-bar">
						<nav class="header__menu">
							<ul>
								<li class="active"><a href="./MAIN.html">정기배송</a></li>
								<li><a href="./shop-grid.html">간편식</a></li>

								<!-- 호버 기능  -->
								<li><a href="#">샐러드</a>
									<ul class="header__menu__dropdown">
										<li><a href="./shop-details.html">샐러드</a></li>
										<li><a href="./shoping-cart.html">샐러드2</a></li>
										<li><a href="./checkout.html">샐러드3</a></li>
										<li><a href="./blog-details.html">샐러드4</a></li>
									</ul>
								</li>

								<li><a href="./blog.html">고기 샐러드</a></li>
								<li><a href="./blog.html">식단 세트</a></li>
								<li><a href="./blog.html">이벤트 혜택</a></li>
								<li><a href="./contact.html">기타</a></li>
							</ul>
						</nav>
					</div>

				</div>

			</div>

		</div>
	</section>
	<!-- Categories Section End -->