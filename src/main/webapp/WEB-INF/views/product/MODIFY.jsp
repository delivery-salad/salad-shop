<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value='/product/productModify' />" method="post">

		<input type="text" name="productPrice" value="${product.productPrice}"> 
		<input type="text" name="productName" value="${product.productName}"> 
		<input type="text" name="productContent" value="${product.productContent }"> 
		<input type="text" name="productCount" value="${product.productCount }">


		<input type="hidden" name="productNum"  value="${product.productNum}">
		<button type="submit">변경</button>

	</form>
</body>
</html>