<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%>   
<!DOCTYPE html>
    <head>
        <c:choose>
		<c:when test="${result=='loginFailed'}">
		  <script>
		    window.onload=function(){
		    	Swal.fire({
		    		  icon: 'error',
		    		  title: '아이디와 비밀번호가 틀립니다',
		    		  text: '아이디와 비밀번호를 다시 확인해주세요.'
		    		})
		    }
		  </script>
		</c:when>
	</c:choose>  	
        
       <link href="${contextPath}/css/login.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
        
        <!-- image slide -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

        <script>
            $(document).ready(function(){
              $('.slider').bxSlider({
                auto: true
              })
              $('.content-slider').bxSlider({
                  moveSlides:1,
                  minSlides:3,
                  maxSlides:3,
                  slideWidth:300,
                  auto: false
              })
            });
        </script>

        <style>
        .bx-wrapper {border:0;background:#fbfbfb;box-shadow:none;}
        </style>
	
	</head>
    <body>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <section class="page-section">
        <div class="page-wrap">
            <!-- 은빈 로그인 코드 시작 -->
        
        <div class ="login_body">
           <div class="login_container">
            <div class="title">
                <h2>Login</h2>
            </div>
            <hr color="#14adc5">
            <!--로그인 -->
            <form name ="frmLogin" method="POST" action="${contextPath}/loginaction.do" >
                <div class="eun_input-box">
                <input class= "eun_input" type="text" name="member_id" placeholder="아이디" required="required" >
                </div>
                <div class="eun_input-box">
                <input class= "eun_input" type="password" name="member_password" placeholder="비밀번호" required="required">
                </div>
                <div class="eun_btn_box">
                    <button class="eun_btn" type="submit">Login
                    </button>
                </div>
                <p class="eun_message">잡스루가 처음이신가요? <a href="${contextPath }/person/member_Select.do"> 회원가입</a></p>
            </form> 
        </div>
        </section>

    </body>