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
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Job Through - main</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${contextPath}/asstes/favicon.ico" />
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
	    <script src= "${contextPath}/js/scripts.js"></script>
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
        <!--?????? head ??????-->
        <title>?????????????????????</title>
        <link href="${contextPath}/css/com_gonggoRegister.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="${contextPath}/js/com_gonggoRegister.js"></script>
        
        

    </head>

<body>
    <section class="page-section ">
        <div class="page-wrap">
            <!-- ?????? ?????? ?????? -->
            <div class="com_gonggoRis_total_div">
             <div class="com_gonggoRis_container">
            <div class="com_gonggoRis_title">
                <h3>?????? ??????</h3>
            </div>
            <hr color="#14adc5">
            <!--???????????? ??????-->
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">????????????*</h5>
                <select class="com_gonggoRis_select" onchange="categoryChange(this)">
                    <option value="0">1??? ???????????? ??????</option>
                    <option value="a">??????</option>
                    <option value="b">?????? & ??????</option>
                    <option value="c">??????</option>
                    <option value="d">??????</option>
                    <option value="e">?????????</option>
                </select>

                <select class="com_gonggoRis_select" id="good">
                    <option>2??? ???????????? ??????</option>
                </select>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">??????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="carreer">
                        <input class="com_gonggoRis_input" type="radio" name="radio" id="r2" value="0"><label for="r2">????????????</label>
                    </li>
                    <li class="carreer">
                        <input class="com_gonggoRis_input" type="radio" name="radio" id="r1" value="1" checked><label for="r1">??????</label>
                    </li>
                    <li class="carreer">
                        <input class="com_gonggoRis_input" type="text" name="text" min="0" max="10" value="0" size="3" />???
                    </li>
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">??????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="gender">
                        <input class="com_gonggoRis_input" type="radio" name="genderSelect" value="none" checked>????????????
                    </li>
                    <li class="gender">
                        <input class="com_gonggoRis_input" type="radio" name="genderSelect" value="male">???
                    </li>
                    <li class="gender">
                        <input class="com_gonggoRis_input" type="radio" name="genderSelect" value="female">???
                    </li>
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">??????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="age">
                        <input class="com_gonggoRis_input" type="number" min="1961" max="2002" value="" />?????? ~
                    </li>
                    <li class="age">
                        <input class="com_gonggoRis_input" type="number" min="1961" max="2002" value="" />??????
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">????????????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="number">
                        <input class="com_gonggoRis_input" type="number" min="0" max="50" value="00" /> ???
                    </li>
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">??????*</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                    <li class="day_select">
                        <input class="com_gonggoRis_input2" type="checkbox">???
                    </li>
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">??????</h5>
                              
                            <select class="com_gonggoRis_select" name="addressRegion" id="addressRegion1"></select>
                            <select class="com_gonggoRis_select" name="addressDo" id="addressDo1"></select>
                            <select class="com_gonggoRis_select" name="addressSiGunGu" id="addressSiGunGu1"></select>
        
                
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">??????*</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="pay">
                        <input class="com_gonggoRis_input" type="radio" name="paySelect" value="hour" checked>??????
                    </li>
                    <li class="pay">
                        <input class="com_gonggoRis_input" type="radio" name="paySelect" value="day">??????
                    </li>
                    <li class="pay">
                        <input class="com_gonggoRis_input" type="radio" name="paySelect" value="hour">??????
                    </li>
                    <li class="pay">
                        <input class="com_gonggoRis_input" type="text" id="hour" value="">???
                    </li>
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">????????????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="workingrTime">
                        <input class="com_gonggoRis_input" type="time"> ~
                    </li>
                    <li class="workingrTime">
                        <input class="com_gonggoRis_input" type="time">
                    </li>
                </ul>
            </div>
            <div class="com_gonggoRis_div">
                <h5 class="com_gonggoRis_little_title">?????????*</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="carreer">
                        <input class="com_gonggoRis_input" type="radio" name="radioDate" id="r2" value="0"><label for="r2">????????????</label>
                    </li>
                    <li class="carreer">
                        <input class="com_gonggoRis_input" type="radio" name="radioDate" id="r1" value="1" checked><label for="r1">??????</label>
                    </li>
                    <li class="carreer">
                        <input class="com_gonggoRis_input" type="date" id="date" name="date">
                    </li>
                </ul>
               
            </div>
            <div class="filebox">
                <h5 class="com_gonggoRis_little_title">????????????????????? ??????</h5>
                <div class="filebox"> <input class="upload-name" value="????????????" disabled="disabled">
                    <label for="ex_filename">?????????</label>
                    <input tclass="com_gonggoRis_input" type="file" id="ex_filename" class="upload-hidden">
                </div>

            </div>
            <div>
                <h5 class="com_gonggoRis_little_title">?????? ?????? ????????? ??????</h5>
                <div class="filebox preview-image">
                    <input class="com_gonggoRis_input" class="upload-name" value="????????????" disabled="disabled">
                    <label for="input-file">?????????</label> <input type="file" id="input-file" class="upload-hidden">
                </div>
            </div>
            <div>
                <h5 class="com_gonggoRis_little_title">????????????/????????????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="qualification">
                        <textarea cols="50" rows="3" placeholder="default">???????????????.</textarea>
                    </li>
                </ul>
            </div>
            <div>
                <h5 class="com_gonggoRis_little_title">??????</h5>
                <ul class="com_gonggoRis_ul">
                    <li class="etc">
                        <textarea class="com_gonggoRis_textarea" cols="100" rows="10" placeholder="default">???????????????.</textarea>
                    </li>
                </ul>
            </div>
            <hr color="#14adc5">
            <div class="bottom_area">
                <ul class="com_gonggoRis_ul">
                    <li class="register_area">
                        <button type="submit" class="register_button">????????????</button>
                    </li>
                </ul>
            </div>
        
        </div>
       
        </div>
        </div>
        </section>
    
</body>

</html>