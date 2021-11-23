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
        <title>평가 페이지</title>
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
         .main_content3_center_item6 {display:none;}
        </style>

    </head>

 <body>
        
       <section class="page-section ">
       
       <!-- DB값 잘 불러와지나 임시 테스트 문구 -->
       <!-- ${company_review } -->

    <!--메인 컨텐츠 영역/ 여길 수정하셔서 쓰시면 됩니당,,-->
        <div class="container">
<!--왼쪽 사이드바-->
            <div class="left_menu">

                <div class="left_menu_center_item">
                    <div>
                        <a href="#!">
                            <img class="login_default_img2" src="${contextPath }/assets/${member.member_profileImage }" alt="">
                            <br>
                        </a>
                    </div>
                    <div>
                        <P class="login_id">${member.member_name} 님</P>
                    </div>               
                </div>

                <div class="left_menu_center_item2">
                    <!--<div class="left_menu_center_item">
                        <a href="#!"><img class="chat_go_img" src="${contextPath }/assets/go_chat.png" alt=""></a>
                    </div>-->
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_resume_img" src="${contextPath }/assets/notice control.png" alt=""></a>
                        <a href="${contextPath }/company/com_gonggoRegister.do"><P class="left_menu_p1">기업 공고 등록</P></a>
                    </div>
                   
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_application_img" src="${contextPath }/assets/go_application.png" alt=""></a>
                        <a href="${contextPath }/person/member_statusRegister.do"><P class="left_menu_p1">지원자 현황</P></a>
                        <a href="${contextPath }/job/ad.do"><P class="left_menu_p2">광고 관리</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_elec_img" src="${contextPath }/assets/go_elec.png" alt=""></a>
                        <a href="${contextPath }/company/com_comTract.do"><P class="left_menu_p1">전자 근로 계약서 보기</P></a>
                        <a href="${contextPath}/job/calculator.do"><P class="left_menu_p2">급여 계산기</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_review_img" src="${contextPath }/assets/review_control.png" alt=""></a>
<%--                         <a href="${contextPath }/job/review_starPoint.do"><P class="left_menu_p1">리뷰 작성하기</P></a> --%>
                        <a href="${contextPath }/person/member_statusRegister_for_review.do"><P class="left_menu_p1">평가 작성하기</P></a>
                        <a href="${contextPath}/company/com_reviewPage.do"><P class="left_menu_p1">내가 작성한 평가 보기</P></a>
                        <a href="${contextPath}/company/com_reviewDetailPage.do"><P class="left_menu_p2">내가 받은 평가 목록</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_mypage1_img" src="${contextPath }/assets/go_mypage1.png" alt=""></a>
                        <a href="#!"><P class="left_menu_p1">기업 정보 수정</P></a>
                    </div>
                </div>

            </div> 
            <!--중앙 메인 컨텐츠-->
            <div class="main_content5">

                <div class="main_content3_center_item4">
                    <p class="main_content_subtitle2">내가 작성한 평가</p>
                </div>

                <div class="main_content3_center_item5">
                    <table class="main_content3_table3">
                        <tr class="main_content3_table3_tr">
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a0" href="${contextPath }/company/com_reviewPage.do">전체보기</a></td>
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a1" href="${contextPath }/company/com_reviewPage.do?day=1">1일</a></td>
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a30" href="${contextPath }/company/com_reviewPage.do?day=30">1개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a90" href="${contextPath }/company/com_reviewPage.do?day=90">3개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a180" href="${contextPath }/company/com_reviewPage.do?day=180">6개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a365" href="${contextPath }/company/com_reviewPage.do?day=365">12개월</a></td>
                            <td class="main_content3_table3_tr_td2"><a class="main_content3_table3_tr_td2_a730" href="${contextPath }/company/com_reviewPage.do?day=730">24개월</a></td>
                        </tr>
                    </table>
                </div>

				<c:forEach var="name" items="${company_review}">
				
					<div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath }/assets/${member.member_profileImage }" alt=""></td>
                            <td class="main_content3_table4_td2"><c:out value="${member.member_name }" /></td>
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
                            <td class="main_content3_table8_td"><a href="${contextPath }/job/update_Review.do?review_num=${name.review_num}""><img class="review_img" src="${contextPath }/assets/correct.png" alt=""></a></td>
                            <td class="main_content3_table8_td"><a onclick="return confirm('정말로 삭제하시겠습니까?')" href="${contextPath }/member/delete.do?review_num=${name.review_num}"><img class="review_img" src="${contextPath }/assets/delete.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>
				
				</c:forEach>


