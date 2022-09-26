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
        margin-top: 150px;
        margin-left: 250px;
        position:absolute;
        width: 70%;
        padding-left: 30px;
    }

    .announcement-table{
        margin-top:30px;
    }

    /* 최근 주문정보 form */
    .form-total{
        width: 60%;
    }

    h3{
        margin-top:15px;
        margin-bottom: 15px;
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
            <div class="recent-delivery">
                <h3>환불 정보</h3>
                <hr>
                
                <table class="announcement-table table table-hover">
                    <thead style="background-color: #e9ecef; ">
                        <th scope="col">주문 번호</th>
                        <th scope="col">상품명</th>
                        <th scope="col">수량</th>
                        <th scope="col">금액</th>
                        <th scope="col">주문상태</th>
                        <th scope="col">처리여부</th>
                    </thead>

                    <tbody style="border-top : 3px solid #e9ecef">
                    <tr>
                        <td>1</td>
                        <td>고기 샐러드</td>
                        <td>1</td>
                        <td>30,000</td>
                        <td>배송 준비중</td>
                        <td><strong>환불 접수</strong></td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>연어 샐러드</td>
                        <td>3</td>
                        <td>15,000</td>
                        <td>배송 중</td>
                        <td><strong>환불 진행 중</strong></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>트러플 샐러드</td>
                        <td>2</td>
                        <td>80,000</td>
                        <td>배송 완료</td>
                        <td><strong>환불 완료</strong></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <hr>



            
    </div>


        <!-- The sidebar -->
        <div class="sidebar">
            <ul>
                <li>
                    <h3>주문 목록 </h3>
                    <ul>
                        <li><a href="#home">주문목록/배송 조회</a></li>
                        <li><a href="#news">취소/교환 내역</a></li>
                        <li><a href="#contact">환불 내역</a></li>
                    </ul>
                    <!-- 호버 될 때 마다 active 클래스 추가 -->
                </li>

                <li>
                    <h3>회원정보</h3>
                    <ul>
                        <li><a href="#home">회원정보 변경</a></li>
                        <li><a href="#news">배송지 관리</a></li>
                        <li><a href="#contact">회원탈퇴</a></li>
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


<%@ include file="../include/FOOTER.jsp"%>