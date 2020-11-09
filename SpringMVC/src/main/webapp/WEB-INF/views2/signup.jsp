<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sing up</title>
    <link rel="stylesheet" href="./css/stylesingup.css">
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <img src="./img/logo.png" alt="로고">
            <form class="form" action = "${cpath}/insert.do" method ="post">
                <input type="text" placeholder="아이디">
                <input type="password" placeholder="비밀번호">
                <input type="text" placeholder="이름">
                <input type="text" placeholder="전화번호">
                <input type="text" placeholder="주소">
                
                <!-- <button type="submit" id="login-button">회원가입</button> -->
                <input type="button" value="회원가입" name="wirte" id="signup-button" onclick="location.href='login.html'">
                <div><a class="singup" href="login.html">뒤로가기</a></div>
            </form>
        </div>
        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
 			
    </div>
    