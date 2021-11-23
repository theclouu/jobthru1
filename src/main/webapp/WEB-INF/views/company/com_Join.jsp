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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;700&display=swap" rel="stylesheet">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 종류 선택</title>
    <link rel="stylesheet" href="${contextPath }/css/member_Select.css">
</head>

<body>
    <div class="container">
        <div class="logo_position">
            <img class="logo_image" src="${contextPath }/assets/main_logo.png" alt="">
            <div class="welcome_message">
                <h3>잡스루 회원가입을 환영합니다.</h3>
            </div>
        </div>
        <!--왼쪽 div-->
        <!--a태그 속 채워주세용-->
        <div class="left_layer">
            <a href="${contextPath}/member/member_Join.do">
                <div class="user_join">
                    <img class="user_join_image" src="${contextPath }/assets/개인.png" alt=""></br>
                    <b><span>개인으로 회원가입</span></b></br>
                    <span>만 15세 이상 가입 가능</span>
                </div>
            </a>
        </div>
        <!--오른쪽 div-->
        <!--a태그 속 채워주세용-->
        <div class="right_layer">
            <a href="${contextPath }/member/com_Join.do">
                <div class="company_join">
                    <img class="company_join_image" src="${contextPath }/assets/회사.png" alt=""></br>
                    <b><span>기업으로 회원가입</span></b></br>
                </div>
            </a>
        </div>
        <div class="announce">
            <span>해당되는 항목을 선택하여 회원가입을 진행해주시길 바랍니다.</span>
        </div>
    </div>
</body>

</html>