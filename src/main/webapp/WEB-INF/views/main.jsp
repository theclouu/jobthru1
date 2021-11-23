<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />    


    <header class="masthead bg-primary">
            <div class="container d-flex">
                <div class="main_search_wrap">
                    <div class="main_search">
                        <div class="nav_btn">
                            <ul>
                                <li class="find-content"><img class="find_content_img" src="${contextPath }/assets/find1.png" alt=""></li>
                                <li class="find-content"><img class="find_content_img" src="${contextPath }/assets/find2.png" alt=""></li>
                            </ul>
                        </div>
                        <h3 class="index_title">1분 안에 일자리 찾아드려요!</h3>
                        <form class="form" action = "${contextPath }/job/job_comment.do" method="get">
                            <input type="text" name="searchPage" placeholder="건설, 퀵, 배달 등 검색해보세요!">
                            <button type="submit" class="search_btn"><img class="search_btn"src="${contextPath }/assets/search.png" alt=""></button>  <!--버튼 이미지 들어갈 예정-->
                        </form>
                        <!--직종별 바로가기-->
                        <div>
                            <img class="find_content_img" src="assets/jobstar.png" alt="">
                        </div>
                        <div class="nav_btn">
                            
                            <ul class="find-job" > <!-- 요소마다 이미지 넣을 예정-->
                                <li class="find-content"><img class="category_img" src="assets/category1.png" alt=""></li>
                                <li class="find-content"><img class="category_img" src="assets/category2.png" alt=""></li>
                                <a href="${contextPath }/job/job_listPage.do?num=1"><li class="find-content"><img class="category_img" src="assets/category3.png" alt=""></li></a>
                                <li class="find-content"><img class="category_img" src="assets/category4.png" alt=""></li>
                            </ul>
                        </div>
                        <!--자역별 바로가기-->
                        <div>
                            <img class="find_content_img" src="assets/locationstar.png" alt="">
                        </div>
                        <div class="nav_btn">
                            <ul > <!-- 요소마다 이미지 넣을 예정-->
                                <a href="${contextPath }/job/job_listSudoPage.do?num=1"><li class="find-content"><img class="category_img" src="assets/soo_do.png" alt=""></li></a>
                                <li class="find-content"><img class="category_img" src="assets/Yeong_nam.png" alt=""></li>
                                <li class="find-content"><img class="category_img" src="assets/gaong_won.png" alt=""></li>
                                <li class="find-content"><img class="category_img" src="assets/ho_nam.png" alt=""></li>
                                <li class="find-content"><img class="category_img" src="assets/jeju.png" alt=""></li>
                            </ul>
                        </div>
                    </div>
    
                </div>
                
                <div class="main_ad_wrap">
                    <div class="slider">
                        <div><a href="${contextPath }/job/info1.do"><img class="main_ad_img" src="assets/maininfoimg.png" alt=""></a></div>
                        <div><a href="${contextPath }/job/info2.do"><img class="main_ad_img" src="assets/sagi.png" alt=""></a></div>
                        <div><a href="${contextPath }/job/info3.do"><img class="main_ad_img" src="assets/ad_new.png" alt=""></a></div>
                    </div>
                </div>  
            </div>
        </header>
        <section class="page-section ">

            <div class="page-wrap">
                  
               <br>
               <br>	
                <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                        <div class="title"><h4>당신이 좋아할 만한 채용공고</h4></div>
                          <div class="content-slider">
                                <c:forEach var ="main_list" items="${main_list}">
                             <div class="slide-content">
                                   <a class="img-wrap" href="${contextPath}/company/com_gonggo.do?com_apply_ID=${main_list.com_apply_ID}">
                                       <img class="add-info-img" src="${contextPath }/assets/${main_list.com_apply_image}" style= "width:260px; height:150px"alt="">
                                          <h5>${main_list.member_name }</h5>
                                          <p>${ main_list.com_apply_intro}</p>
                                       
                                   </a>
                               </div> 
                               </c:forEach>
                            </div>
                            
    
                        </div>
                    </div>
                           
                </div>
                 <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                        <div class="title"><h4>잡스루 HOT 일자리</h4></div>
                        <div class="content-slider">
                               <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/packing4.jpg" alt="">
                                    <h5>대건 배달</h5>
                                    <p>10월 6일 강서구 배달하실 분~</p>
                                </a>
                            </div>   
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/clean3.jpg" alt="">
                                    <h5>은조 청소</h5>
                                    <p>10월 26일 원룸청소 구인중</p>
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/babysitter1.jpg" alt="">
                                    <h5>아이 좋아(주)</h5>
                                    <p>일주일 동안 등하교 도와주실 분~</p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/construct5.jpg" alt="">
                                    <h5>소중 건설업</h5>
                                    <p>10월 21일 하루 공사판 도와주실 분 </p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/delivery11.jpg" alt="">
                                    <h5>달려라 퀵</h5>
                                    <p>퀵 배송 도와주실 분 구합니다.</p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/clean7.jpg" alt="">
                                    <h5>하루 깨끗(주)</h5>
                                    <p>이사짐 청소 27일 당일 가능하신 분!</p>
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/packing1.jpg" alt="">
                                    <h5>준관 포장</h5>
                                    <p>간단한 소분류 포장 인력 구합니다.</p>
                                </a>
                            </div>
                            
                            

                        </div>
              
                    </div>
                     
                </div>
                
                <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                         <br>	
                          <br>	
                        <div class="title"><h4>인재들이 만족한 기업이에요!</h4></div>
                        <div class="content-slider">
                            <div>
                                <a class="img-wrap" href="#">
                                    <img class="add-info-img" src="./assets/delivery1.jpg" alt="">
                                    <h5>아람 배달</h5>
                                    <img class="star-img" src="./assets/star/5star.png" alt="">
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/clean11.jpg" alt="">
                                    <h5>러브 하우스</h5>
                                    <img class="star-img" src="./assets/star/4star.png" alt="">
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/delivery2.jpg" alt="">
                                    <h5>이사를 부탁해</h5>
                                    <img class="star-img" src="./assets/star/5star.png" alt="">
                                </a>
                            </div>
                            <div class="slide-content">
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/construct5.jpg" alt="">
                                    <h5>우정 건설업</h5>
                                    <img class="star-img" src="./assets/star/5star.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/babysitter3.jpg" alt="">
                                    <h5>아기야 놀자</h5>
                                    <img class="star-img" src="./assets/star/4star.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/clean9.jpg" alt="">
                                    <h5>kJ클리닝</h5>
                                    <img class="star-img" src="./assets/star/5star.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/part-time1.jpg" alt="">
                                    <h5>보람 마케팅</h5>
                                    <img class="star-img" src="./assets/star/5star.png" alt="">
                                </a>
                            </div>
                            <div>
                                <a class="img-wrap" href="">
                                    <img class="add-info-img" src="./assets/construct2.jpg" alt="">
                                    <h5>(주)바른 건설</h5>
                                    <img class="star-img" src="./assets/star/4star.png" alt="">
                                </a>
                            </div>
                        </div>                   
                    </div>
                 </div>
                 <br>
                 <br>
                <div class="webtong_menu_wrap shop">
                    <div class="align-div-center">
                    
                        <div class="title"><h4>플러스 톡톡!</h4></div>
                        <div class="plus-talk">
                            <div class="info-wrap">
                                <a href="${contextPath }/job/info2.do">
                                    <img src="${contextPath }/assets/bottom1.png" alt="">
                                </a>
                            </div> 
                            <div class="info-wrap">
                                <a href="${contextPath }/job/info3.do">
                                    <img src="${contextPath }/assets/bottom2.png" alt="">
                                </a>
                            </div> 
                            <div class="info-wrap">
                                <a href="${contextPath }/job/info1.do">
                                    <img src="${contextPath }/assets/bottom3.png" alt="">
                                </a>
                            </div> 
                        </div>
                    
                    </div>
                    
         </section>