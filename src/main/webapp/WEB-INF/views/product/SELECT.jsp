<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


    <style>
  /*     body,
      html {
        min-width: 100vw;
        min-height: 100vh;
      }


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
      } */
      

	ul li{
	float:left;
	width:25%
	border: 3px solid #ccc;
	}
	
	.qty-box{
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
	.count_btn {
	border: 0;
	outline: 0;
	background: #f5f5f5;
}
#scroll_menu{
	 position: sticky;
 	 top: 0px;
}

    </style>

<%@ include file="../include/HEADER.jsp"%>

<%-- <form action="<c:url value='/product/productDelte'/>" method="post">
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

</form> --%>

<!-- Thu Sep 22 15:12:36 KST  2022 형식으로 나옴  
<input type="text" value="${product.productUpdateDate }">
-->



    <section class="product-details spad">
        <div class="container">
            <div class="row">
        
        
         <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                        
                            <img class="product__details__pic__item--large"  src="<c:url value='/resources/img/salad.svg'/> " alt="" style="margin-top: -100px">
                        </div>
               
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3 name="productName">${product.productName}</h3>
              
              
                        <div class="product__details__price"><fmt:formatNumber pattern="###,###,###" value="${product.productPrice}" /> 원</div>
                        <p>${product.productContent}</p>
                        <div class="product__details__quantity">
							<div class="quantity">
								<div class="qty-box">
									<button type="button" class="count_minus count_btn"> - </button>
                                	<input  class="text-center valval" type="text"  value="1" style="width: 40px;">
                                	<button type="button" class="count_plus count_btn"> + </button>
								</div>
							</div>
						</div>
                        <a href="#" class="primary-btn cart-btn">ADD TO CARD</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
              			
              			  <div class="text-left product_count" style="margin-top: 30px;">
                                <button type="button" class="btn btn-secondary" style="width: 200px;">장바구니</button>
                                <button type="button" class="btn btn-success" style="width: 200px;">구매</button>
                            </div>
                    </div>
                </div>
        <div class="col-lg-12 col-md-12" id='scroll_menu' style="padding:0px;  hebackground-color:gray;  z-index:100; height: 100px;" >
					<div style="float:left; width: 25%; text-align: center;"><a href="#detail">상세설명</a></div>
					<div style="float:left; width: 25%; text-align: center;"><a href="#faq_info">FAQ</a></div>
					<div style="float:left;width: 25%; text-align: center;"><a href="#reviews">리뷰</a></div>
					<div style="float:left; width: 25%; text-align: center;"><a href="#one_one">1:1문의</a></div>
				
			
         
         </div>          
                
                
         <div class="col-lg-12" style="margin-top:100px " id="detail">
        	<h1>상품의 상세 이미지가 들어갈 공간 </h1>
         
         </div>       
                
                
                
                
                
                
                
                
        <div class="col-lg-12" style="margin-top:100px ">
        	<div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                    	<h3  class="dtit m_t50">배송안내</h3>
                    	<a id="faq_info"></a>
					<div class="admin_msg"><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">배송 비용 : 3,000원 (결제금액 50,000원 이상 무료)&nbsp;</span><br style="font-family: 돋움, dotum; font-size: 13.3333px;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">배송 기간 : 1~2일 (제주도, 도서산간 2~3일)</span><br style="font-family: 돋움, dotum; font-size: 13.3333px;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">배송 안내 :&nbsp;</span></p><p><font face="나눔바른고딕, NanumBarunGothic"><span style="font-size: 14.6667px;">- 결제완료 후 배송까지 2~3일 소요되며, 출고당일 오전 제작안내 알림톡 발송</span></font>&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt; color: rgb(255, 0, 0);">- 주문량이 많은 월~화, 연휴/명절 다음 날 출고의 경우 </span><span style="font-size: 14.6667px; font-family: 나눔바른고딕, NanumBarunGothic; color: rgb(255, 0, 0);">배송 지연이 발생할 수 있습니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt; color: rgb(255, 0, 0);">&nbsp;</span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">-&nbsp;</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">제주 및 도서 산간지역은 운임 3,000원이 추가 됩니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp;</span>&nbsp;&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 14.6667px;">-&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(36, 36, 36); font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;">정기배송 홀딩기간은 주문일로부터 최대 3개월까지 입니다.</span></p><p><span style="font-size: 14.6667px; font-family: 나눔바른고딕, NanumBarunGothic;">- 신선 식품 배송으로 월요일 및 공휴일 다음날은 배송이 불가합니다.&nbsp;</span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 롯데 택배로 배송되며, 상품 출고 후 송장번호가 문자로 발송됩니다. [오후 5시 이후]&nbsp;</span>&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 스티로폼 박스에 아이스팩과 함께 포장하여 배송됩니다. (단, 겨울철에는 아이스팩을 제외하고 배송됩니다)</span>&nbsp;</p><p style="font-family: 돋움, dotum; font-size: 13.3333px; line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 고객님께서 주문하신 상품은 발송되는 날, 당일 제작하여 배송됩니다.&nbsp;</span></p></div>
					<h3  class="dtit m_t50">교환 및 반품안내</h3>
					<div class="admin_msg">
						<p><font face="나눔바른고딕" size="3"><span style="font-size: 11pt;">- 제품의 하자나 판매자의 실수로 인한 경우 100% 교환/반품/환불이 가능합니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp;</span></font></p><p style="line-height: 1.8;"><span style="font-size: 10pt;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">-&nbsp;<span style="font-size: 11pt;">식품 특성상 고객님의 단순변심으로 인한 상품 교환 및 반품은 불가하며, 상품 수령 후 임의 반품 및 환불 역시 불가합니다.&nbsp;</span>&nbsp;</span></span></p><p style="line-height: 1.8;"><span style="font-size: 10pt;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 정기배송 상품의 경우 첫 배송 수령 후, 구성품 변경이 가능하며 그 전에는 취소 후 재주문하시면 됩니다.&nbsp;</span></span></p><p style="line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">​-&nbsp;<span style="font-size: 11pt;">제품 문제 발생 시에는 수령 후 6일 이내 고객센터나 문의하기 게시판으로 접수 부탁드립니다.</span></span></p><div style="line-height: 1.8; font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px; box-sizing: border-box;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp; (식품 배송 특성상 유선 상으로 제품 확인이 어려워 사진 촬영본 확인 후 검토하여 환불 또는 재발송으로 진행됩니다)</span></div><p style="line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 제품에 하자가 있는 경우, 제품 배송 즉시 판매자에게 사전 전화통화를 해야 하며 판매자 승인없이 임의 반품하는 경우 반품/교환이 제한될 수 있습니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp;</span></p><p><font face="나눔바른고딕" size="3"><span style="font-family: 돋움, dotum; font-size: 10pt;"></span><span style="font-family: 돋움, dotum; font-size: 10pt;"><span style="font-size: 10pt;"></span></span></font></p><p style="margin: 0px; padding: 0px; line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 상품 수령후 보관상 발생한 변질, 파손에 대해서는 반품/교환이 제한될 수 있습니다.</span></p>
					
                                </div>
                            </div>
        
        </div>
    
		</div>
		
         <div class="col-lg-12" style="margin-top:100px ">
         		<h3>상품 후기
         		<a id="reviews"></a>
         		</h3>
         		<div>
        		<table class="table">
        			<tbody>

        				<tr>
        					<td>작성자 | 작성일
        						<div>
        							<img alt="" src="<c:url value='/resources/img/SALAD1.jpeg'/> " width="100px" height="100px">
        							<div>내용</div>
        						</div>
        					</td>
        				</tr>
        				
        				<tr>
        					<td>작성자 | 작성일
        						<div>
        							<img alt="" src="<c:url value='/resources/img/SALAD1.jpeg'/> " width="100px" height="100px">
        							<div>내용</div>
        						</div>
        					</td>
        				</tr>
        				
        				<tr>
        					<td>작성자 | 작성일
        						<div>
        							<img alt="" src="<c:url value='/resources/img/SALAD1.jpeg'/> " width="100px" height="100px">
        							<div>내용</div>
        						</div>
        					</td>
        				</tr>
        				<tr>
        					<td></td>
        				</tr>
        				
        			</tbody>
        		
        		</table>
        			<div class="text-right">
        				<a href="#">더보기</a>
        			</div>
        		
        	</div>
         </div>
		
         <div class="col-lg-12" style="margin-top:100px ">
         	<h3>상품 Q&A</h3>
         	<a id="one_one"></a>
        	<div>
        		<table class="table">
        			<tbody>
        				<tr>
        					<td>번호1</td>
        					<td>제목</td>
        					<td>작성자</td>
        					<td>작성일</td>
        					<td>답변상태</td>
        				</tr>
        				<tr>
        					<td>번호2</td>
        					<td>제목</td>
        					<td>작성자</td>
        					<td>작성일</td>
        					<td>답변상태</td>
        				</tr>
        				<tr>
        					<td>번호3</td>
        					<td>제목</td>
        					<td>작성자</td>
        					<td>작성일</td>
        					<td>답변상태</td>
        				</tr>
        				<tr>
        					<td></td>
        					<td></td>
        					<td></td>
        					<td></td>
        					<td></td>
        				</tr>
        				
        			</tbody>
        		
        		</table>
        		
        	</div>
         </div>
        
        
        
        
        
        
        
        
        
        
        
   <%--      <section class="par" style="min-height:100vh">
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
        --%>


</div>  <!-- row 종료 -->
</div>  <!-- container 종료 -->

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


