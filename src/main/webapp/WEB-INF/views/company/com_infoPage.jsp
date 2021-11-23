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
        
        <link href="${contextPath }/css/com_infoPage.css" rel="stylesheet" />
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

<div class="container">

            <!--중앙 메인 컨텐츠-->
            <div class="main_content2">

                <div class="main_content2_center_item">
                    <table class="main_content2_table1">
                        <tr>
                            <td class="main_content2_table1_td1" rowspan="3"><img class="login_default_img3" src="${contextPath }/assets/login_default_image2.png" alt=""></td>
                            <td><img class="send_proposal_img" src="${contextPath }/assets/recruting.png" alt=""></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="5"><p class="main_content2_table1_p">OOO 기업</p></td>
                        </tr>
                        <form name="add_jjim" method="post"  action="${contextPath}/person/add_jjim.do">
                        <tr class="main_content2_table1_tr3">
                            <td class="main_content2_table1_tr3_td">카테고리>청소</td>
                            <td class="main_content2_table1_tr3_td">서울시 서초구</td>
                            <td class="main_content2_table1_tr3_td">일용직</td>
                            <td class="main_content2_table1_tr3_td"><a href=""><span style="font-size:0.6em; text-decoration: underline;">기업 홈페이지 바로가기</span></a></td>
                            <td><input type="image" src="${contextPath }/assets/heart.png"  style="width:50px; height:50px;"></td>
                        </tr>
                        </form>
                    </table>

                </div>

                <div class="main_content2_center_item">
                    <p class="main_content2_subtitle1"><span style="color:rgba(120, 120, 120, 0.473);">|</span> 기업 정보</p>
                </div>

                <div class="main_content2_center_item">
                    <table class="main_content2_table2">
                        <tr class="main_content2_table2_tr1">
                            <td class="main_content2_table2_td1">기업형태</td>
                            <td class="main_content2_table2_td2">중소기업</td>
                            <td class="main_content2_table2_td3">OOO 기업과 일해야 하는 이유</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">산업</td>
                            <td class="main_content2_table2_td2">청소서비스</td>
                            <td class="main_content2_table2_td3" rowspan="2"><img class="company_info_img" src="${contextPath }/assets/company_info1.png" alt=""></td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">대표자명</td>
                            <td class="main_content2_table2_td2">김대표</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">기업위치</td>
                            <td class="main_content2_table2_td2">서울 서초구 효령로17, ㅁㅁ빌딩</td>
                            <td class="main_content2_table2_td3" rowspan="2"><img class="company_info_img" src="${contextPath }/assets/company_info2.png" alt=""></td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">설립일</td>
                            <td class="main_content2_table2_td2">2010년 9월 12일</td>
                        </tr>
                    </table>
                </div>

                <div class="main_content2_center_item">
                    <p class="main_content2_subtitle1"><span style="color:rgba(120, 120, 120, 0.473);">|</span> 기업 리뷰</p>
                </div>

                <div class="main_content2_center_item">
                    <table class="rating_table">
                        <tr>
                            <td class="rating_table_td1">5.0</td>
                            <td class="rating_table_td2"><img class="rating_img" src="${contextPath }/assets/5 star.png" alt=""></td>
                            <td class="rating_table_td3">(4개 리뷰)</td>
                            <td class="rating_table_td4"><a href="#!">더보기></a></td>
                        </tr>
                    </table>
                    <table class="main_content2_table3">
                        <tr>
                            <td class="main_content2_table3_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content2_table3_td2">타 기업들에 비해 분위기도 좋았고 일처리도 깔끔했어요~</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table3_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content2_table3_td2">목돈 만드려고 제안서 내고 14일날 일했는데 회신을 빨리 줘서 좋았어요.</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table3_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content2_table3_td2">다른 기업들 보다 설명도 잘해주고 일하기 괜찮았어요! 추천합니다</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table3_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content2_table3_td2">제안서 받아서 하루만에 나가서 일했어요 굳굳 다음에 또 시간되면 일하고 싶어요</td>
                        </tr>
                    </table>
                </div>

            </div>

            <!--오른쪽 사이드바-->
            <div class="aside">

                <div class="aside_center_item">
                    <a href="#!"><img class="entire_company_list_img" src="${contextPath }/assets/entire_company_list.png" alt=""></a>
                </div>

                <div class="aside_center_item2">
                    <div>
                        <P class="information_subtitle4">동종업계 기업 보기</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information">
                                <a href="#!"><img class="information_img" src="${contextPath }/assets/recent_img.png" alt=""></a>
                                <p class="information_p1">청소 나라(주)</p>
                                <p class="information_p2">최근에 최다 채용한<br>청소서비스 업체</p>
                            </div>
                            <div class="information">
                                <a href="#!"><img class="information_img" src="${contextPath }/assets/recent_img.png" alt=""></a>
                                <p class="information_p1">클린 데이</p>
                                <p class="information_p2">매출 급상승<br>청소서비스 업체</p>
                            </div>
                            <div class="information">
                                <a href="#!"><img class="information_img" src="${contextPath }/assets/recent_img.png" alt=""></a>
                                <p class="information_p1">에이클린(주)</p>
                                <p class="information_p2">가장 가까운 거리의<br>청소서비스 업체</p>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- <div>
                    <a href="#!"><P class="information_subtitle2">더보기></P></a>
                </div> -->

                <div class="aside_center_item2">
                    <div>
                        <P class="information_subtitle4">최근에 본 기업 목록</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information">
                                <a href="#!"><img class="information_img" src="${contextPath }/assets/recent_img.png" alt=""></a>
                                <p class="information_p1">청소 나라(주)</p>
                                <p class="information_p2">최근에 최다 채용한<br>청소서비스 업체</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
            
        </div>
        </section>

    </body>