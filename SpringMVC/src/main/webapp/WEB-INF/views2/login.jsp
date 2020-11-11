<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="css/stylelogin.css">
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <img src="img/logo.png" alt="로고">
            <form class="form">
                <input type="text" placeholder="아이디">
                <input type="password" placeholder="비밀번호">
                <!-- <button type="submit" id="login-button" onClick="location.href='index.html'">로그인</button> -->
                <input type="button" value="로그인" name="wirte" id="login-button" onclick="location.href='index.html'">
                <div><a class="singup" href="insertForm.do">회원가입</a></div>
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
    


</body>
</html>