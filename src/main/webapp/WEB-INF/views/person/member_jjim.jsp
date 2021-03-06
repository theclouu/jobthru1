<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   request.setCharacterEncoding("UTF-8");
%>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<<!DOCTYPE html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>찜 목록</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
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
        
        <link href="${contextPath }/css/com_statusRegister.css" rel="stylesheet" />
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
       <section class="page-section">
           <div class="page-wrap">
               <div class="top-content">
                   <h3>찜 목록</h3>
                   <div>
	                   <div class="form">
	                      <input class="search" type="text" placeholder="기업명, 공고제목으로 검색해보세요">
	                      <button class="search_btn"><img class="search_btn" src="${contextPath }/assets/search.png" alt=""></button>
	                   </div>
                   </div>
               </div>
               <div class="main-content">
                   <div class="board-list">
                       <div class="board-list-head">
                           <div class="applicant-img"><h5>사진</h5></div>
                           <div class="applicant-title"><h5>업체명/공고제목</h5></div>
                           <div class="applicant-time"><h5>근무시간</h5></div>
                           <div class="applicant-location"><h5>근무지역</h5></div>
                       </div>
                       <div class="board-list-body">
                            <a href="">
                             <c:forEach var="member_jjim" items="${member_jjim}" >   
                                <div class="item">
                                    <%-- <div class="applicant-img"><img class="board-img" src="${contextPath }/assets/${member_jjim.member_profileImage}" alt=""></div> --%>
                                    <div class="applicant-title">
                                        <div>${member_jjim.member_name }</div>
                                        <div>${member_jjim.com_apply_intro }</div>
                                    </div>
                                   <div class="applicant-time">00:00~ 19:00</div>
                                    <div class="applicant-location">${member_jjim.com_apply_region2}, ${member_jjim.com_apply_region3 }</div>
                                </div>
                                </c:forEach>
                            </a>
                           
                            
                            
                       </div>
                   </div>
               </div>
           </div>
        </section>



    </body>