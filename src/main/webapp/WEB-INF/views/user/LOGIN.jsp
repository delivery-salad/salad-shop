<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    




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
  

	<jsp:include page="../include/HEADER.jsp" />
  


 <section class="login-form">
        <div class="content">
            <div class="container">
              <div class="row">
                <div class="col-md-6 order-md-2">
                  <img src="${pageContext.request.contextPath }/resources/img/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
                </div>
                <div class="col-md-6 contents">
                  <div class="row justify-content-center">
                    <div class="col-md-8">
                      <div class="mb-4">
                      <h3>Sign In to <strong>SALAD DELIVERY</strong></h3>
                    </div>
                    <form action="<c:url value='/user/login'/>" method="post" id="loginForm">
                    
                      <div class="form-group first">
                        <label>이메일</label>
                        <input type="text" class="form-control" id="userId" name="userEmail">
                      </div>
                      
                      <div class="form-group last mb-4">
                        <label>비밀번호</label>
                        <input type="password" class="form-control" id="userPw" name="userPw">
                        
                      </div>
                      
                      <div class="d-flex mb-5 align-items-center">
                        
                        <span class="ml-auto"><a href="#" class="forgot-pass">비밀번호 찾기</a></span> 
                      </div>
        
                      
                      <button type="button" class="btn text-white btn-block btn-success" id="loginBtn" >로그인</button>
                      <button type="button" class="btn text-white btn-block btn-success" id="registBtn" >회원가입</button>
                      
                      
                      
        
                      <span class="d-block text-left my-4 text-muted"> 소셜 로그인</span>
                      
                      <div class="social-login">

                        

                        <!-- <a href="#" class="kakao">
                            <img src="/img/kakao_login_medium_wide.png" alt="Image" class="img-sns">
                        </a>

                        <a href="#" class="kakao">
                            <img src="/img/btn_google_signin_light_normal_web@2x.png" alt="Image" class="img-sns">
                        </a> -->

                        <%-- <a href="<c:url value='/user/login_naver'/>" class="naver"> --%>
                        <a href="${url }" class="naver">
                        
                            <img src="${pageContext.request.contextPath }/resources/img/btnG_Naver.png" alt="Image" class="img-sns">
                        </a> 

                        <a href="https://kauth.kakao.com/oauth/authorize?client_id=e7765b7b41a731a6d393a87d20f121a9&redirect_uri=http://localhost/salad/user/kakaoLogin&response_type=code" class="kakao">
                        <!-- REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요 -->
                            <img src="${pageContext.request.contextPath }/resources/img/kakao_icon.png" alt="Image" class="img-sns">
                        </a> 

                        <%-- <a href="#" class="google">
                            <img src="${pageContext.request.contextPath }/resources/img/btn-google.svg" alt="Image" class="img-sns">
                        </a>  --%>

                      </div>
                    </form>
                    </div>
                  </div>
                  
                </div>
                
              </div>
            </div>
          </div>

    </section>
    

    <script>
	$(function(){
		$('#loginBtn').click(function(){
			console.log('로그인 요청 ');
			
			if ($('#userId').val() === ''){
				alert('아이디를 입력해주세요.');
				return;
			}
			else if($('#userPw').val() === ''){
				alert('비밀번호를 입력해주세요.')
				return;
			}
			else{
				$('#loginForm').submit();
			}
		});
		
		$('#registBtn').click(function(){
			console.log('회원가입 요청');
			location.href = "<c:url value='/user/regist'/>";
		});
			
		
	}); 
	
	</script>
    
    
    
<%@ include file="../include/FOOTER.jsp"%>
