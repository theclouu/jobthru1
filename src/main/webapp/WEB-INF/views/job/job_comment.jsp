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
    <title>직종별 세부 페이지</title>
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
                        <li><a href="">도우미(베이비시터</a>)</li>
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
                  <%--   <img src="${contextPath }/assets/k2.png" alt=""> --%>
                </div>
            </ul>
        </div>
        
    </div>
    
    <div class="top-content">
                   <div>'${searchPage}' (으)로 검색 한 결과 입니다.</div>
                   <br>
                   <br>
                   <br>
                   
               </div>
               <div class="main-content">
                   <div class="board-list">
                       <div class="board-list-head">
                           <div class="applicant-img"><h5>사진</h5></div>
                           <div class="applicant-title"><h5>업체명/공고제목</h5></div>
                           <div class="applicant-time"><h5>근무시간</h5></div>
                           <div class="applicant-location"><h5>마감일</h5></div>
                       </div>
                       <div class="board-list-body">
                       <!-- 유정 검색 페이지 -->
                       <!-- 컬럼 이름은 대문자로 써야함 -->
                       <c:forEach var="member_comment" items="${member_comment}">
                            <a href="">
                                <div class="item">
                                   <div class="applicant-img"><img class="board-img" src="${contextPath}/assets/${member_comment.MEMBER_PROFILEIMAGE}" alt=""></div>
                                    <div class="applicant-title">
                                        <div>${member_comment.MEMBER_NAME}</div>
                                        <div>${member_comment.COM_APPLY_INTRO}</div>
                                    </div>
                                    <div class="applicant-time">
									<c:choose>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'mon'}">
                                                <p>월요일</p> 
                                             </c:when>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'tue'}">
                                                <p>화요일</p> 
                                             </c:when>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'wed'}">
                                                <p>수요일</p> 
                                             </c:when>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'thu'}">
                                                <p>목요일</p> 
                                             </c:when>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'fri'}">
                                                <p>금요일</p> 
                                             </c:when>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'sat'}">
                                                <p>토요일</p> 
                                             </c:when>
                                             <c:when test="${member_comment.COM_APPLY_DAY == 'sun'}">
                                                <p>일요일</p> 
                                             </c:when>
                                          </c:choose>
                                    </div>
                                    <div class="applicant-location">${member_comment.YMDDATE}</div>
                                </div>
                            </a>
                       </c:forEach>                     
                    </div>
                </div>

            </div>

    </section>
   
    <script src="${contextPath }/js/menubar.js"></script>
    
</body>