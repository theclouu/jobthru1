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
        <title>JobThrough-company's mypage</title>
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
	    <script src= "${contextPath }/JS/scripts.js"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        
        <link href="${contextPath }/css/ad.css" rel="stylesheet" />
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

        <!--메인 컨텐츠 영역/ 여길 수정하셔서 쓰시면 됩니당,,-->
        <div class="container">

            <!--광고 시작-->
            <div class="ad_container">
                <div class="ad_type">
                    <div class="main_content_subtitle1">
                    	<h2>광고 상품소개</h2>
                    </div>
                    <ul class="card-list">
                        <li class="card-cont">
                            <div>
                                <div class="card-body">
                                    <img class="card-img" src="${contextPath }/assets/ad1.png" alt="">
                                    <p>웹 메인 배너</p>
                                    <p>100만원 / 1주</p>
                                    <p>회사 공고페이지로 이동</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-cont">
                            <div>
                                <div class="card-body">
                                    <img class="card-img" src="${contextPath }/assets/ad2.png" alt="">
                                    <p>직무 상단 광고</p>
                                    <p>최소 5~10만원 / 1주</p>
                                    <p>직무 카테고리 최상단 노출</p>
                                </div>
                            </div>
                        </li>
                        <li class="card-cont">
                            <div>
                                <div class="card-body">
                                    <img class="card-img" src="${contextPath }/assets/ad3.png" alt="">
                                    <p>회원대상 이메일</p>
                                    <p>100만원 / 1주</p>
                                    <p>잡스루 회원대상 이메일 매주 화요일 발송</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="ad_effect">
                    <hr color="#14adc5">
                    <div class="effect_detail">
                        <div class="main_content_subtitle2">
	                        <h2>잡스루 광고효과</h2>
	                    </div>
	                    <div class="main_content_sub1">
	                        <p><i>"적극 채용 중인 우리회사, 회사카드 노출로 일반 공고 대비 '노출 주목도가 평균 2.5배' 증가합니다."</i></p>
	                        <br>
	                        <p>직무 카테고리 최상단에 위치</p>
	                        <ul class="main_content_ul1">
	                        <li class="main_content_li1">잡스루 내 회사 공고 페이지로 자동 연결됩니다</li>
	                        <li class="main_content_li1">전체 포지션을 한 눈에 볼 수 있어 가격 대비 효율이 좋습니다.</li>
							</ul>
							<p>회사 홍보까지 동시에!</p>
	                        <ul class="main_content_ul1">
	                        <li class="main_content_li1">매일 평균 100여개의 회사에 신규 등록되지만,</li>
	                        <li class="main_content_li1">항상 직무별 공고 최상단에서 지원자에게 노출됩니다.</li>
	                        </ul>
	                        <br>
	                        <p><i>온라인에서 가볍게 신청하고, 합리적인 가격으로 최대의 효과를 누려보세요~</i></p>
                        </div>
                    </div>
                    <div class="ad_button">
                        <button class="ad_but" type="button">잡스루 광고상품 문의하기</button>
                    </div>  
                </div>
            </div>
    </section>


</body>

</html>