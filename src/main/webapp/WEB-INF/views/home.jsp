<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<%@ include file="./include/HEADER.jsp"%>

<section class="py-5">
	<div class="row">
		<div class="categories__slider owl-carousel">
			<div class="col-lg-12">
				<div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/SALAD1.jpeg"></div>
			</div>
			<div class="col-lg-12">
				<div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/SALAD2.jpeg"></div>
			</div>
			<div class="col-lg-12">
				<div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/SALAD3.jpeg"></div>
			</div>
			<div class="col-lg-12">
				<div class="categories__item set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/SALAD1.jpeg"></div>
			</div>
			<!--<div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                        <h5><a href="#">drink fruits</a></h5>
                    </div>
                </div> -->
		</div>
	</div>

	<!-- 상품 내역  -->
	<div class="container px-4 px-lg-5 mt-5">
		<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">


			<div class="col mb-5">
				<div class="card h-100">
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD1.jpeg" alt="None" />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Fancy Product</h5>
							<!-- Product price-->
							$40.00 - $80.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">View options</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Sale badge-->
					<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD2.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Special Item</h5>
							<!-- Product reviews-->
							<div class="d-flex justify-content-center small text-warning mb-2">
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
							</div>
							<!-- Product price-->
							<span class="text-muted text-decoration-line-through">$20.00</span> $18.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Sale badge-->
					<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD3.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Sale Item</h5>
							<!-- Product price-->
							<span class="text-muted text-decoration-line-through">$50.00</span> $25.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD1.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Popular Item</h5>
							<!-- Product reviews-->

							<!-- 별점 기능  -->
							<div class="d-flex justify-content-center small text-warning mb-2">
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
							</div>

							<!-- Product price-->
							$40.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Sale badge-->
					<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD2.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Sale Item</h5>
							<!-- Product price-->
							<span class="text-muted text-decoration-line-through">$50.00</span> $25.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD3.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Fancy Product</h5>
							<!-- Product price-->
							$120.00 - $280.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">View options</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Sale badge-->
					<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD1.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Special Item</h5>
							<!-- Product reviews-->
							<div class="d-flex justify-content-center small text-warning mb-2">
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
							</div>
							<!-- Product price-->
							<span class="text-muted text-decoration-line-through">$20.00</span> $18.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col mb-5">
				<div class="card h-100">
					<!-- Product image-->
					<img class="card-img-top menu-image" src="${pageContext.request.contextPath }/resources/img/SALAD2.jpeg" alt="..." />
					<!-- Product details-->
					<div class="card-body p-4">
						<div class="text-center">
							<!-- Product name-->
							<h5 class="fw-bolder">Popular Item</h5>
							<!-- Product reviews-->
							<div class="d-flex justify-content-center small text-warning mb-2">
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
								<div class="bi-star-fill"></div>
							</div>
							<!-- Product price-->
							$40.00
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
						</div>
					</div>
				</div>
			</div>




		</div>
	</div>
</section>

<%@ include file="./include/FOOTER.jsp"%>
