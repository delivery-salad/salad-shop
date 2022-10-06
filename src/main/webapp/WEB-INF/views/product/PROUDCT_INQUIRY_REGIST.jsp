<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 문의</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body>

   <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-12 col-lg-12">
                    <form id="QnA_data" action="/product/productQnA">
                        <h1>상품 문의</h1>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td>작성자</td>
                                    <td><input type="text" class="form-control" name="qnaWriter" id="qneWriter"></td>
                                </tr>
                                
                                <tr>
                                    <td>비밀번호</td>
                                    <td><input type="text" class="form-control" name="qnaPw" id="qnaPw"></td>
                                </tr>
                                
                                <tr>
                                    <td>제목</td>
                                    <td><input type="text" class="form-control" name="qnaTitle" id="qnaTitle"></td>
                                </tr>
                                
                                <tr>
                                    <td>내용</td>
                                    <td ><textarea class="form-control" name="qnaContent" id="qnaContent" cols="30" rows="10" style="resize: none;"></textarea></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-center" style="margin-top: 10px;">
                            <button type="button" class="btn btn-success" id="regist_btn">문의글 등록</button>
                        </div>

					 <input type="hidden" name="productNum" value="${param.productNum}" id="productNum"> 
                    </form>
                </div>

            </div>
        </div>

</body>
</html>

<script>

$(function(){
	$('#regist_btn').click(function(){

		 	const a=$("#qneWriter").val();
		 	const b=$("#qnaPw").val();
		 	const c=$("#qnaTitle").val();
		 	const d=$("#qnaContent").val();
		 	const e=parseInt($("#productNum").val());
		 	
		
			const queryString={
					qnaWriter : a,
					qnaPw :b,
					qnaTitle : c,
					qnaContent : d,
					productNum : e
					
			};


			
				$.ajax({
					type: 'POST', 
					url: '<c:url value="/product/productQnA"/>', 
					data: JSON.stringify(queryString),
					contentType: 'application/json',
					dataType:'text',
					success: function(result) {					
						if(result=='success'){
			 	 			window.open('','_self').close(); 
						}
					},
					error: function(status, error) {
						console.log('QNA등록 실패!');
						console.log(status, error);
					}
					
				}); //end ajax (아이디 중복 확인)
	
		 
		 
		 
	 
		 /*   window.close();   */ 
	 
	});
	
});//JQuery종료 
</script>