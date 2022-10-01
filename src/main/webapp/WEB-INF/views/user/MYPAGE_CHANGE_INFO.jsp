<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


    <style>
    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }

    .text-bar > nav > ul > li > a{
        font-size: 25px;
    }



    @media (min-width: 991.98px) {
  main {
    padding-left: 240px;
  }
}



    .sidebar {
        margin-left:30px;
        padding: 0px;
        width: 200px;
        position: sticky;
        height: 100%;
        overflow: auto;
    }

    /* Sidebar links */
    .sidebar a {
        display: block;
        color: black;
        padding: 16px;
        text-decoration: none;
    }

    /* Active/current link */
    .sidebar a.active {
        background-color: #04AA6D;
        color: white;
    }

    /* Links on mouse-over */
    .sidebar a:hover:not(.active) {
        background-color: #555;
        color: white;
    }

    /* Page content. The value of the margin-left property should match the value of the sidebar's width property */
    div.content {
        margin-left: 200px;
        padding: 1px 16px;
        height: 1000px;
    }

    /* On screens that are less than 700px wide, make the sidebar into a topbar */
    @media screen and (max-width: 700px) {
    .sidebar {
        width: 100%;
        height: auto;
        position: relative;
    }
    .sidebar a {float: left;}
    div.content {margin-left: 0;}
    }

    /* On screens that are less than 400px, display the bar vertically, instead of horizontally */
    @media screen and (max-width: 400px) {
    .sidebar a {
        text-align: center;
        float: none;
    }
    }

    .main-text{
        position: relative;
    }

    /* 본문이 들어가는 스타일 */
    .main-content{
        margin-left: 250px;
        position:absolute;
        width: 70%;
        padding-left: 30px;
    }

    /* 유저 수정 폼 */
    .total-box{
        
        border: 1px solid rgb(189, 186, 186);
        border-radius: 20px;
        max-width: 800px;
        min-width: 500px;
        padding: 20px 0;
        margin-left: 100px;
        margin-top:80px;
        
    }
    
    .box1{
        border-radius: 20px;
        background-color: #EFEFEF;
        color: #676767;
        min-width: 25%;
        height: 40px;
        line-height: 40px;
        margin-left: 10%;
        margin-right: 10%;
        float: left;
        text-align: center;
    }
    .box2{
        color: #676767;
        width: 75%;
        height: 40px;
        line-height: 40px;
        margin: 0 5%;
    }
    .boxbox{
        display: flex;
        margin: 5% auto;
    }

    /* .title-box{
        text-align: center;
        justify-content: center;
        margin: 0 auto 20px;
        font-size: 30px !important;
        border:1px solid lightgray;
        border-radius: 40px;
        width: 200px;
        background-color: rgb(228, 227, 227);
        color: rgb(132, 127, 127);
        font-weight: 500 !important;
    } */

    .btn-box::after{
        display: block;
        content: '';
        clear: both;
    }
    
    button:hover{
        cursor: pointer;
    }
    .btn-box{
        max-width: 800px;
        min-width: 400px;
        margin-left: 350px;
        margin-top:30px;
    }

    .form-total-box{
        max-width: 800px;
        min-width: 400px;
    }
    
    .modif-fin-btn{
        float:left;
        margin-right: 20%;
        box-sizing: border-box;
        text-align: center;
    }

    .cencel-btn{
        float:left;
        box-sizing: border-box;
        text-align: center;
    }

  </style>

  

<%@ include file="../include/HEADER.jsp"%>

      <section class="main-text">

        <!-- Page content -->
        <!-- <div class="content">
            <div>
                <label for="basic-url" class="form-label">Your vanity URL</label>
                <div class="input-group mb-3">
                <span class="input-group-text" id="basic-addon3">https://example.com/users/</span>
                <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
                </div>
            </div>
        </div>  -->

        <div class="main-content">
        <!-- Start 나의 정보 [개인]수정-->
        <div>

            <form class="form-total-box" action = "<c:url value='/user/MyModi'/>" method="post" role="form">


                <div class="total-box">
                    

                    <div class="boxbox">
                        <div class="box1">이메일</div>
                        <div class="box2 joinName">${login.userEmail }</div>
                    </div>


                    <div class="boxbox">
                        <div class="box1">휴대전화</div>
                        <div class="box2 input-group joinAddrDetail">
                        	<input type="text" class="form-control" id="phone" name="userPhone" placeholder="01023456789">
                        </div>
                    </div>

                    <div class="boxbox">
                        <label class="box1" for="inputJoinAddrBasic">기본주소</label>
                        <div class="box2 input-group joinAddrBasic">
                            <input type="text" class="form-control" id="basic-address" name="userBasicAddr">
                        </div>
                    </div>
                    <div class="boxbox">
                        <label class="box1" for="inputJoinAddrDetail">상세주소</label>
                        <div class="box2 input-group joinAddrDetail">
                            <input type="text" class="form-control" id="detail-address" name="userDetailAddr">
                        </div>
                    </div>
        
                </div>
                
                <input type="hidden" name="userEmail" value = ${login.userEmail }>

            
                <div class="btn-box">
                    <div class="modif-fin-btn">
                        <button type="submit" class="btn btn-outline-secondary px-3">수정완료</button>
                    </div>
                    <div class="cencel-btn">
                        <button type="button" onclick="history.back()" class="btn btn-outline-secondary px-3">취소</button>
                    </div>
                </div>





            </form>
        </div>
    </div>


                <!-- The sidebar -->
        <div class="sidebar">
            <ul>
                <li>
                    <h3>주문 목록 </h3>
                    <ul>
                        <li><a href="#home">주문목록/배송 조회</a></li>
                        <li><a href="<c:url value='/user/moveMyCanEx'/>">취소/교환 내역</a></li>
                        <li><a href="<c:url value='/user/moveMyRe'/>">환불 내역</a></li>
                    </ul>
                    <!-- 호버 될 때 마다 active 클래스 추가 -->
                </li>

                <li>
                    <h3>회원정보</h3>
                    <ul>
                        <li><a href="<c:url value='/user/moveMyUs'/>">회원정보 조회</a></li>
                        <%-- <li><a href="<c:url value='/user/moveMyADDR'/>">배송지 관리</a></li> --%>
                        <li><a href="<c:url value='/user/moveMyAu'/>">비밀번호 변경</a></li>
                        <li><a href="<c:url value='/user/moveMyDel'/>">회원탈퇴</a></li>
                    </ul>

                </li>

                <li>
                    <h3>고객센터</h3>
                    <ul>
                        <li><a href="#home">공지사항</a></li>
                        <li><a href="#news">1:1문의</a></li>
                        <li><a href="#contact">FAQ</a></li>
                    </ul>

                </li>

            </ul>
            
        </div>
        


      </section>
      
      
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>


window.onload = function(){
    document.getElementById("basic-address").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("basic-address").value = data.address; // 주소 넣기
                document.querySelector("input[id=detail-address]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>

<%@ include file="../include/FOOTER.jsp"%>