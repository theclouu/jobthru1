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
        
        <link href="${contextPath }/css/calStyle.css" rel="stylesheet" />
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

    <div class="calculation_main_container">
        <div class="title">
            <h2>급여계산기</h2>
        </div>
        <hr color="#14adc5">
        <div class="info">
            <p><b>2021년 최저시급은
                <em>8,720</em>
                원 입니다.</b>
            </p>
        </div>
        <hr color="#14adc5">
        <!--<div class="trans">
            <form>
                <select name="salary_type">
                    <option value="hour">시급</option>
                    <option value="day">일급</option>
                    <option value="week">주급</option>
                    <option value="month">월급</option>
                </select>
                <span class="wave">>></span>
                <select name="salary_type">
                    <option value="hour">시급</option>
                    <option value="day">일급</option>
                    <option value="week">주급</option>
                    <option value="month">월급</option>
                </select>
            </form>
        </div>-->
        <div class="calc_area">
            <ul class="calc_ul">
                <li class="calc_item">
                    <div class="hour_salary">
                        <label class="calc_label" for="hour">시급</label>
                        <input type="text" id="hour" value="${price }">
                    </div>
                </li>
                <li class="calc_item">
                    <div class="calc_item_area">
                        <label class="calc_label" for="day_select">일일 근무시간</label>
                        <select id="day_work" >
                            <option value="0">시간선택</option>
                            <option value="1">1시간</option>
                            <option value="2">2시간</option>
                            <option value="3">3시간</option>
                            <option value="4">4시간</option>
                            <option value="5">5시간</option>
                            <option value="6">6시간</option>
                            <option value="7">7시간</option>
                            <option value="8">8시간</option>
                            <option value="9">9시간</option>
                        </select>
                    </div>
                </li>
                <li class="calc_item">
                    <div class="calc_item_area">
                        <label class="calc_label" for="week_select">일주 근무시간</label>
                        <select id="week_work">
                            <option value="0">선택</option>
                            <option value="1">1일</option>
                            <option value="2">2일</option>
                            <option value="3">3일</option>
                            <option value="4">4일</option>
                            <option value="5">5일</option>
                            <option value="6">6일</option>
                            <option value="7">7일</option>
                        </select>
                    </div>
                </li>
                <li class="calc_item">
                    <div class="calc_item_area">
                        <label class="calc_label" for="week_select_overtime">주 연장 근무시간</label>
                        <select id="week_overtime">
                            <option value="0">시간선택</option>
                            <option value="1">1시간</option>
                            <option value="2">2시간</option>
                            <option value="3">3시간</option>
                            <option value="4">4시간</option>
                            <option value="5">5시간</option>
                            <option value="6">6시간</option>
                            <option value="7">7시간</option>
                            <option value="8">8시간</option>
                            <option value="9">9시간</option>
                        </select>
                    </div>
                </li>
                <li class="calc_item">
                    <div class="calc_item_area">
                        <label class="calc_label"for="tax_select">세금 적용</label>
                        <select id="tax">
                            <option value="0">적용안함</option>
                            <!--<option value="1">4대보험(9.13%)</option>-->
                            <option value="1">소득세(3.3%)</option>
                        </select>
                    </div>
                </li>
            </ul>
        </div>
        <div class="buttons">
            <input type="button" class="reset_button" value="초기화하기" onclick='resetButton()'>
            <input type="button" class="calc_button" value="계산하기" onclick='calcButton()'>
        </div>
        <hr color="#14adc5">
        <div id="show_result">
                
                    <span id="result"></span></br>
                    <span id="result_2"></span></br>
                    <span id="result_3"></span></br>
                    <span id="result_4"></span></br>
                    <b><span id="result_5"></span></b>
                
        </div>
    </div>
    <script type="text/javascript" src="${contextPath }/js/calculator.js"></script>
</body>