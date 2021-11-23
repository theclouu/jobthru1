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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JobThrough</title>
    <link href="${contextPath }/css/info.css" rel="stylesheet" />
</head>
<body>

    <!--메인 컨텐츠 영역입니당-->
    <section>
    <!--메인 컨텐츠 영역/ 여길 수정하셔서 쓰시면 됩니당,,-->
        <div class="container">
            <!--왼쪽 사이드바-->
            <div class="left_menu"></div> 
            <!--중앙 메인 컨텐츠-->
            <div class="main_content">
                <img class ="euns" src ="${contextPath }/assets/low.png" alt=""></div>
            <!--오른쪽 사이드바-->
            <div class="aside"></div>
        </div>
    </section>

    
</body>
</html>