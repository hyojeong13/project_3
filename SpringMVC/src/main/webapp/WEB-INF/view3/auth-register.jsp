<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/images/favicon.png">
    <title>AMPERE</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
  </head>
  <body class="light ">
    <div class="wrapper vh-100">
      <div class="row align-items-center h-100">
        <form class="col-lg-6 col-md-8 col-10 mx-auto" action ="${cpath}/insert.do" method ="post">
          <div class="mx-auto text-center my-4">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${cpath}/myapp/loginForm.do"">
              <img src="./images/logo.png" id="logo" class="navbar-brand-img brand-sm3" alt="...">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg>
            </a>
            <h2 class="my-3">회원가입</h2>
          </div>
          <div class="form-group">
            <label for="inputEmail4">ID</label>
            <input type="text" class="form-control" id="inputEmail4" name='id'>
          </div>
          
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="firstname">성</label>
              <input type="text" id="firstname" class="form-control" name='firstname'>
            </div>
            <div class="form-group col-md-6">
              <label for="lastname">이름</label>
              <input type="text" id="lastname" class="form-control" name='lastname'>
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail4">주소</label>
            <input type="text" class="form-control" id="inputEmail4" name='address'>
          </div>
          <div class="form-group">
            <label for="inputEmail4">전화번호</label>
            <input type="text" class="form-control" id="inputEmail4" name='phone'>
          </div>
          <hr class="my-4">
          <div class="row mb-4">
            <div class="col-md-6">
              <div class="form-group">
                <label for="inputPassword5">암호</label>
                <input type="password" class="form-control" id="inputPassword5" name='pw'>
              </div>
              <div class="form-group">
                <label for="inputPassword6">암호 확인</label>
                <input type="password" class="form-control" id="inputPassword6">
              </div>
            </div>
            <div class="col-md-6">
              <p class="mb-2">암호 요구 사항</p>
              <p class="small text-muted mb-2"> 새 암호를 만들려면 다음 모든 요구 사항을 충족해야 합니다.</p>
              <ul class="small text-muted pl-4 mb-0">
                <li> 최소 8자</li>
                <li>적어도 하나의 특수문자</li>
                <li>하나 이상의 숫자</li>
                <li>이전 암호와 같을 수 없습니다. </li>
              </ul>
            </div>
          </div>
          <button class="btn btn-lg btn-primary btn-block" type="submit">회원가입</button>
         <!-- <input type="button" value="회원가입" name="wirte" class="btn btn-lg btn-primary btn-block"> -->
          <p class="mt-5 mb-3 text-muted text-center">© 2020</p>
        </form>
      </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src='js/daterangepicker.js'></script>
    <script src='js/jquery.stickOnScroll.js'></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/config.js"></script>
    <script src="js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-56159088-1');
    </script>
  </body>
</html>
</body>
</html>