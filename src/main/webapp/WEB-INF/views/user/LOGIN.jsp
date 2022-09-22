<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">


    <!-- Css Styles -->
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    
    



  <style>
    body {
      min-height: 100vh;

    }

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

    .regist-cancel-btn{
      text-align: center;
    }

    .regist-btn{
      margin-right: 100px;
    }

    .cont{
      margin-top: 50px;
      margin-bottom: 50px;
    }

    .text-bar{
        text-align: center;
    }

    /* .total-bar{
        background-color: #f5f5f5;
    } */
    
    .text-bar > nav > ul > li > a{
        font-size: 25px;
    }

    /* 로그인 form  */
    .login-form{
        margin-top: 100px;
        margin-bottom: 50px;
    }

    .img-sns{
        width: 50px;
        margin-left: 50px;
        
    }

    .social-login{
        text-align: center;
    }

    
  </style>
  
<body>

	<jsp:include page="../include/HEADER.jsp" />


    <section class="login-form">
        <div class="content">
            <div class="container">
              <div class="row">
                <div class="col-md-6 order-md-2">
                  <img src="/img/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
                </div>
                <div class="col-md-6 contents">
                  <div class="row justify-content-center">
                    <div class="col-md-8">
                      <div class="mb-4">
                      <h3>Sign In to <strong>SALAD DELIVERY</strong></h3>
                    </div>
                    <form action="#" method="post">
                      <div class="form-group first">
                        <label>아이디</label>
                        <input type="text" class="form-control" id="userId">
        
                      </div>
                      <div class="form-group last mb-4">
                        <label>비밀번호</label>
                        <input type="password" class="form-control" id="userPw">
                        
                      </div>
                      
                      <div class="d-flex mb-5 align-items-center">
                        <label class="control control--checkbox mb-0"><span class="caption">로그인 상태 유지</span>
                          <input type="checkbox" checked="checked"/>
                          <div class="control__indicator"></div>
                        </label>
                        <span class="ml-auto"><a href="#" class="forgot-pass">비밀번호 찾기</a></span> 
                      </div>
        
                      <input type="submit" value="Log In" class="btn text-white btn-block btn-success">
        
                      <span class="d-block text-left my-4 text-muted"> 소셜 로그인</span>
                      
                      <div class="social-login">

                        

                        <!-- <a href="#" class="kakao">
                            <img src="/img/kakao_login_medium_wide.png" alt="Image" class="img-sns">
                        </a>

                        <a href="#" class="kakao">
                            <img src="/img/btn_google_signin_light_normal_web@2x.png" alt="Image" class="img-sns">
                        </a> -->

                        <a href="#" class="naver">
                            <img src="/img/btnG_Naver.png" alt="Image" class="img-sns">
                        </a> 

                        <a href="#" class="kakao">
                            <img src="/img/kakao_icon.png" alt="Image" class="img-sns">
                        </a> 

                        <a href="#" class="google">
                            <img src="/img/btn-google.svg" alt="Image" class="img-sns">
                        </a> 

                      </div>
                    </form>
                    </div>
                  </div>
                  
                </div>
                
              </div>
            </div>
          </div>

    </section>
    
        <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    
    	<jsp:include page="../include/FOOTER.jsp" />
    
    
</body>
</html>