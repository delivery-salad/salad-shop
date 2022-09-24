<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="<c:url value='/product/productDelte'/>" method="post">
<input type="text" value="${product.productPrice}">
<input type="text" value="${product.productName}">
<input type="text" value="${product.productContent }">
<input type="text" value="${product.productCount }">

<!--  2022-09-22  1형식으로 나옴  -->
<input type="text" value="<fmt:formatDate value='${product.productRegistDate }' pattern='yyyy-MM-dd HH:mm:ss' />">
<input type="text" value="<fmt:formatDate value='${product.productUpdateDate }' pattern='yyyy-MM-dd HH:mm:ss' />">

<input type="hidden" name="productNum" value="${product.productNum}">

<button type="button" onclick="location.href='<c:url value="/product/productModify/productNum=${product.productNum}"/>'">변경</button>
<button type="submit" onclick="return confirm('정말로 삭제하시겠습니까?')">삭제</button>

</form>

<!-- Thu Sep 22 15:12:36 KST  2022 형식으로 나옴  
<input type="text" value="${product.productUpdateDate }">
-->



</body>
</html>