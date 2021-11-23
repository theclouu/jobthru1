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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="chrome">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>은빈이꺼 2</title>
    <link href="${contextPath }/css/job_write_search.css" rel="stylesheet" />
</head>
<body>
    <section>
		
		<form action="" id="joinForm" method="POST">
		    <ul class="join_box">
		        <br>
		        <h2 style="text-align: center">공고 등록하기</h2>
		        <br>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>모집직종</li>
		                <br>
		                <li class="answerForm"> 
		                        <!--카테고리 항목 무엇을 넣어야 할지 할지  -->
		                        <li class="answerForm"> 
		                            <!--자바스크립트로 다중 설렉트박스를 사용해야할지 db에서 가져와야할지?-->
		                            <select>
		                                <optgroup label="직종">
		                                    <option value="gangdong-gu">청소</option>
		                                    <option value="gangdong-gu">배송</option>
		                                    <option value="gangdong-gu">생산&건설</option>
		                                    <option value="gangdong-gu">기타</option>
		                            </select>  
		                            <select>
		                                <optgroup label="배송"></optgroup>
		                                    <option value="gangdong-gu">배달 대행</option>
		                                    <option value="songpa-gu">퀵서비스</option>
		                                    <option value="songpa-gu">야간 택배</option>
		                                    <option value="songpa-gu">새벽 택배</option>
		                                    <option value="songpa-gu">상하차</option>
		                                </optgroup>
		
		                                <optgroup label="생산&건설"></optgroup>
		                                    <option value="gangdong-gu">제조 가공</option>
		                                    <option value="songpa-gu">공사 건설 현장</option>
		                                    <option value="songpa-gu">포장 & 품질 검사</option>
		                                    <option value="songpa-gu">상하차 소화물 분류</option>
		                                    <option value="songpa-gu">입출고 창고 관리</option>
		                                </optgroup>
		
		                                <optgroup label="청소"></optgroup>
		                                    <option value="gangdong-gu">원룸 청소</option>
		                                    <option value="songpa-gu">이사 청소</option>
		                                    <option value="songpa-gu">사무실 청소</option>
		                                    <option value="songpa-gu">가전 침대 청소</option>
		                                    <option value="songpa-gu">상하차</option>
		                                </optgroup>
		
		                                <optgroup label="기타"></optgroup>
		                                    <option value="gangdong-gu">전단지&홍보</option>
		                                    <option value="songpa-gu">행사 판매</option>
		                                    <option value="songpa-gu">생산 공장</option>
		                                    <option value="songpa-gu">서빙&설거지</option>
		                                    <option value="songpa-gu">도우미</option>
		                                </optgroup>
		                            </select> 
		                        </li>                
		                    </li>
		                </ul>
		        </li>
		
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>요일</li>
		                <br>
		                <li class="answerForm"> <!-- 입력하는 곳 클래스 지정-->
		                <label><input type ="checkbox" name="day" value="monday">월요일</label>
		                <label><input type ="checkbox" name="day" value="tuesday">화요일 </label>
		                <label><input type ="checkbox" name="day" value="wednesday">수요일 </label>
		                <label><input type ="checkbox" name="day" value="thursday">목요일 </label>
		                <label><input type ="checkbox" name="day" value="friday">금요일 </label>
		                <label><input type ="checkbox" name="day" value="saturday">토요일 </label>
		                <label><input type ="checkbox" name="day" value="sunday">일요일 </label>
		                <label><input type ="checkbox" name="day" value="all">상관없음 </label>
		                </li>
		               </li>
		                </ul>
		        </li>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>시간</li>
		                <li class="answerForm">
		                    <label><input type="time" name="time-start" value="09:00" step="600" ></label> <!-- step="600" 이거 왜 안되는지 알려줄사람...-->
		                    ~
		                    <label><input type="time" name="time-end" step="6000" ></label>
		                    <label><input type="checkbox" name="time-all" value="all">상관없음</label>
		                </li>
		                </ul>
		        </li>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>희망 직종</li>
		                <li class="answerForm">
		                    <label><input type ="checkbox" name="wishjob" value="delivery">배달 </label>
		                    <label><input type ="checkbox" name="wishjob" value="quick">퀵 </label>
		                    <label><input type ="checkbox" name="wishjob" value="parcel">택배 </label>
		                    <label><input type ="checkbox" name="wishjob" value="construct">건설 </label>
		                    <label><input type ="checkbox" name="wishjob" value="cleaning">청소 </label>
		                    <label><input type ="checkbox" name="wishjob" value="move">이사 </label>
		                    <label><input type ="checkbox" name="wishjob" value="other">기타 </label>
		                </li>
		                </ul>
		        </li>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>지역</li>
		                <li class="answerForm"> 
		                        <!--자바스크립트로 다중 설렉트박스를 사용해야할지 db에서 가져와야할지?-->
		                    <select name="addressRegion" id="addressRegion1"></select>
		                    <select name="addressDo" id="addressDo1"></select>
		                    <select name="addressSiGunGu" id="addressSiGunGu1"></select>
		
		                </li>
		            </ul>
		        </li>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>자격사항</li>
		                <li class="answerForm">
		                    <input type="text" placeholder="자격증 명">
		                    <input type="text" placeholder="발행처" style="width:100px">
		                    <input type="text" placeholder="취득일(예: 20210704) "style="width:150px">
		                </li>
		                </ul>
		        </li>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>경력사항</li>
		                <li class="answerForm">
		                    <input  type="text" placeholder="회사명" >
		                    <input  type="text" placeholder="직책 및 담당업무" style="width:100px">
		                    <br>
		                    <span style="font-size:13px">입사년일:</span> <input class="input-Date" type="date" >
		                    <span style="font-size:13px">퇴사년일:</span> <input class="input-Date" type="date" >
		                </li>
		                </ul>
		        </li>
		        <li class="checkBox">
		            <ul class="clearfix">
		                <li>자기소개</li>
		                <li class="answerForm">
		                    <textarea cols="70" rows="5" placeholder=" 간단한 자기소개를 입력해주세요"></textarea>
		                </li>
		                </ul>
		        </li>
		         
		        <ul class="submitArea" >
		            <li><a href="${contextPath}/company/com_main.do"><input type='submit' class="fpmgBt" value='이력서 제출하기'></input></a></li>
		        </ul>
		</form>
    </section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/job_write_search.js"></script>
</body>
</html>