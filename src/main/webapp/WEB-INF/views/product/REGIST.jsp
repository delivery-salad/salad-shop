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

<form action="<c:url value='/product/productRegist' />" method="post">

	<input type="text" name="productPrice" placeholder="가격">
	
	<input type="text" name="productName" placeholder="이름">
	<input type="text" name="productContent" placeholder="내용">
	<input type="text" name="productCount" placeholder="개수">

	<button type="submit">등록</button>

</form>
</body>
</html>