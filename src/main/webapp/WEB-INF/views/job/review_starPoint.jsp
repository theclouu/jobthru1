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
      
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
        <link href="star.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
        <script src="star.js"></script>
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
        <!--은빈 시작-->
        
    </head>
        <body>
      <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
      <script src="sweetalert2.min.js"></script>
      <link rel="stylesheet" href="sweetalert2.min.css">   
       <section class="page-section ">
        <div class="page-wrap">
                <!-- 시작-->

                <!DOCTYPE html>
                <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>별점 기능</title>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link rel="stylesheet" href="${contextPath }/css/review_StarPoint.css"/>
                    <script type="text/javascript" src="${contextPath }/js/review_StarPoint.js"></script>
                </head>
                <body>
                    <!--메인 컨텐츠 영역입니당-->
                    <section>
                    <!--메인 컨텐츠 영역/ 여길 수정하셔서 쓰시면 됩니당,,-->
                        <div class="container">
                            <!--왼쪽 사이드바-->
                            <div class="left_menu"></div> 
                            <!--중앙 메인 컨텐츠-->
                            <div class="eun_main_content">
                                <div class="eun_star">
                                    <h2>근무는 어떠셨나요?</h2>
                                    <form name="reviewform" class="reviewform" method="GET" action="${contextPath}/member/add_com_reply.do?rew_gubun=2">
                                        <input type="hidden" name="rate" id="rate" value="0"/>
                                        <p class="title_star">별점과 평가를 남겨주세요</p>
                                 
                                        <div class="review_rating rating_point">
                                            <div class="warning_msg">별점을 선택해 주세요.</div>
                                            <div class="rating">
                                                <div class="ratefill"></div>
                                                <!-- [D] 해당 별점이 선택될 때 그 점수 이하의 input엘리먼트에 checked 클래스 추가 -->
                                                <input type="checkbox" name="rating" id="rating11" value="1" class="rate_radio" title="1점">
                                                <label for="rating 11"></label>
                                                <input type="checkbox" name="rating" id="rating12" value="2" class="rate_radio" title="2점">
                                                <label for="rating12"></label>
                                                <input type="checkbox" name="rating" id="rating13" value="3" class="rate_radio" title="3점" >
                                                <label for="rating13"></label>
                                                <input type="checkbox" name="rating" id="rating14" value="4" class="rate_radio" title="4점">
                                                <label for="rating14"></label>
                                                <input type="checkbox" name="rating" id="rating15" value="5" class="rate_radio" title="5점">
                                                <label for="rating15"></label>
                                            </div>
                                        </div>
                                        <div class="review_contents">
                                            <div class="warning_msg">5자 이상의 평가를 작성해 주세요.</div>
                                            <textarea rows="10" class="review_textarea" name="rew_content"></textarea>
                                        </div>   
                                        <div class="cmd">
                                            <input type="button" name="save" id="save" value="등록">
                                        </div>
                                    </form>
                                </div>
                            </div>
                
                        </div>
                    </section>
                
                    
                </body>
                </html>