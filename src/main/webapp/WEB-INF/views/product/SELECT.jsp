<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


    <style>
      body,
      html {
        min-width: 100vw;
        min-height: 100vh;
      }


      /* float 해제하는 방법  -- float된 요소의 부모태그에 가상 요소를 만들고 해당 요소에 clear:both 를 지정 해준다*/
      .par::after{
          clear: both;
      }
      .left_area{
          float: left;
          min-width: 20vw;

      }
      .right_area{
          float: left;
          min-width: 20vw;
      }
      



    </style>

<%@ include file="../include/HEADER.jsp"%>

<form action="<c:url value='/product/productDelte'/>" method="post">
<input type="text" value="${product.productPrice}">
<input type="text" value="${product.productName}">
<input type="text" value="${product.productContent}">
<input type="text" value="${product.productCount}">

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
<section class="par" style="min-height:100vh">
        
        <!--왼쪽 10%-->
        <div class="left_area">　</div>

        <div style="background-color: beige; float: left; min-width: 60vw;">
        
            <div class="contaier">
                <div class="row" style="margin: 0;">
                    
                    <div class="content_box" style="float: left;">

                        <!--이미지-->
                        <div class="img_div" style="padding-left: 40px; float: left;"  >
                            <img src="<c:url value='/resources/img/salad.svg'/> " alt="" width="568" height="570">
                        </div>


                        <!--내용 설명-->
                        <div class="text-right" style="float:left; padding-left: 20px;">
                            <h3 style="padding-top:100px;">${product.productName}</h3>

                            <h4 class="text-left" style="margin-top: 40px;">${product.productPrice} 원</h4>

                            <div class="text-left" style="margin-top: 30px">
                                배송정보
                            </div>
                            <div class="text-left" style="margin-top: 10px">
                                3000원   / 주문시결제(선결제) 
                            </div>

                            <div class="text-left"  style="margin-top: 30px">
                            ${product.productName}
                                <button type="button" class="count_minus"> - </button>
                                <input  class="text-center valval" type="text"  value="1" style="width: 40px;">
                                <button type="button" class="count_plus"> + </button>
                                
                            </div>

                            <div class="text-left" style="margin-top: 30px;">
                                <button type="button" class="btn btn-secondary" style="width: 200px;">장바구니</button>
                                <button type="button" class="btn btn-success" style="width: 200px;">구매</button>
                            </div>

                        </div>
                        


                    </div>
                    
                    
                </div>
     
            </div>
        
        
        </div>

        <!--오른쪽 10%-->
        <div  class="right_area">　</div>

    </section>


<%@ include file="../include/FOOTER.jsp"%>




<script>
    $(function(){

        var valu=$('.valval').val();

        $('.count_minus').click(function(){
            
            if(valu<=1){
                $('.valval').val(1);
                return;
            }
            valu=parseInt(valu)-1;
            $('.valval').val(valu);
        });

        $('.count_plus').click(function(){
            
            if(valu>=9){
                $('.valval').val(9);
                return;
            }
            valu=parseInt(valu)+1;
            $('.valval').val(valu);
        });



    }); //jquery종료 
</script>