<%--                 <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath }/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2">OOO 기업</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">해당 지원자님께서 솔선수범하여 그 누구보다 열심히 근로해주신 것에 대해 무한한 감사함을 전달드립니다.</p>
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
                            <td class="main_content3_table4_td2">OOO 기업</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">길동님 덕분에 급한 불을 끌 수 있었습니다. 고생하셨어요!</p>
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
                            <td class="main_content3_table4_td2">OOO 기업</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">깔끔하신 일처리 솜씨에 정직원 채용 욕심이 났었습니다.</p>
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
                            <td class="main_content3_table4_td2">OOO 기업</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath }/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">리뷰를 남겨주셔서 감사합니다. 앞으로도 좋은 일자리를 선보일 수 있도록 노력하겠습니다.<br>감사합니다.</p>
                    <table class="main_content3_table8">
                        <tr>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/correct.png" alt=""></a></td>
                            <td class="main_content3_table8_td"><a href="#!"><img class="review_img" src="${contextPath }/assets/delete.png" alt=""></a></td>
                        </tr>
                    </table>
                </div> --%>

				  <div class="container mt-3 mb-3 d-flex">
					<button type="button" class="btn btn-success m-auto" id="more" style="background-color:#14ADC5; border-color:#14ADC5">더보기</button>
				  </div>

                <!-- <div class="main_content3_center_item5">
                    <table class="main_content3_table7">
                        <tr>
                            <td class="main_content3_table7_td"><a href="#!">1</a></td>
                            <td class="main_content3_table7_td"><a href="#!">2</a></td>
                            <td class="main_content3_table7_td"><a href="#!">3</a></td>
                            <td class="main_content3_table7_td"><a href="#!">4</a></td>
                            <td class="main_content3_table7_td"><a href="#!">5</a></td>
                        </tr>
                    </table>
                </div> -->

            </div>
             <!--오른쪽 사이드바-->
            <div class="aside">
                
                <div class="aside_center_item2">
                    <div>
                        <P class="information_subtitle4">당신을 위한 가이드</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information1">
                               <a href="${contextPath }/job/info1.do"><img class="information_img" src="${contextPath }/assets/information1.png" alt=""></a>
                                <p class="information_p1">최저임금 가이드</p>
                                <p class="information_p2">정보성 글</p>
                            </div>
                            <div class="information1">
                                <a href="${contextPath }/job/info3.do"><img class="information_img" src="${contextPath }/assets/information1.png" alt=""></a>
                                <p class="information_p1">근로계약서 <br>작성 가이드</p>
                                <p class="information_p2">정보성 글</p>
                            </div>
                            <div class="information1">
                                <a href="${contextPath }/job/info2.do"><img class="information_img" src="${contextPath }/assets/information1.png" alt=""></a>
                                <p class="information_p1">취업 사기 <br>예방 가이드</p>
                                <p class="information_p2">정보성 글</p>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="aside_center_item2">
                    <div>
                        <P class="information_subtitle4">최근에 본 인재</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information2">
                                <%-- <a href="#!"><img class="information_img" src="${contextPath }/assets/personLogo.png" alt=""></a>
                                <p class="information_p1">김소민</p> --%>
                                <p class="information_p3">최근에 본 인재가<br>없습니다.</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
            
        </div>
      </section>
	<script>
      $(document).ready(function(e) {
         $(".main_content3_center_item6").slice(0,5).show();
         $("#more").click(function(e){
            e.preventDefault();
            $(".main_content3_center_item6:hidden").slice(0,2).show();
            if($(".main_content3_center_item6:hidden").length == 0) {
               /* alert("No more divs"); */
            }
         })
               // 현재 파라미터 주소 받아와서 무슨 필터링 중인지 확인
               var here = window.location.search;
               
               if (${day} == '1') {

                  $(".main_content3_table3_tr_td2_a1").css({
                        'display':'block',
                        'width':'100%',
                        'height':'100%',
                          'background-color': 'aqua',
                         'font-weight': 'bold'
                  });

               } 
               else if (${day} == '30') {

                     $(".main_content3_table3_tr_td2_a30").css({
                           'display':'block',
                           'width':'100%',
                           'height':'100%',
                             'background-color': 'aqua',
                            'font-weight': 'bold'
                     });

               }
               else if (${day} == '90') {

                     $(".main_content3_table3_tr_td2_a90").css({
                           'display':'block',
                           'width':'100%',
                           'height':'100%',
                               'background-color': 'aqua',
                             'font-weight': 'bold'
                     });

               }
               else if (${day} == '180') {

                     $(".main_content3_table3_tr_td2_a180").css({
                           'display':'block',
                           'width':'100%',
                           'height':'100%',
                           'background-color': 'aqua',
                             'font-weight': 'bold'
                     });

               }
               else if (${day} == '365') {

                     $(".main_content3_table3_tr_td2_a365").css({
                           'display':'block',
                           'width':'100%',
                           'height':'100%',
                              'background-color': 'aqua',
                             'font-weight': 'bold'
                     });

               }
               else if (${day} == '730') {

                     $(".main_content3_table3_tr_td2_a730").css({
                           'display':'block',
                           'width':'100%',
                           'height':'100%',
                           'background-color': 'aqua',
                             'font-weight': 'bold'
                     });
               }
               else {
                     $(".main_content3_table3_tr_td2_a0").css({
                           'display':'block',
                           'width':'100%',
                           'height':'100%',
                           'background-color': 'aqua',
                             'font-weight': 'bold'
                     });

               }
      });
      
   </script>
    
</body>
</html>