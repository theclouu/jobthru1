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
        <title>JobThrough-job seeker's reviewDetailPage</title>
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

    <!--?????? ????????? ??????/ ?????? ??????????????? ????????? ?????????,,-->
        <div class="container">
            
            <!--?????? ?????? ?????????-->
            <div class="main_content5">

                <div class="main_content3_center_item9">
                    <table class="main_content3_table1">
                        <tr>
                            <td class="main_content3_table1_td1" rowspan="3"><img class="login_default_img3" src="${contextPath}/assets/login_default_image3.png" alt=""></td>
                            <td><img class="recruting_img" src="${contextPath}/assets/send_proposal.png" alt=""></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="5"><p class="main_content3_table1_p">OOO ?????????</p></td>
                        </tr>
                        <tr class="main_content3_table1_tr3">
                            <td class="main_content3_table1_tr3_td1">????????????>??????</td>
                            <td class="main_content3_table1_tr3_td1">????????? ?????????</td>
                            <td class="main_content3_table1_tr3_td1">?????????</td>
                            <td class="main_content3_table1_tr3_td1">OO???</td>
                            <td>4.9 / 5.0</td>
                        </tr>
                    </table>

                </div>

                <div class="main_content3_center_item8">
                    <table class="main_content3_table2">
                        <tr>
                            <td class="main_content3_table2_td1">
                                <P>?????? ????????? ????????? ???????????????.</P>
                            </td>
                            <td class="main_content3_table2_td2">
                                <img class="rating_img2" src="${contextPath}/assets/5 star.png" alt="">
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item4">
                    <p class="main_content_subtitle2">?????? ??? ??????</p>
                </div>

                <div class="main_content3_center_item5">
                    <table class="main_content3_table3">
                        <tr class="main_content3_table3_tr">
                            <td class="main_content3_table3_tr_td"><a href="#!">????????????</a></td>
                            <td class="main_content3_table3_tr_td"><a href="#!">?????????</a></td>
                            <td class="main_content3_table3_tr_td"><a href="#!">?????? ?????? ???</a></td>
                            <td><a href="#!">?????? ?????? ???</a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2">OOO ??????</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath}/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">?????? ?????????????????? ?????????????????? ??? ???????????? ????????? ??????????????? ?????? ?????? ????????? ???????????? ??????????????????.</p>
                    <table class="main_content3_table6">
                        <tr>
                            <td class="main_content3_table6_td1">????????? ????????? ?????????????</td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/yes.png" alt=""></a></td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/no.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item7">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content3_table4_td2">?????????</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p2">???????????????? ??????????????????.<br>????????? ????????? ???????????? ????????? ??????????????????.<br>???????????????!</p>
                </div>

                <hr class="hr">

                <div class="main_content3_center_item6">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/login_default_image2.png" alt=""></td>
                            <td class="main_content3_table4_td2">XXX ??????</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"><img class="rating_img2" src="${contextPath}/assets/5 star.png" alt=""></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p1">????????? ????????? ?????? ?????? ??? ??? ???????????????. ??????????????????!</p>
                    <table class="main_content3_table6">
                        <tr>
                            <td class="main_content3_table6_td1">????????? ????????? ?????????????</td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/yes.png" alt=""></a></td>
                            <td class="main_content3_table6_td2"><a href="#!"><img class="review_img" src="${contextPath}/assets/no.png" alt=""></a></td>
                        </tr>
                    </table>
                </div>

                <div class="main_content3_center_item7">
                    <table class="main_content3_table4">
                        <tr>
                            <td class="main_content3_table4_td1"><img class="login_default_img3" src="${contextPath}/assets/login_default_image3.png" alt=""></td>
                            <td class="main_content3_table4_td2">?????????</td>
                        </tr>
                    </table>
                    <table class="main_content3_table5">
                        <tr>
                            <td class="main_content3_table5_td1">21/10/06</td>
                            <td class="main_content3_table5_td2"></td>
                        </tr>
                    </table>
                    <p class="main_content3_review_p2">???????????????? ??????????????????.<br>????????? ??? ??? ?????? ???????????? ??? ??? ???????????????.<br>???????????????!</p>
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
    </section>

    
</body>
</html>