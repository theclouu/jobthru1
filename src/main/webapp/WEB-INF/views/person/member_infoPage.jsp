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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.min.js"></script>
      <link rel="stylesheet" href="sweetalert2.min.css">
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

    <!--?????? ????????? ??????/ ?????? ??????????????? ????????? ?????????,,-->
        <div class="container">

            <!--?????? ?????? ?????????-->
            <div class="main_content2">

                <div class="main_content2_center_item">
                    <table class="main_content2_table1">
                        <tr>
                            <td class="main_content2_table1_td1" rowspan="3"><img class="login_default_img3" src="${contextPath }/assets/personLogo.png" alt=""></td>
                            <td colspan="5" style="padding-right: 5%;"> 
                            	<img class="recruting_img1" style="margin-right: 0px;" id="recruting_img"  src="${contextPath }/assets/send_proposal.png" alt="" >
                            	<label class="input-file-button" for="workPaperInput"><img class="recruting_img2"src="${contextPath }/assets/recrutingPaper.png" alt="" ></label>
                            	<input type="file" id="workPaperInput" style="display:none;">
                            </td>
                            <td>
<%--                             	<label class="input-file-button" for="workPaperInput"><img class="recruting_img"src="${contextPath }/assets/recrutingPaper.png" alt="" ></label>
                            	<input type="file" id="workPaperInput" style="display:none;"> --%>
                            </td>
                          <td></td>
                            <td></td>
                            <td></td> 
                        </tr>
                        
                        <style>
						.recruting_img {cursor:pointer;} /* ????????? ????????? ?????? ????????? ??? ?????? ????????? ??????  */ 
						</style>
						
                         <script type="text/javascript">
                        //?????? ????????? ?????? ?????? 
                        
                        
                        $("#recruting_img").click(function(){
                        	var email = "<c:out value='${perApplication.member_email}'/>";
                        	var filePath = $("#workPaperInput").val();
                        	var filePathSplit = filePath.split('\\');
                        	var filePathLength = filePathSplit.length;
                        	var fileNameSplit = filePathSplit[filePathLength-1];
                         	var fileNameSplitFull = 'C:\\Users\\krist\\Desktop\\' + fileNameSplit;
                    
                        	/*  alert("email : " + email + "filePath : " + fileNameSplitFull + "//" +fileNameSplit );  */
                        	/* Swal.fire({
                                        icon: 'success',
                                        title: '?????? ??????',
                                        text: '????????????????????? ????????? ?????????????????????.',
                                      }) */

                        	$.ajax({
                        		method:"POST",
                        		url:"${contextPath}/memberInfoMailSend.do", //${contextParh} ??????!!
                        		data: { "email":email, "fileNameSplitFull" : fileNameSplitFull, "fileNameSplit" : fileNameSplit}, //????????? ?????? ????????? ajax ???????????? ???????????? ?????? -> ??? ????????? ??? ????????? ????????? 
                        		success:function(data){
                        			/* alert("????????????"); */
                        			Swal.fire({
                                        icon: 'success',
                                        title: '?????? ??????',
                                        text: '[?????????]?????? ???????????? ??????????????????.',
                                      })
                        			
                        			
                        				},
                        		error:function(){
                        			Swal.fire({
                                        icon: 'error',
                                        title: '?????? ??????',
                                        text: '?????? ??????????????????.',
                                      })
                        			/* alert("???????????????."); */
                        		}
                        	});  
                        });
                        </script>
                        
                        <tr>
                            <td colspan="5"><p class="main_content2_table1_p">${perApplication.member_name}</p></td>
                        </tr>
                        <tr class="main_content2_table1_tr3">
                            <td>
                            	<c:choose>
					            	<c:when test="${perApplication.user_apply_category == 'delivery_agent'}">
					            		<p>?????? > ????????????</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'night_delivery'}">
					            		<p>?????? > ?????? ??????</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'early_delivery'}">
					            		<p>?????? > ?????? ??????</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'baby_sitter'}">
					            		<p>????????? ??????</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'up_down'}">
					            		<p>?????? > ?????????</p>
					            	</c:when>
					            </c:choose>
                            </td>
                            <td style="border-left:1px solid gray">${perApplication.per_apply_region2}>${perApplication.per_apply_region3}</td>
                            <td style="border-left:0.5px solid gray; border-right:0.5px solid gray;">?????????</td>
                            <td>${perApplication.per_apply_age}??? </td>
                            <td>???????????????</td>
                        </tr>
                    </table>
                </div>

                <div class="main_content2_center_item">
                    <p class="main_content2_subtitle1"><span style="color:rgba(120, 120, 120, 0.473);">|</span> ?????????</p>
                </div>

                <div class="main_content2_center_item">
                    <table class="main_content2_table2">
                        <tr class="main_content2_table2_tr1">
                            <td class="main_content2_table2_td1">??????</td>
                            <td class="main_content2_table2_td2">${perApplication.member_name}</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">??????</td>
                            <td class="main_content2_table2_td2">${perApplication.per_apply_age}??? </td>
                        </tr>
                         <tr>
                            <td class="main_content2_table2_td1">??????</td>
                            <td class="main_content2_table2_td2">
                            <c:choose>
                               <c:when test="${perApplication.user_apply_gender == '1'}">
                                      <p>???</p> 
                               </c:when>
                               <c:when test="${perApplication.user_apply_gender == '2'}">
                                      <p>???</p> 
                               </c:when>
                            </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">?????????</td>
                            <td class="main_content2_table2_td2"> - </td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">?????? ??????</td>
                            <td class="main_content2_table2_td2">${perApplication.per_apply_region2}>${perApplication.per_apply_region3}</td>
                        </tr>
                         <tr>
                            <td class="main_content2_table2_td1">?????? ??????</td>
                            <td class="main_content2_table2_td2">
                               <c:choose>
                                   <c:when test="${perApplication.user_apply_category == 'delivery_agent'}">
                                      <p>?????? ??????</p> 
                                   </c:when>
                                   <c:when test="${perApplication.user_apply_category == 'night delivery'}">
                                      <p>?????? ??????</p> 
                                   </c:when>
                                 </c:choose>
                            </td>
                        </tr>
                         <tr>
                            <td class="main_content2_table2_td1">?????? ??????</td>
                            <td class="main_content2_table2_td2">
                            <c:choose>
                                   <c:when test="${perApplication. per_apply_day == 'mon'}">
                                      <p>?????????</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'tue'}">
                                      <p>?????????</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'wed'}">
                                      <p>?????????</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'thu'}">
                                      <p>?????????</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'fri'}">
                                      <p>?????????</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'sat'}">
                                      <p>?????????</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'sun'}">
                                      <p>?????????</p> 
                                   </c:when>
                                    
                             </c:choose>
                             </td>
                        </tr>
                        
                         <tr>
                            <td class="main_content2_table2_td1">?????? ??????</td>
                            <td class="main_content2_table2_td2">${perApplication.per_apply_intro}</td>
                        </tr>

                    </table>
                </div>

                <div class="main_content2_center_item">
                    <p class="main_content2_subtitle1"><span style="color:rgba(120, 120, 120, 0.473);">|</span> ?????? ??????</p>
                </div>

                <div class="main_content2_center_item">

                      <div class="content-slider">
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>?????????</p>
                                            <p>?????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ????????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="??????01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>?????????</p>
                                            <p>??????>????????????</p>
                                            <p>????????? ?????????</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>

                	  </div>
               
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