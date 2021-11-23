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

    <!--메인 컨텐츠 영역/ 여길 수정하셔서 쓰시면 됩니당,,-->
        <div class="container">

            <!--중앙 메인 컨텐츠-->
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
						.recruting_img {cursor:pointer;} /* 커서를 이미지 위에 두었을 때 커서 바꾸는 기능  */ 
						</style>
						
                         <script type="text/javascript">
                        //대겸 이메일 전송 부분 
                        
                        
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
                                        title: '등록 완료',
                                        text: '전자근로계약서 첨부가 등록되었습니다.',
                                      }) */

                        	$.ajax({
                        		method:"POST",
                        		url:"${contextPath}/memberInfoMailSend.do", //${contextParh} 조심!!
                        		data: { "email":email, "fileNameSplitFull" : fileNameSplitFull, "fileNameSplit" : fileNameSplit}, //예제랑 조금 다르게 ajax 데이터를 넘기도록 한다 -> 이 방법이 더 확실히 넘어감 
                        		success:function(data){
                        			/* alert("전송완료"); */
                        			Swal.fire({
                                        icon: 'success',
                                        title: '전송 완료',
                                        text: '[메일함]에서 계약서를 확인해주세요.',
                                      })
                        			
                        			
                        				},
                        		error:function(){
                        			Swal.fire({
                                        icon: 'error',
                                        title: '전송 실패',
                                        text: '다시 시도해주세요.',
                                      })
                        			/* alert("오류입니다."); */
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
					            		<p>배송 > 배달대행</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'night_delivery'}">
					            		<p>배송 > 야간 택배</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'early_delivery'}">
					            		<p>배송 > 새벽 택배</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'baby_sitter'}">
					            		<p>베이비 시터</p>
					            	</c:when>
					            	<c:when test="${perApplication.user_apply_category == 'up_down'}">
					            		<p>배송 > 상하차</p>
					            	</c:when>
					            </c:choose>
                            </td>
                            <td style="border-left:1px solid gray">${perApplication.per_apply_region2}>${perApplication.per_apply_region3}</td>
                            <td style="border-left:0.5px solid gray; border-right:0.5px solid gray;">일용직</td>
                            <td>${perApplication.per_apply_age}세 </td>
                            <td>　　　　　</td>
                        </tr>
                    </table>
                </div>

                <div class="main_content2_center_item">
                    <p class="main_content2_subtitle1"><span style="color:rgba(120, 120, 120, 0.473);">|</span> 이력서</p>
                </div>

                <div class="main_content2_center_item">
                    <table class="main_content2_table2">
                        <tr class="main_content2_table2_tr1">
                            <td class="main_content2_table2_td1">이름</td>
                            <td class="main_content2_table2_td2">${perApplication.member_name}</td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">나이</td>
                            <td class="main_content2_table2_td2">${perApplication.per_apply_age}세 </td>
                        </tr>
                         <tr>
                            <td class="main_content2_table2_td1">성별</td>
                            <td class="main_content2_table2_td2">
                            <c:choose>
                               <c:when test="${perApplication.user_apply_gender == '1'}">
                                      <p>남</p> 
                               </c:when>
                               <c:when test="${perApplication.user_apply_gender == '2'}">
                                      <p>여</p> 
                               </c:when>
                            </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">자격증</td>
                            <td class="main_content2_table2_td2"> - </td>
                        </tr>
                        <tr>
                            <td class="main_content2_table2_td1">근무 지역</td>
                            <td class="main_content2_table2_td2">${perApplication.per_apply_region2}>${perApplication.per_apply_region3}</td>
                        </tr>
                         <tr>
                            <td class="main_content2_table2_td1">희망 직종</td>
                            <td class="main_content2_table2_td2">
                               <c:choose>
                                   <c:when test="${perApplication.user_apply_category == 'delivery_agent'}">
                                      <p>배달 대행</p> 
                                   </c:when>
                                   <c:when test="${perApplication.user_apply_category == 'night delivery'}">
                                      <p>야간 택배</p> 
                                   </c:when>
                                 </c:choose>
                            </td>
                        </tr>
                         <tr>
                            <td class="main_content2_table2_td1">희망 요일</td>
                            <td class="main_content2_table2_td2">
                            <c:choose>
                                   <c:when test="${perApplication. per_apply_day == 'mon'}">
                                      <p>월요일</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'tue'}">
                                      <p>화요일</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'wed'}">
                                      <p>수요일</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'thu'}">
                                      <p>목요일</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'fri'}">
                                      <p>금요일</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'sat'}">
                                      <p>토요일</p> 
                                   </c:when>
                                   <c:when test="${perApplication. per_apply_day == 'sun'}">
                                      <p>일요일</p> 
                                   </c:when>
                                    
                             </c:choose>
                             </td>
                        </tr>
                        
                         <tr>
                            <td class="main_content2_table2_td1">자기 소개</td>
                            <td class="main_content2_table2_td2">${perApplication.per_apply_intro}</td>
                        </tr>

                    </table>
                </div>

                <div class="main_content2_center_item">
                    <p class="main_content2_subtitle1"><span style="color:rgba(120, 120, 120, 0.473);">|</span> 추천 인재</p>
                </div>

                <div class="main_content2_center_item">

                      <div class="content-slider">
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="상품01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>김소민</p>
                                            <p>기타>행사판매</p>
                                            <p>서울시 마포구</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="상품01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>강진묵</p>
                                            <p>배송>상하차</p>
                                            <p>충북 청주시</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="상품01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>조예빈</p>
                                            <p>청소>원룸청소</p>
                                            <p>경기도 남양주시</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="resume-a img-wrap" href="#">
                                    <div class="resume-img-div">
                                        <img class="resume-img" src="${contextPath }/assets/personLogo.png" alt="상품01">
                                    </div>
                                    <div class="resume-info-div">
                                        <div class="info-div">
                                            <p>최준영</p>
                                            <p>배송>새벽택배</p>
                                            <p>경기도 과천시</p>
                                            <img class="srat-img" src="${contextPath }/assets/star/5star.png" alt="">
                                        </div>
                                    </div>
                                   
                                </a>
                            </div>

                	  </div>
               
		    	</div>

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
                        <P class="information_subtitle4">최근에 본 인재 목록</P>
                    </div>  
                    <ul class="aside_ul">
                        <li>
                            <div class="information2">
                                <p class="information_p3">최근에 본 인재가<br>없습니다.</p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
            
        </div>
    </section>

</body>
</html>