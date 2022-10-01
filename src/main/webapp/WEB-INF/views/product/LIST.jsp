<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../include/HEADER.jsp"%>




<section class="product spad">
	<div class="container">

		<div class="row">
			<c:forEach var="product" items="${productList}">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="product__item text-center">
						<a
							href="<c:url value='/product/productSelect/productNum=${product.productNum}&fileName=${product.productImgName}' />">
							<img alt="" src="<c:url value ='/product/productImgGet/fileName=${product.productImgName}' /> " name="productImgName">
							
						</a>
						<div class="product__item__text">
							<h6>
								<a
									href="<c:url value='/product/productSelect/productNum=${product.productNum}' />">${product.productName}</a>
							</h6>
							<h5>
								<fmt:formatNumber pattern="###,###,###"
									value="${product.productPrice}" />
								원
							</h5>
						</div>
					</div>
				</div>

			</c:forEach>



		

		
		</div>
		








	
		<!-- 페이징 처리  -->
		<div class="d-flex justify-content-center">
		<form action="<c:url value='/product/productList' />" name="pageForm">
     <nav aria-label="Page navigation example">
               <ul class="pagination" id="pagination">
               
               
                  <c:if test="${pagecreate.prev}">
                     <li class="page-item "><a class="page-link" href="#"
                        data-pageNum="${pagecreate.beginPage-1}">&laquo;</a></li>
                  </c:if>

                  <c:forEach var="num" begin="${pagecreate.beginPage}"
                     end="${pagecreate.endPage}">
                     <li class="page-item    ${pagecreate.paging.pageNum == num ? 'active' : ''}"><a class="page-link"
                        href="#" data-pagenum="${num}">${num}</a></li>
                  </c:forEach>

                  <c:if test="${pagecreate.next}">
                     <li class="page-item"><a class="page-link" href="#"
                        data-pageNum="${pagecreate.endPage+1}">&raquo;</a></li>
                  </c:if>
               </ul>

               <!-- 페이지 관련 버튼을 클릭 시 같이 숨겨서 보낼 값 -->
               <input type="hidden" name="pageNum"
                  value="${pagecreate.paging.pageNum}"> <input type="hidden"
                  name="countPerPage" value="${pagecreate.paging.countPerPage}">


            </nav>
         </form>
		</div>
		<!-- 페이징 처리 종료  --> 




		<c:if test="">
		
		</c:if>
	
		<!--  상품 등록 -->
		<div class="d-flex justify-content-end" style="margin: 0 60px 0 0; ">
			<button  type="button" class="btn btn-outline-primary" onclick="location.href='<c:url value='/product/productRegist' />'">상품 등록</button>
		</div>
		<!--  상품 등록 종료  -->
	

		
	

			
			
			
			
			
			
			
			
		</div> <!-- container 종료  -->



</section>







<%-- <c:forEach  var="product" items="${productList}">

<a href="<c:url value='/product/productSelect/productNum=${product.productNum}' />">
<img alt="xx" src="<c:url value='/resources/img/logo.png'/> ">
</a>

<input type="text" value="${product.productNum}">


<input type="text" value="${product.productPrice}">
<input type="text" value="${product.productName}">
<input type="text" value="${product.productContent }">
<input type="text" value="${product.productCount }">
<input type="text" value="<fmt:formatDate value='${product.productRegistDate }' pattern='yyyy-MM-dd HH:mm:ss' />">
<input type="text" value="<fmt:formatDate value='${product.productUpdateDate }' pattern='yyyy-MM-dd HH:mm:ss' />">

</c:forEach> --%>



























<%@ include file="../include/FOOTER.jsp"%>
<script>
	$(function() {
	
		$('#pagination').on('click', 'a', function(e) {
			e.preventDefault();
			console.log($(this));
			const value = $(this).data('pagenum');
			console.log(value);
	 		document.pageForm.pageNum.value = value;
			document.pageForm.submit(); 

		});
		
	})
	
		let ss='C:\\test\\upload\\31a0d497.jpg';
		console.log(ss.substring(0,ss.lastIndexOf("\\")));
		console.log('zzzzzzzzzz');
</script>
