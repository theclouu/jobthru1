<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   request.setCharacterEncoding("UTF-8");
%>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<!DOCTYPE html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Job Through - main</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${contextPath }/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" type="text/css"/>
        <meta http-equiv="X-UA-Compatible" content="IE=11,chrome=1">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi">
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Sly/1.6.1/sly.min.js"></script>
	    <script src= "JS/scripts.js"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        
        <link href="${contextPath }/css/styles_com.css" rel="stylesheet" />
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
        
        <section class="page-section ">
			 <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                        <div class="title"><h4>?????? ?????????</h4></div>
                        <div class="content-slider">
                           
                            
                            <c:forEach var="myMatching" items="${myMatching}" >
                             <div class="slide-content">
	                            	<a class="resume-a img-wrap" href="${contextPath}/person/member_infoPage.do?per_apply_ID=${myMatching.per_apply_ID}">
	                                    <div class="resume-img-div">
	                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
	                                    </div>
	                                    <div class="resume-info-div">
	                                        <div class="info-div">
	                                            <p>${myMatching.member_name}</p>
	                                            <p>
	                                            	<c:choose>
					                            		<c:when test="${myMatching.user_apply_category == 'delivery_agent'}">
					                            			<p>?????? > ????????????</p>
					                            		</c:when>
					                            		<c:when test="${myMatching.user_apply_category == 'night_delivery'}">
					                            			<p>?????? > ?????? ??????</p>
					                            		</c:when>
					                            		<c:when test="${myMatching.user_apply_category == 'early_delivery'}">
					                            			<p>?????? > ?????? ??????</p>
					                            		</c:when>
					                            		<c:when test="${myMatching.user_apply_category == 'baby_sitter'}">
					                            			<p>????????? ??????</p>
					                            		</c:when>
					                            		<c:when test="${myMatching.user_apply_category == 'up_down'}">
					                            			<p>?????? > ?????????</p>
					                            		</c:when>
					                                </c:choose>
	                                            </p>
	                                            <p>${myMatching.per_apply_region3}</p>
	                                            
	                                        </div>
	                                    </div>
	                                </a>
                                 </div>
                            </c:forEach>
                                
                           
                                    
                        </div>                   
                    </div>
                    </div>
             <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                        <div class="title"><h4>?????? ????????? ???????????? ?????????!</h4></div>
                        <div class="content-slider">
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>?????????</p>
                                            <p>?????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ????????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????&??????>??????</p>
                                            <p>?????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>??????</p>
                                            <p>????????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            
                            
                        </div>
                    </div>
                
            </div>         
            <div class="page-wrap">
                  
                <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                        <div class="title"><h4>????????? HOT ?????????</h4></div>
                        <div class="content-slider">
                               <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/packing4.jpg" alt="">
                                    <h5>?????? ??????</h5>
                                    <p>10??? 6??? ????????? ???????????? ???~</p>
                                </a>
                            </div>   
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/clean3.jpg" alt="">
                                    <h5>?????? ??????</h5>
                                    <p>10??? 26??? ???????????? ?????????</p>
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/babysitter1.jpg" alt="">
                                    <h5>?????? ??????(???)</h5>
                                    <p>????????? ?????? ????????? ???????????? ???~</p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/construct5.jpg" alt="">
                                    <h5>?????? ?????????</h5>
                                    <p>10??? 21??? ?????? ????????? ???????????? ??? </p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/delivery11.jpg" alt="">
                                    <h5>????????? ???</h5>
                                    <p>??? ?????? ???????????? ??? ????????????.</p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/clean7.jpg" alt="">
                                    <h5>?????? ??????(???)</h5>
                                    <p>????????? ?????? 27??? ?????? ???????????? ???!</p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath }/assets/packing1.jpg" alt="">
                                    <h5>?????? ??????</h5>
                                    <p>????????? ????????? ?????? ?????? ????????????.</p>
                                </a>
                            </div>
                            
                            

                        </div>
              
                    </div>
                          
                </div>	
                          
                </div>
               
              
        </section>


    </body>