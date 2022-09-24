<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../include/HEADER.jsp"%>

<style>
body, html {
	min-width: 100vw;
	min-height: 100vh;
}

/* float 해제하는 방법  -- float된 요소의 부모태그에 가상 요소를 만들고 해당 요소에 clear:both 를 지정 해준다*/
.par::after {
	clear: both;
}

.left_area {
	float: left;
	min-width: 10vw;
}

.right_area {
	float: left;
	min-width: 10vw;
}
</style>


<section class="par" style="min-width:100vw; min-height: 100vh">

	<!--왼쪽 10%-->
	<div class="left_area">　</div>

	<div style="background-color: beige; float: left; min-width: 80vw;">

		<div class="contaier">
			<div class="row justify-content-center" style="margin: 0;">


				<form action="<c:url value='/product/productRegist' />" method="post">

					<table>
                           <tbody>
                                <tr>
                                    <td>상품 이름　　</td>
                                    <td><input class="form-control" type="text" name="productName" placeholder="이름"></td>
                                </tr>
                                <tr>
                                    <td>상품 가격</td>
                                    <td><input class="form-control"  type="text" name="productPrice" placeholder="가격"></td>
                                </tr>
                                <tr>
                                    <td>상품 개수</td>
                                    <td><input class="form-control"  type="text" name="productCount" placeholder="개수">
                                    </td>
                                </tr>
                                <tr>
                                    <td>상품 내용</td>
                                    <td><input class="form-control"  type="text" name="productContent" placeholder="내용"></td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="text-center ">
                            <button type="submit" class="btn btn-outline-secondary">등록</button>
                        </div>

				</form>
			</div>

		</div>


	</div>

	<!--오른쪽 10%-->
	<div class="right_area">　</div>

</section>


<%@ include file="../include/FOOTER.jsp"%>