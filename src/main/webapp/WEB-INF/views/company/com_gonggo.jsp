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
	    <script src= "JS/scripts.js"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        
        <link href="${contextPath }/css/com_gonggo.css" rel="stylesheet" />
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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     <script src="sweetalert2.min.js"></script>
      <link rel="stylesheet" href="sweetalert2.min.css">
    <form method="get" action="">

        <section class="page-section">
           <div class="page-wrap">
           		<div class="container">
           
            <!--?????? ??????-->
            <!--?????? ????????????-->
            <div class="gonggo_top">
                <div class="gonggo_top_1">
                	<p></p>
                    <h2>${selectArticle.member_name}</h2>
                    <p>${selectArticle.com_apply_intro}</p>
                </div>
                <div class="gonggo_top_2">

                    <div class="circle_info">
                        <div class="info_wrap">
                            <img class="circle_image" src="${contextPath }/assets/timemoney.png" alt="">
                            <p>${selectArticle.com_apply_pay_day}???</p>
                        </div>
                        <div class="info_wrap">
                            <img class="circle_image" src="${contextPath }/assets/shortPeriod.png" alt="">
                            <p>??????</p>
                        </div>
                        <div class="info_wrap">
                            <img class="circle_image" src="${contextPath }/assets/anytime.png" alt="">
                            <p>????????????</p>
                        </div>
                        <div class="info_wrap">
                            <img class="circle_image" src="${contextPath }/assets/timeAgree.png" alt="">
                            
                            	<c:choose>
	                                    		<c:when test="${selectArticle.com_apply_day == 'mon'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'tue'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'wed'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'thu'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'fri'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'sat'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'sun'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		
	                                    	</c:choose>
                           
                        </div>
                    </div>
                </div>
            </div>
            <!--?????? ????????????-->
            <hr color="#14adc5">
            <div class="gonggo_middle">
                <!--?????? div-->
                <div class="left_layer">
                    <div class="gonggo_detail">
                        <div class="gonggo_detail_title">
                            <h2>????????????</h2>
                        </div>
                        <table>
                            <thead></thead>
                            <tbody>
                                <tr>
                                    <th>????????????</th>
                                    <td>
                                    	<c:choose>
		                            		<c:when test="${selectArticle.com_apply_category == 'delivery_agent'}">
		                            			<p>????????????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'quick_service'}">
		                            			<p>??? ?????????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'night_delivery'}">
		                            			<p>?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'early_delivery'}">
		                            			<p>?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'up_down'}">
		                            			<p>?????????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'manufac_process'}">
		                            			<p>??????&??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'construc_site'}">
		                            			<p>?????? ?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'pack_quality'}">
		                            			<p>??????&?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'und_digestion'}">
		                            			<p>????????? ????????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'ware_manage'}">
		                            			<p>????????? ?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'clean_studio'}">
		                            			<p>?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'clean_house'}">
		                            			<p>?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'clean_office'}">
		                            			<p>????????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'clean_bed'}">
		                            			<p>?????? ?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'install_repair'}">
		                            			<p>??????&?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'quarantine'}">
		                            			<p>??????, ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'car_wash'}">
		                            			<p>??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'flyer_promo'}">
		                            			<p>?????????&??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'event_sale'}">
		                            			<p>?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'product_facility'}">
		                            			<p>?????? ??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'serving_dish'}">
		                            			<p>??????&?????????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'housework'}">
		                            			<p>?????????(??????)</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'babysitter'}">
		                            			<p>?????????(???????????????)</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_category == 'carer'}">
		                            			<p>?????????(?????????)</p>
		                            		</c:when>
		                                </c:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <td>
                                    	<c:choose>
	                                    		<c:when test="${selectArticle.com_apply_day == 'mon'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'tue'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'wed'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'thu'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'fri'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'sat'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		<c:when test="${selectArticle.com_apply_day == 'sun'}">
	                                    			<p>?????????</p> 
	                                    		</c:when>
	                                    		
	                                    	</c:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <td>${selectArticle.com_apply_region2} ${selectArticle.com_apply_region3}</td>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <td>?????? ${selectArticle.com_apply_pay_day}???</td>
                                </tr>
                                <tr>
                                    <th>?????? ?????????</th>
                                    <td>????????????</td>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <td>
                                    	<c:choose>
		                            		<c:when test="${selectArticle.com_apply_career == 0}">
		                            			<p>????????????</p>
		                            		</c:when>
		                            		<c:otherwise>
		                            			<p>${selectArticle.com_apply_career}?????? ?????? ????????? </p>
		                            		</c:otherwise>
		                                </c:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <td>
                                    	<c:choose>
		                            		<c:when test="${selectArticle.com_apply_gender == 0}">
		                            			<p>????????????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_gender == 1}">
		                            			<p>??????</p>
		                            		</c:when>
		                            		<c:when test="${selectArticle.com_apply_gender == 0}">
		                            			<p>??????</p>
		                            		</c:when>
		                            		
		                                </c:choose>
                                    </td>
                                </tr>
                                <tr>
                                    <th>??????</th>
                                    <td>
                                    	${selectArticle.com_apply_age}??? ~ ${selectArticle.com_apply_age2}???
                                    </td>
                                </tr>
                                <tr>
                                    <th>????????????</th>
                                    <td>${selectArticle.com_apply_number}???</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--????????? div-->
                <script>
                	$(document).ready(function(){
                		$(".apply_button").click(function(){
                			$.ajax({
                				method:"GET",
                				url: "${contextPath}/company/com_gonggo_apply.do",
                				data: {"com_apply_ID" : ${com_apply_ID}},
                				success:function(data){
                					Swal.fire({
                	                    title: '?????? ??????',
                	                    text: "[?????? ??????]?????? ?????????????????????????",
                	                    icon: 'success',
                	                    showCancelButton: true,
                	                    confirmButtonColor: '#3085d6',
                	                    cancelButtonColor: '#d33',
                	                    confirmButtonText: '??????',
                	                    cancelButtonText: '????????????'
                	                }).then((result) => {
                	                    if (result.isConfirmed) {
                	                        location.replace('com_statusRegister.do');
                	                    }
                	                })

                				},
                				error:function(){
                					Swal.fire({
                                        icon: 'error',
                                        title: '?????? ??????',
                                        text: '?????? ??????????????????.',
                                      })
                				}
                				
                			})
                			
                			
                			
                		})
                	});
                </script>
                <!--?????? 3??? a ?????? ???????????????!-->
                <div class="right_layer">
                    <div class="buttons">
                        <button class="apply_button" type="button">????????????</button>
                        <!-- <button class="contact_button" type="button">?????????</button> -->
                         <a href="${contextPath }/job/calculator.do?price=${selectArticle.com_apply_pay_day }"><button class="calc_button" type="button">???????????????</button></a>
                    </div>
                    <div class="manager-info">
                        </table>
                        <p>???????????? ?????? ???????????? ???????????? ????????? ??????, ?????? ????????? ?????? ??? ????????????.</p>
                    </div>
                </div>
            </div>
            <hr color="#14adc5">
            <div class="gonggo_bottom">
                <div class="gonggo_bottom_1">
                    <div class="review">
                        <div class="ratings">
                            <h2>?????? ??????</h2>
                            <b>5.0 | <span>???</span><span>???</span><span>???</span><span>???</span><span>???</span></b><br>
                            <p>4?????? ??????</p>
                        </div>
                        <div class="review_detail">

                            <table class="main_content2_table3">
                                <tr>
                                    <td class="main_content2_table3_td1"><img class="login_default_img3"
                                            src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                                    <td class="main_content2_table3_td2">??? ???????????? ?????? ???????????? ????????? ???????????? ???????????????~</td>
                                </tr>
                            </table>
                            <table class="main_content2_table3">
                                <tr>
                                    <td class="main_content2_table3_td1"><img class="login_default_img3"
                                            src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                                    <td class="main_content2_table3_td2">?????? ???????????? ????????? ?????? 14?????? ???????????? ????????? ?????? ?????? ????????????.</td>
                                </tr>
                            </table>
                            <table class="main_content2_table3">
                                <tr>
                                    <td class="main_content2_table3_td1"><img class="login_default_img3"
                                            src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                                    <td class="main_content2_table3_td2">?????? ????????? ?????? ????????? ???????????? ????????? ???????????????! ???????????????</td>
                                </tr>
                            </table>
                            <table class="main_content2_table3">
                                <tr>
                                    <td class="main_content2_table3_td1"><img class="login_default_img3"
                                            src="${contextPath }/assets/login_default_image3.png" alt=""></td>
                                    <td class="main_content2_table3_td2">????????? ????????? ???????????? ????????? ???????????? ?????? ????????? ??? ???????????? ????????? ?????????</td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
                <!--<hr color="#14adc5">
                <div class="gonggo_bottom_2">
                    <div class="address">
                        <h2>????????????</h2>
                        <h5>????????? ?????????</h5>
                    </div>
                    <div class="map">
                        <a href="https://map.kakao.com/?urlX=500800&urlY=1106310&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false"
                            target="_blank">
                            <img width="504" height="310"
                                src="https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=500800&MY=1106310&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo"
                                style="border:1px solid #ccc"></a>
                        <div class="hide"
                            style="overflow:hidden;padding:7px 11px;border:1px solid #dfdfdf;border-color:rgba(0,0,0,.1);border-radius:0 0 2px 2px;background-color:#f9f9f9;width:482px;">
                            <strong style="float: left;">
                                <img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png"
                                    width="72" height="16" alt="????????????"></strong>
                            <div style="float: right;position:relative"><a
                                    style="font-size:12px;text-decoration:none;float:left;height:15px;padding-top:1px;line-height:15px;color:#000"
                                    target="_blank"
                                    href="https://map.kakao.com/?urlX=500800&urlY=1106310&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false">??????
                                    ?????? ??????</a>
                            </div>
                        </div>
                    </div>
                </div>-->
            </div>
           </div>
        </section>


	</form>
    </body>