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
        <title>JobThrough-job seeker's mypage</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
      <style>
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');
      
      </style>
        <meta http-equiv="X-UA-Compatible" content="IE=11,chrome=1">
       <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi">
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Sly/1.6.1/sly.min.js"></script>
       <script src= "${contextPath }/JS/scripts.js"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        
        <link href="${contextPath }/css/com_myPage.css" rel="stylesheet" />
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
            <!--?????? ????????????-->
            <div class="left_menu">

                <div class="left_menu_center_item">
                    <div>
                        <a href="#!">
                            <img class="login_default_img2" src="${contextPath }/assets/personLogo.png" alt="">
                        </a>
                    </div>
                    <div>
                        <P class="login_id">${member.member_name}???</P>
                    </div>               
                </div>

                <div class="left_menu_center_item2">
                    <!-- <div class="left_menu_center_item">
                        <a href="#!"><img class="chat_go_img" src="${contextPath }/assets/go_chat.png" alt=""></a>
                    </div>-->
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_resume_img" src="${contextPath }/assets/go_resume.png" alt=""></a>
                        <a href="#!"><P class="left_menu_p1">?????? ????????? ??????</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_application_img" src="${contextPath }/assets/go_application.png" alt=""></a>
                        <a href="${contextPath }/company/com_statusRegister.do"><P class="left_menu_p1">?????? ??????</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="smart_match_img" src="${contextPath }/assets/smart_match.png" alt=""></a>
                        <a href="${contextPath }/job/job_listSudoPage.do?num=1"><P class="left_menu_p1">?????? ?????????</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_elec_img" src="${contextPath }/assets/go_elec.png" alt=""></a>
                        <a href="${contextPath }/company/com_comTract.do"><P class="left_menu_p1">?????? ?????? ????????? ??????</P></a>
                        <a href="${contextPath }/job/calculator.do"><P class="left_menu_p2">?????? ?????????</P></a>
                    </div>
                     <div class="left_menu_center_item">
                        <a href="#!"><img class="go_review_img" src="${contextPath }/assets/review_control.png" alt=""></a>
                        <a href="${contextPath }/job/review_starPoint.do"><P class="left_menu_p1">????????????</P></a>
                        <a href="${contextPath}/company/com_reviewPage.do"><P class="left_menu_p1">?????? ??? ?????? ??????</P></a>
                        <a href="${contextPath}/company/com_reviewDetailPage.do"><P class="left_menu_p2">??? ?????? ??????</P></a>
                    </div>
                    <div class="left_menu_center_item">
                        <a href="#!"><img class="go_mypage1_img" src="${contextPath }/assets/go_mypage1.png" alt=""></a>
                        <a href="#!"><P class="left_menu_p1">?????? ?????? ??????</P></a>
                    </div>
                </div>
            </div> 
            <!--?????? ?????? ?????????-->
            <div class="main_content5">

                <div class="main_content_center_item_card_list1">
                    <ul class="main_content_ul">
                        <li class="main_content_ul_li">
                            <div id="count_resume1">
                                <a href="#!"><p class="count_resume_p1">0</p></a>
                                <p class="count_resume_p2">?????? ??????</p>
                            </div>
                            <div id="count_resume2">
                                <a href="#!"><p class="count_resume_p1">0</p></a>
                                <p class="count_resume_p2">?????? ?????????</p>
                            </div>
                            <div id="count_resume3">
                                <a href="#!"><p class="count_resume_p1">0</p></a>
                                <p class="count_resume_p2">???????????? ??????</p>
                            </div>
                        </li>
                    </ul>
                </div>   

                <div class="main_content_sub">
                    <p class="main_content_subtitle1">????????? ??????</p>
                </div>

                <div class="main_content_center_item2">
                    <table id="main_content_table1">
                        <tr>
                            <th id="main_content_table1_th1">
                                <P>????????? ?????? ??? ????????? ???????????? ????????????!</P>
                            </th>
                            <th id="main_content_table1_th2">
                                <a href="#!"><img class="go_chat2_img" src="${contextPath }/assets/go_chat2.png" alt=""></a>
                            </th>
                        </tr>
                    </table>
                </div>
<br>
                <div class="main_content_sub">
                    <table id="main_content_table2">
                        <td class="main_content_table2_td1">
                                <P style="text-align:left; font-size: 1.4em;">${member.member_name }??? ?????? ??????</P>
                            </td>

                    </table>
                </div>

                <div class="main_content_sub"><!-- 
                    <p class="main_content_subtitle2"> </p> -->
                </div>

                <div class="main_content_center_item_card_list2">
                    <ul class="main_content_ul">
                        <li>
                         
                       <div class="content-slider">
                            <div>
                                <a class="img-wrap" href="#">
                                    <img class="add-info-img" src="${contextPath}/assets/delivery15.jpg" alt="">
                                    <h5>?????? ??????</h5>
                                    <p>11/5??? ?????? ???????????? ???? </p>
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath}/assets/delivery13.jpg" alt="">
                                    <h5>?????? ??????</h5>
                                    <p>????????? ?????? ??????! </p>
                                </a>   
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="${contextPath}/assets/delivery16.jpg" alt="">
                                    <h5>?????? ??????</h5>
                                    <p>?????? ?????? ?????? ???????????? </p>
                                </a>
                            </div>

                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!--????????? ????????????-->
           <div class="aside">
                
                <div class="aside_center_item2">
                    <div>
                        <P class="information_subtitle4">????????? ?????? ?????????</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information1">
                                <a href="${contextPath }/job/info1.do"><img class="information_img" src="${contextPath }/assets/information1.png" alt=""></a>
                                <p class="information_p1">???????????? ?????????</p>
                                <p class="information_p2">????????? ???</p>
                            </div>
                            <div class="information1">
                                <a href="${contextPath }/job/info3.do"><img class="information_img" src="${contextPath }/assets/information1.png" alt=""></a>
                                <p class="information_p1">??????????????? <br>?????? ?????????</p>
                                <p class="information_p2">????????? ???</p>
                            </div>
                            <div class="information1">
                                <a href="${contextPath }/job/info2.do"><img class="information_img" src="${contextPath }/assets/information1.png" alt=""></a>
                                <p class="information_p1">?????? ?????? <br>?????? ?????????</p>
                                <p class="information_p2">????????? ???</p>
                            </div>
                        </li>
                    </ul>
                </div>
                

                <div class="aside_center_item2">
                    <div>
                        <P class="information_subtitle4">????????? ??? ?????? ??????</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information2">
                               <%--  <a href="#!"><img class="information_img" src="${contextPath }/assets/recent_img.png" alt=""></a> --%>
                                <p class="information_p3">????????? ??? ?????????<br>????????????.</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
            
        </div>
    </section>

    
</body>
</html>