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
<html lang="en">

<head>
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.min.js"></script>
      	<link rel="stylesheet" href="sweetalert2.min.css">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>회원가입 페이지</title>
        <!-- Favicon-->
        <link rel="icon" type="${contextPath }/assets/image/x-icon" href="assets/favicon.ico" />
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
	    <script src= "${contextPath }/js/scripts.js"></script>
        <!-- Core theme CSS (includes Bootstrap)-->
        
        
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
        <!--대겸 head 부분-->
       	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript" src="${contextPath}/js/job_search.js"></script>
        <link href="${contextPath }/css/job_search.css" rel="stylesheet" />
      
    </head>

<body>
    <section class="page-section ">
        <div class="page-wrap">
            <!-- 대겸 코드 시작 -->
        <form method="POST" action="${contextPath }/insertPerAll.do">
        <div class ="job_search_body">
           <div class="jon_search_container">
            <div class="title">
                <h2>나에게 맞는 일자리 찾기</h2>
            </div>
            <hr color="#14adc5">
            <!--공고등록 시작-->
            <div>
                <h4 class="job_search_little_title">요일*</h4>
                <ul>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="mon">월
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="tue">화
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="wed">수
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="thu">목
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="fri">금
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="sat">토
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="sun">일
                    </li>
                    <li class="day_select">
                        <input name="per_apply_day" class="job_search_input" type="checkbox" value="all">상관없음
                    </li>
                </ul>
            </div>
            <div>
                <h4 class="job_search_little_title">시간</h4>
                <ul>
                    <li class="time">
                        <input class="job_search_input" type="radio" name="radioTime" id="r2" value="1">시간설정
                    </li>
                    <br>
                    <li class="time">
                        <input class="job_search_input" type="time" id="time" name="time-start"> ~
                        <input class="job_search_input" type="time" id="time2" name="time-end">
                    </li>
                    <br>
                    <li class="time">
                        <input class="job_search_input" type="radio" name="radioTime" id="r1" value="0" checked>상관없음
                    </li>
                </ul>
            </div>
            <div>
                <h4 class="job_search_little_title">희망직종</h4>
                <select id="hope" onchange="categoryChange(this)">
                    <option value="0">1차 카테고리 선택</option>
                    <option value="a">배송</option>
                    <option value="b">생산 & 건설</option>
                    <option value="c">청소</option>
                    <option value="d">기타</option>
                </select>

                <select name="user_apply_category" id="good">
                    <option>2차 카테고리 선택</option>
                </select>
            </div>
            
            
            <div>
                <h4 class="job_search_little_title">지역</h4>
                <select name="per_apply_region1" type="text" id="addressRegion1"></select>
                <select name="per_apply_region2" id="addressDo1"></select>
                <select name="per_apply_region3" id="addressSiGunGu1"></select>
            </div>
            <div>
                <h4 class="job_search_little_title">연령</h4>
                <ul>
                    <li class="qualification">
                        만 <input name="per_apply_age" class="age_input" type="number"> 세
                    </li>
                </ul>
            </div>
            <div>
                <h4 class="job_search_little_title">자격사항</h4>
                <ul>
                    <li class="qualification">
                        <input class="job_search_input" type="text" placeholder="자격증명">
                    </li>
                    <li class="qualification">
                        <input class="job_search_input" type="text" placeholder="발행처">
                    </li>
                    <li class="qualification">
                        <input class="job_search_input"  type="text" placeholder="취득일(예 : 20210704">
                    </li>
                </ul>
            </div>
            <div>
                <!--<h4 class="job_search_little_title">경력사항</h4>
                <ul>
                    <div class="carreer_1">
                    <li class="carreer">
                        <input class="job_search_input" type="text" placeholder="회사명">
                    </li>
                    <li class="carreer">
                        <input class="job_search_input" type="text" placeholder="직책 및 담당 업무">
                    </li>
                    </div>
                    <div class="carreer_2">
                    <li class="carreer">
                        <label>입사년월</label><input type="date" class="input-Date">
                    </li>
                    <li class="carreer">
                        <label>퇴사년월</label><input type="date" class="input-Date">
                    </li>
                    </div>
                </ul>
            </div>-->
 <!--  
     var good_a = ["배달 대행", "퀵서비스", "야간 택배", "새벽 택배", "상하차"];
    var good_b = ["제조 & 가공", "공사 건설 현장", "포장 & 품질 검사", "상하차 소화물 분류", "입출고 창고 관리"];
    var good_c = ["원룸 청소", "이사 청소", "사무실 청소", "가전 침대 청소", "설치 & 수리 청소"];
    var good_d = ["전단지 & 홍보", "행사 판매", "생산 공장", "서빙 & 설거지", "도우미(가사)", "도우미(베이비시터)", "도우미(간병인)"];

    var bad_a = ["delivery_agent", "quick_service", "night_delivery", "early_delivery", "up_down"];
    var bad_b = ["menufac_process", "construct_site", "pack_quality", "und_digestion", "ware_manage"];
    var bad_c = ["clean_studio", "clean_house", "clean_office", "clean_bed", "install_repair"];
    var bad_d = ["flyer_promo", "event_sale", "product_facility", "serving_dish", "housework", "babysitter", "carer"];
             -->
            <div>
                <h4 class="job_search_little_title">경력사항</h4>
                <select name="per_own_category" id="hope" >
                <option value="none_career"> 없음 </option>
                <optgroup label="배송">
                <option value="delivery_agent">배달대행</option>
                <option value="quick_service">퀵서비스</option>
                <option value="night_delivery">야간택배</option>
                <option value="early_delivery">새벽택배</option>
                <option value="up_down">상하차</option>
                </optgroup>
                <optgroup label="생산&건설">
                <option value="menufac_process">제조&가공</option>
                <option value="construct_site">공사 건설 현장</option>
                <option value="pack_quality">포장&품질검사</option>
                <option value="und_digestion">상하차 소화물 분류</option>
                <option value="ware_manage">입출고 창고 관리</option>
                </optgroup>
                <optgroup label="청소">
                <option value="clean_studio">원룸 청소</option>
                <option value="clean_house">이사 청소</option>
                <option value="clean_office">사무실 청소</option>
                <option value="clean_bed">가전 침대 청소</option>
                <option value="install_repair">설치 & 수리 청소</option>
                </optgroup>
                <optgroup label="기타">
                <option value="flyer_promo">전단지 & 홍보</option>
                <option value="event_sale">행사 판매</option>
                <option value="product_facility">생산 공장</option>
                <option value="serving_dish">서빙 & 설거지</option>
                <option value="housework">도우미(가사)</option>
                <option value="babysitter">도우미(베이비시터)</option>
                <option value="carer">도우미(간병인)</option>
                </optgroup>
                </select>

                    <li class="qualification">
                        <input name="per_own_career" class="age_input" type="number" placeholder="경력 개월 수">개월 
                    </li>
                </ul>

            </div>
             <div class="job_search_div">
                <h5 class="job_search_little_title">희망 근무날짜</h5>
                <ul class="job_search_ul">
                    <li class="workingrTime">
                        <input class="job_search_input" type="date">
                    </li>
                </ul>
            </div>
            
            <div class="filebox preview-image">
            <h5 class="job_search_little_title">프로필 이미지 등록</h5>
                    <input name="per_apply_image" class="job_search_input" class="upload-name" value="파일선택" disabled="disabled">
                    <label for="input-file"> 업로드</label> <input type="file" id="input-file" class="upload-hidden">
             </div>
             
                <h5 class="job_search_little_title">자기소개</h5>
                <textarea name="per_apply_intro" class="job_search_texrarea" cols="100" rows="10" placeholder="간단한 자기소개를 입력해주세요."></textarea>
            </div>
            <hr color="#14adc5">
            <div class="submitArea">
               <button type="submit"  id="gogosing"class="job_Select_submitButton">회원 가입하기</button>
            </div>
            
           	<input type="hidden" name="member_name" value="${param.member_name}">
           	<input type="hidden" name="member_id" value="${param.member_id}">
           	<input type="hidden" name="member_password" value="${param.member_password}">
           	<input type="hidden" name="member_email" value="${param.member_email}">
           	<input type="hidden" name="member_phone" value="${param.member_phone}">
           	
           	
           	
        </div>
        
    	</form>
        </div>
        </section>
    
</body>

</html>