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
        <title>JobThrough-job seeker's review Page</title>
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
        
        <link href="${contextPath }/css/member_reviewPage.css" rel="stylesheet" />
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
       
    <!-- DB값 잘 불러와지나 임시 테스트 문구 -->
       <!-- ${member_review } -->

    <!--메인 컨텐츠 영역/ 여길 수정하셔서 쓰시면 됩니당,,-->
        <div class="container">
            <!--왼쪽 사이드바-->
            <div class="left_menu">

                <div class="left_menu_center_item">
                    <div>
                        <a href="#!">
                            <img class="login_default_img2" src="${contextPath }/assets/personLogo.png" alt="">
                        </a>
                    </div>
                    <div>
                        <P class="login_id">홍길동 님</P>
                    </div>               
                </div>

                <div class="left_menu_center_item2">
<%--                     <div class="left_menu_center_item">
                        <a href="#!"><img class="chat_go_img" src="${contextPath }/assets/go_chat.png" alt=""></a>
                    </div> --%>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_resume_img" src="${contextPath }/assets/go_resume.png" alt=""></a>
                        <a href="#!"><P class="left_menu_p1">나의 이력서 수정</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_application_img" src="${contextPath }/assets/go_application.png" alt=""></a>
                        <a href="${contextPath }/company/com_statusRegister.do"><P class="left_menu_p1">지원 목록</P></a>
                        <a href="${contextPath }/person/member_jjim.do"><P class="left_menu_p2">찜 목록</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="smart_match_img" src="${contextPath }/assets/smart_match.png" alt=""></a>
                        <a href="#!"><P class="left_menu_p1">지역 우선순</P></a>
                        <a href="#!"><P class="left_menu_p2">평점 우선순</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_elec_img" src="${contextPath }/assets/go_elec.png" alt=""></a>
                        <a href="${contextPath }/company/com_comTract.do"><P class="left_menu_p1">전자 근로 계약서 보기</P></a>
                        <a href="${contextPath }/job/calculator.do""><P class="left_menu_p2">공수 계산기</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_review_img" src="${contextPath }/assets/review_control.png" alt=""></a>
                        <a href="${contextPath }/job/review_starPoint.do"><P class="left_menu_p1">리뷰 작성하기</P></a>
                        <a href="${contextPath }/person/member_reviewPage.do"><P class="left_menu_p1">작성한 리뷰 보기</P></a>
                        <a href="${contextPath }/person/member_reviewDetailPage.do"><P class="left_menu_p2">내 리뷰 보기</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_mypage1_img" src="${contextPath }/assets/go_mypage1.png" alt=""></a>
                        <a href="#!"><P class="left_menu_p1">회원 정보 수정</P></a>
                    </div>
                </div>
            </div> 
            <!--중앙 메인 컨텐츠-->
            <div class="main_content5">

                <div class="main_content3_center_item4">
                    <p class="main_content_subtitle2">내가 작성한 리뷰</p>
                </div>

                <div class="main_content3_center_item5">
                    <table class="main_content3_table3">
                        <tr class="main_content3_table3_tr">
                            <td class="main_content3_table3_tr_td2"><a href="#!">전체보기</a></td>
                            <td class="main_content3_table3_tr_td2"><a href="#!">오늘</a></td>
                            <td class="main_content3_table3_tr_td2"><a href="#!">1개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a href="#!">3개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a href="#!">6개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a href="#!">12개월</a></td>
                            <td><a href="#!">3년</a></td>
                        </tr>
                    </table>
                </div>
                
				<c:forEach var="name" items="${member_review}">
				
					<div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2"><c:out value="${name.member_id }" /></td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1"><c:out value="${name.rew_date }" /></td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1"><c:out value="${name.rew_content }" /></p>
                    <table class="main_content3_table8">
                        <tr>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/correct.png" alt=""></a></td>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/delete.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>
				
				</c:forEach>
                

               <%--  <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2">홍길동</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">제안서 받아서 하루만에 나가서 일했어요 굳굳 다음에 또 시간되면 일하고 싶어요</p>
                    <table class="main_content3_table8">
                        <tr>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/correct.png" alt=""></a></td>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/delete.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2">홍길동</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">다른 기업들 보다 설명도 잘해주고 일하기 괜찮았어요! 추천합니다</p>
                    <table class="main_content3_table8">
                        <tr>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/correct.png" alt=""></a></td>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/delete.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2">홍길동</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">목돈 만드려고 제안서 내고 14일날 일했는데 회신을 빨리 줘서 좋았어요.</p>
                    <table class="main_content3_table8">
                        <tr>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/correct.png" alt=""></a></td>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/delete.png" alt=""></a></td>
                        </tr>
                    </table>
                </div> --%>

                <div class="main_content3_center_item5">
                    <table class="main_content3_table7">
                        <tr>
                            <td class="main_content3_table7_td"><a href="#!">1</a></td>
                            <td class="main_content3_table7_td"><a href="#!">2</a></td>
                            <td class="main_content3_table7_td"><a href="#!">3</a></td>
                            <td class="main_content3_table7_td"><a href="#!">4</a></td>
                            <td class="main_content3_table7_td"><a href="#!">5</a></td>
                        </tr>
                    </table>
                </div>

            </div>
            <!--오른쪽 사이드바-->
            <div class="aside">
                
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
</html>