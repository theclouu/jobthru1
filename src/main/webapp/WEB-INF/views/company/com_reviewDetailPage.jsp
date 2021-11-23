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
        <title>내 평가 목록 페이지 </title>
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
        
        <link href="${contextPath }/css/member_reviewDetailPage.css" rel="stylesheet" />
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
            
            <!--중앙 메인 컨텐츠-->
            <div class="main_content5">

                <div class="main_content3_center_item9">
                    <table class="main_content3_table1">
                        <tr>
                            <td class="main_content3_table1_td1" rowspan="3"><img class="login_default_img3" src="${contextPath}/assets/${member.member_profileImage}" alt=""></td>
                            <td><img class="recruting_img2" src="${contextPath}/assets/recruting.png" alt=""></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="5"><p class="main_content3_table1_p">${member.member_name }</p></td>
                        </tr>
                        <tr class="main_content3_table1_tr3">
                            <td class="main_content3_table1_tr3_td1">카테고리>청소</td>
                            <td class="main_content3_table1_tr3_td1">서울시 서초구</td>
                            <td class="main_content3_table1_tr3_td1">일용직</td>
                            <td class="main_content3_table1_tr3_td1"><a href=""><span style="font-size:0.6em; text-decoration: underline;">기업 홈페이지 바로가기</span></a></td>
                            <td>4.9 / 5.0</td>
                        </tr>
                    </table>

                </div>

                <div class="main_content3_center_item8">
                    <table class="main_content3_table2">
                        <tr>
                            <td class="main_content3_table2_td1">
                                <P>다른 구직자에게 의견을 들려주세요.</P>
                            </td>
                            <td class="main_content3_table2_td2">
                                <img class="rating_img2" src="${contextPath}/assets/5 star.png" alt="">
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item4">
                    <p class="main_content_subtitle2">평점 및 리뷰</p>
                </div>

                <div class="main_content3_center_item5">
                    <table class="main_content3_table3">
                        <tr class="main_content3_table3_tr">
                            <td class="main_content3_table3_tr_td"><a href="#!">전체보기</a></td>
                            <td class="main_content3_table3_tr_td"><a href="#!">최신순</a></td>
                            <td class="main_content3_table3_tr_td"><a href="#!">평점 높은 순</a></td>
                            <td><a href="#!">평점 낮은 순</a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content3_table4_td2">길은지</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath}/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">타 기업들에 비해 분위기도 좋았고 일처리도 깔끔했어요~</p>
                    <table class="main_content3_table6">
                        <tr>
                            <td class="main_content3_table6_td1">리뷰가 도움이 되었나요?</td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/yes.png" alt=""></a></td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/no.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item7">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/${member.member_profileImage}" alt=""></td>
                            <td class="main_content3_table4_td2">${member.member_name }</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p2">안녕하세요? ${member.member_name }입니다.<br>소중한 의견을 남겨주셔서 진심으로 감사드립니다.<br>앞으로도 좋은 일자리를 만들고자 노력하겠습니다.<br>감사합니다!</p>
                </div>

                <hr class="hr">

                <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content3_table4_td2">고민아</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath}/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">제안서 받아서 하루만에 나가서 일했어요 굳굳 다음에 또 시간되면 일하고 싶어요</p>
                    <table class="main_content3_table6">
                        <tr>
                            <td class="main_content3_table6_td1">리뷰가 도움이 되었나요?</td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/yes.png" alt=""></a></td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/no.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item7">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/${member.member_profileImage}" alt=""></td>
                            <td class="main_content3_table4_td2">${member.member_name }</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p2">안녕하세요? ${member.member_name }입니다.<br>소중한 의견을 남겨주셔서 진심으로 감사드립니다.<br>다음에 또 근무해주시면 너무 좋을 것 같습니다.<br>감사합니다!</p>
                </div>

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
            
        </div>
    </section>
    
</body>
</html>