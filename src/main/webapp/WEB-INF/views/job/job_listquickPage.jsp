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
    <title>퀵서비스 페이지</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
        type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" type="text/css" />
    <meta http-equiv="X-UA-Compatible" content="IE=11,chrome=1">
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sly/1.6.1/sly.min.js"></script>
    <script src="JS/scripts.js"></script>
    <!-- Core theme CSS (includes Bootstrap)-->

    <link href="${contextPath }/css/job_listPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

    <!-- image slide -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


    <script>
        $(document).ready(function () {
            $('.slider').bxSlider({
                auto: true
            })
            $('.content-slider').bxSlider({
                moveSlides: 1,
                minSlides: 3,
                maxSlides: 3,
                slideWidth: 300,
                auto: false
            })
        });
    </script>

    <style>
        .bx-wrapper {
            border: 0;
            background: #fbfbfb;
            box-shadow: none;
        }
    </style>

</head>

<body>
    <div class="nav_header">
        <div class="nav">
            <ul class="clearfix mainmenu">
                <li><a href="">
                        <h5>배송</h5>
                    </a>
                    <ul class="subMenu">
                        <li><a href="">배달 대행</a></li>
                        <li><a href="${contextPath }/job/job_listquickPage.do">퀵서비스</a></li>
                        <li><a href="">야간 택배</a></li>
                        <li><a href="">새벽 택배</a></li>
                        <li><a href="">상하차</a></li>
                    </ul>
                </li>
                <li><a href="">
                        <h5>생산 & 건설</h5>
                    </a>
                    <ul class="subMenu">
                        <li><a href="">제조 & 가공</a></li>
                        <li><a href="">공사 건설 현장</a></li>
                        <li><a href="">포장 & 품질 검사</a></li>
                        <li><a href="">상하차 소화물 분류</a></li>
                        <li><a href="">입출고 창고 관리</a></li>
                    </ul>
                </li>
                <li> <a href="">
                        <h5>청소</h5>
                    </a>
                    <ul class="subMenu">
                        <li><a href="">원룸 청소</a></li>
                        <li><a href="">이사 청소</a></li>
                        <li><a href="">사무실 청소</a></li>
                        <li><a href="">가전 침대 청소</a></li>
                        <li><a href="">설치 & 수리 청소</a></li>
                        <li><a href="">정리, 방역</a></li>
                        <li><a href="">세차</a></li>
                    </ul>
                </li>
                <li><a href="">
                        <h5>기타</h5>
                    </a>
                    <ul class="subMenu">
                        <li><a href="">전단지 & 홍보</a></li>
                        <li><a href="">행사 판매</a></li>
                        <li><a href="">생산 공장</a></li>
                        <li><a href="">서빙 & 설거지</a></li>
                        <li><a href="">도우미(가사)</a></li>
                        <li><a href="">도우미(베이비시터)</a></li>
                        <li><a href="">도우미(간병인)</a></li>
                    </ul>
                </li>

                <li> <a href="">
                        <h5>지역별</h5>
                    </a>
                    <ul class="subMenu">
                        <li><a href="">수도권</a></li><br>
                        <li><a href="">중부권</a></li><br>
                        <li><a href="">충청권</a></li><br>
                        <li><a href="">호남권</a></li><br>
                        <li><a href="">영남권</a></li>
                    </ul>
                </li>
            </ul>
            <hr color="lightblue">
        </div>
    </div>


    <section class="page-section ">

        <div class="page-wrap">

            <div class="webtong_menu_wrap shop">
                <div class="align-div-center">
                    <div class="title">
                        <h4>이런 일자리는 어떠세요?</h4>
                    </div>
                    <div class="content-slider">
                    
                        <div class="slide-content">
                            <a class="img-wrap" href="">
                                <img class="add-info-img" src="${contextPath }/assets/taekbae.jpg" alt="">
                                <h5>좋은 택배</h5>
                                <p>새벽시간 택배 기사</p>
                                <p>구인중!</p>
                            </a>
                        </div>
                        <div class="slide-content">
                            <a class="img-wrap" href="">
                                <img class="add-info-img" src="${contextPath }/assets/baedal.jpg" alt="">
                                <h5>맛난 떡볶이</h5>
                                <p>점심시간 배달기사</p>
                                <p>구인중!</p>
                            </a>
                        </div>
                        <div class="slide-content">
                            <a class="img-wrap" href="">
                                <img class="add-info-img" src="${contextPath }/assets/moolryu.jpg" alt="">
                                <h5>일류물류(주)</h5>
                                <p>열일 분류작업 하실 분</p>
                                <p>구인중!</p>
                            </a>
                        </div>
                        <div>
                            <a class="img-wrap" href="">
                                <img class="add-info-img" src="${contextPath }/assets/baedal.jpg" alt="">
                                <h5>총알배달</h5>
                                <p>퀵 배달 하실 분</p>
                                <p>구인중!</p>
                            </a>
                        </div>
                    </div>

                </div>

            </div>
            
            <div class="recommend-2">
        <div>
            <ul>
                <style>
                    table,
                    th,
                    td {
                        border: 1px solid blue;
                        border-collapse: collapse;
                    }
                </style>

                <div class="card-db">
                    <img src="${contextPath }/assets/quickService.png" alt="">
                </div>
            </ul>
        </div>
        <div class="sort_wrap">
            <div class="sort_standard">
                <select class="list_sort" name="list_sort">
                    <option value="최신순">최신순</option>
                    <option value="리뷰많은순">리뷰많은순</option>
                    <option value="조회순">조회순</option>
                </select>
            </div>
            <div class="form">
                <input type="text" placeholder="검색해보세요!">
                <button class="search_btn_b"><img class="search_btn_b" src="${contextPath }/assets/search.png" alt=""></button> 
                <!--버튼 이미지 들어갈 예정-->
            </div>
        </div>
    </div>
    
    <div class="top-content">
                   <h3></h3>
                   
               </div>
               <div class="main-content">
                   <div class="board-list">
                       <div class="board-list-head">
                           <div class="applicant-img"><h5>사진</h5></div>
                           <div class="applicant-title"><h5>업체명/공고제목</h5></div>
                           <div class="applicant-time"><h5>근무요일</h5></div>
                           <div class="applicant-location"><h5>공고 등록일</h5></div>
                       </div>
                       <div class="board-list-body">
                       <c:forEach var ="job_quicklist" items="${job_quicklist }">
                       		
		                   	 <a href="${contextPath}/company/com_gonggo.do?com_apply_ID=${job_quicklistt.com_apply_ID}">
	                                <div class="item">
	                                    <div class="applicant-img"><img class="board-img" src="${contextPath }/assets/${job_quicklist.member_profileImage}" alt=""></div>
	                                    <div class="applicant-title">
	                                        <div>${job_quicklist.member_name }</div>
	                                        <div>${job_quicklist.com_apply_intro }</div>
	                                    </div>
	                                    <div class="applicant-time">
	                                    	<c:choose>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'mon'}">
	                                    			<p>월요일</p> 
	                                    		</c:when>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'tue'}">
	                                    			<p>화요일</p> 
	                                    		</c:when>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'wed'}">
	                                    			<p>수요일</p> 
	                                    		</c:when>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'thu'}">
	                                    			<p>목요일</p> 
	                                    		</c:when>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'fri'}">
	                                    			<p>금요일</p> 
	                                    		</c:when>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'sat'}">
	                                    			<p>토요일</p> 
	                                    		</c:when>
	                                    		<c:when test="${job_quicklist.com_apply_day == 'sun'}">
	                                    			<p>일요일</p> 
	                                    		</c:when>
	                                    		
	                                    	</c:choose>
	                                    </div> 
	                                    <div class="applicant-location">${job_quicklist.registration_date}</div>
	                                </div>
	                         </a>
	                   </c:forEach>
                           
                    </div>
                </div>

            </div>
            <div>
				 <c:forEach begin="1" end="${totalPage}" var="num">
				    <span>
				     	<a class="h6" href="${contextPath}/job/job_listPage.do?num=${num}">${num}</a>
				  </span>
				 </c:forEach>
				</div>

    </section>
   
    <script src="${contextPath }/js/menubar.js"></script>
</body>