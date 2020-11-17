<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/images/favicon.png">
    <title>Ampere</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css">
    <link rel="stylesheet" href="css/select2.css">
    <link rel="stylesheet" href="css/dropzone.css">
    <link rel="stylesheet" href="css/uppy.min.css">
    <link rel="stylesheet" href="css/jquery.steps.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/quill.snow.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
   <!-- /로더 스타일 -->
   
   <style>
       
  .container78 {
    width: 80%;
    margin: 15px auto;
  }


		@import url('https://fonts.googleapis.com/css2?family=Raleway&display=swap');
		*{margin: 0;padding: 0;}
		#loding2{
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  height: 100vh;
		  background: #333;
		  font-family: 'Raleway', sans-serif;
		}
		#loding3{
	  font-size: 2rem;
	  color: rgb(4, 197, 91);
	  position: relative;
	
	}
	#loding3::before{
	  content: attr(data-text);
	  color: #fff;
	  position: absolute;
	  left: 0; z-index: 9999;
	  overflow: hidden;
	  width: 100%;
	  animation: loading 2s ease infinite;
	
	}
	#loding3:after{
	  content: "";
	  width: 100%;
	  height: 3px;
	  background: #fff;
	  position: absolute;
	  left: 0; bottom: -10px;
	  animation: loadingLine 2s ease infinite;
	}
	@keyframes loading{
	  from {width: 0;}
	  to {width: 100%;}
	}
	@keyframes loadingLine{
	  from {width: 0;}
	  to {width: 100%;}
	}
	
	
	  </style>
    
  </head>
  <body class="vertical  light  ">
    
  

   
    <div class="wrapper">
      <nav class="topnav navbar navbar-light">
        <button type="button" class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
          <i class="fe fe-menu navbar-toggler-icon"></i>
        </button>
        <form class="form-inline mr-auto searchform text-muted">
          <input class="form-control mr-sm-2 bg-transparent border-0 pl-4 text-muted" type="search" placeholder="Type something..." aria-label="Search">
        </form>
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link text-muted my-2" href="#" id="modeSwitcher" data-mode="light">
              <i class="fe fe-sun fe-16"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-muted my-2" href="./#" data-toggle="modal" data-target=".modal-shortcut">
              <span class="fe fe-grid fe-16"></span>
            </a>
          </li>
          <li class="nav-item nav-notif">
            <a class="nav-link text-muted my-2" href="./#" data-toggle="modal" data-target=".modal-notif">
              <span class="fe fe-bell fe-16"></span>
              <span class="dot dot-md bg-success"></span>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-muted pr-0" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="avatar avatar-sm mt-2">
                <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
              </span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="${cpath}/profi.do">프로필</a>
              <a class="dropdown-item" href="${cpath}/setting.do">설정</a>
          
            </div>
          </li>
        </ul>
      </nav>
      <aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a>
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${cpath}/index.do">
              
                <img src="assets/images/logo.png" id="logo" class="navbar-brand-img brand-sm" alt="...">
                <g>
                  <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                  <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                  <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                </g>
              </svg>
            </a>
          </div>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item dropdown">
              <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-home fe-16"></i>
                <span class="ml-3 item-text">SMART IoT</span><span class="sr-only">(current)</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="dashboard">
                <li class="nav-item active">
                  <a class="nav-link pl-3" href="${cpath}/index4.do"><span class="ml-1 item-text">기기등록</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${cpath}/index2.do"><span class="ml-1 item-text">원격접속</span></a>
                </li>
               
              </ul>
            </li>
          </ul>
         
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item dropdown">
              <a href="#ui-elements" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-box fe-16"></i>
                <span class="ml-3 item-text">전력 사용량</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="ui-elements">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${cpath}/index.do"><span class="ml-1 item-text">실시간 사용량</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${cpath}/index3.do"><span class="ml-1 item-text">월별 사용량</span></a>
                </li>
                
              </ul>
            </li>
            <li class="nav-item w-100">
              <a class="nav-link" href="${cpath}/index6.do">
                <i class="fe fe-layers fe-16"></i>
                <span class="ml-3 item-text">전력 예측</span>
                <span class="badge badge-pill badge-primary">New</span>
              </a>
            </li>
          </li>
          <li class="nav-item dropdown">
            <a href="#forms" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
              <i class="fe fe-credit-card fe-16"></i>
              <span class="ml-3 item-text">마이페이지</span>
            </a>
            <ul class="collapse list-unstyled pl-4 w-100" id="forms">
              <li class="nav-item">
                <a class="nav-link pl-3" href="${cpath}/profi.do"><span class="ml-1 item-text">프로필</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link pl-3" href="${cpath}/setting.do"><span class="ml-1 item-text">설정</span></a>
              </li>
             
              </li>
          </ul>
         
         
          
            
            
          
          <p class="text-muted nav-heading mt-4 mb-1">
            <span>Documentation</span>
          </p>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item w-100">
              <a class="nav-link" href="${cpath}/faq.do">
                <i class="fe fe-help-circle fe-16"></i>
                <span class="ml-3 item-text">문의하기</span>
              </a>
            </li>
          </ul>
          <div class="btn-box w-100 mt-4 mb-1">
            <a href="${cpath}/logout.do" target="_blank" class="btn mb-2 btn-primary btn-lg btn-block">
              <i class="fe fe-shopping-cart fe-12 mx-2"></i><span class="small">로그아웃</span>
            </a>
          </div>
        </nav>
      </aside>
      <main role="main" class="main-content">
        <div id="loding2">
          <h1 id="loding3" data-text="LOADING">LOADING</h1>
          </div>
    
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="row align-items-center mb-2">
                <div class="col">
                  <h2 class="h5 page-title">　</h2>
                </div>
                <div class="col-auto">
                  <form class="form-inline">
                    <div class="form-group d-none d-lg-inline">
                      <label for="reportrange" class="sr-only">Date Ranges</label>
                      <div id="reportrange" class="px-2 py-2 text-muted">
                        <span class="small"></span>
                      </div>
                    </div>
                    <div class="form-group">
                      <button type="button" class="btn btn-sm"><span class="fe fe-refresh-ccw fe-16 text-muted"></span></button>
                      <button type="button" class="btn btn-sm mr-2"><span class="fe fe-filter fe-16 text-muted"></span></button>
                    </div>
                  </form>
                </div>
              </div>
              <div class="card shadow my-4">
                <div class="card-body">
                  <div class="row align-items-center my-4">
                    <div class="col-md-4">
                      <div class="mx-4">
                        <strong class="mb-0 text-uppercase text-muted">금월 예상 전력량</strong><br />
                        <h2>1,121.3 kWh</h2>
                        
                      </div>
                      <div class="row align-items-center">
                        <div class="col-6">
                          <div class="p-4">
                            <p class="small text-uppercase text-muted mb-0">다음 달 예상 전기료</p>
                            <span class="h2 mb-0">${result}원</span>
                            <p class="small mb-0">
                              <span class="fe fe-arrow-up text-success fe-12"></span>
                              <span class="text-muted ml-1">+1.5%</span>
                            </p>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="p-4">
                            <p class="small text-uppercase text-muted mb-0">높은 사용률 시간대</p>
                            <span class="h2 mb-0">오후 3시</span>
                            <p class="small mb-0">
                              <span class="fe fe-arrow-up text-success fe-12"></span>
                              <span class="text-muted ml-1">+28.5%</span>
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="row align-items-center">
                        <div class="col-6">
                          <div class="p-4">
                            <p class="small text-uppercase text-muted mb-0">등록된 가전기기</p>
                            <span class="h2 mb-0">43 개</span>
                            <p class="small mb-0">
                              <span class="text-muted ml-1">+2개 증가</span>
                            </p>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="p-4">
                            <p class="small text-uppercase text-muted mb-0">예상 누진세 단계</p>
                            <span class="h2 mb-0">2단계</span>
                            <p class="small mb-0">
                              <span class="text-muted ml-1">+1단계 증가</span>
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-8">
                      <!-- 예측차트 -->
                      <div class="mr-4">
                        <div class="container78">
                          
                          <div><iframe class="chartjs-hidden-iframe" tabindex="-1" style="display: block; overflow: hidden; border: 0px; margin: 0px; top: 0px; left: 0px; bottom: 0px; right: 0px; height: 100%; width: 100%; position: absolute; pointer-events: none; z-index: -1;"></iframe>
                            <canvas id="myChart" width="1142" height="570" style="display: block; height: 634px; width: 1269px;"></canvas>
                          </div>
                        </div>
                      </div>
                      <!-- 예측차트  끝-->
                    </div> <!-- .col-md-8 -->
                  </div> <!-- end section -->
                </div> <!-- .card-body -->
              </div> <!-- .card -->
              <div class="row">
                <div class="col-md-4">
                  <div class="card shadow eq-card mb-4">
                    <div class="card-body">
                      <div class="card-title">
                        <strong>예상 전기료</strong>
                        
                      </div>
                      <div class="row mt-b">
                        <div class="col-6 text-center mb-3 border-right">
                          <p class="text-muted mb-1">오늘</p>
                          <h6 class="mb-1">830 원</h6>
                          <p class="text-muted mb-2">+5.5% <span class="fe fe-arrow-up fe-12 text-success"></span></p>
                        </div>
                        <div class="col-6 text-center mb-3">
                          <p class="text-muted mb-1">내일</p>
                          <h6 class="mb-1">4,830원</h6>
                          <p class="text-muted">-5.5%<span class="fe fe-arrow-down text-danger fe-12"></p>
                        </div>
                        <div class="col-6 text-center border-right">
                          <p class="text-muted mb-1">이번 주</p>
                          <h6 class="mb-1">11,680원</h6>
                          <p class="text-muted mb-2">+1.5% <span class="fe fe-arrow-up fe-12 text-warning"></span></p>
                        </div>
                        <div class="col-6 text-center">
                          <p class="text-muted mb-1">다음 주</p>
                          <h6 class="mb-1">10,240원</h6>
                          <p class="text-muted">-5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></p>
                        </div>
                        <div class="col-6 text-center mb-3 border-right">
                          <p class="text-muted mb-1">이번 달</p>
                          <h6 class="mb-1">83,121원</h6>
                          <p class="text-muted mb-2">+5.5% <span class="fe fe-arrow-up fe-12 text-success"></span></p>
                        </div>
                        <div class="col-6 text-center mb-3">
                          <p class="text-muted mb-1">다음 달</p>
                          <h6 class="mb-1">81,401원</h6>
                          <p class="text-muted">-5.5% <span class="fe fe-arrow-down text-danger fe-12"></span></p>
                        </div>
                        <div class="col-6 text-center border-right">
                          <p class="text-muted mb-1">누적전기세(올해)</p>
                          <h6 class="mb-1">431,121원</h6>
                          <p class="text-muted mb-2">+1.5% <span class="fe fe-arrow-up fe-12 text-warning"></span></p>
                        </div>
                        <div class="col-6 text-center">
                          <p class="text-muted mb-1">올해 예상전기세</p>
                          <h6 class="mb-1">1,347,130원</h6>
                          <p class="text-muted">-5.5%<span class="fe fe-arrow-down text-danger fe-12"></span></p>
                        </div>
                        
                        
                        
                      </div>
                      
                     
                    </div> <!-- .card-body -->
                  </div> <!-- .card -->
                </div> <!-- .col -->
                <div class="col-md-4">
                  <div class="card shadow eq-card mb-4">
                    <div class="card-body">
                      <div class="card-title">
                        <strong>방별 사용률</strong>
                       
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>거실</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-down text-danger fe-12"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+55%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>주방</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+20%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>작은방1</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+5%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 5%" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>드레스룸</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+5%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 5%" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>작은방2</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+5%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 5%" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>화장실</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+4%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 4%" aria-valuenow="4" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                          <div class="row align-items-center my-2">
                            <div class="col">
                              <strong>작은방3</strong>
                              <div class="my-0 text-muted small">5.5%<span class="fe fe-arrow-up fe-12 text-warning"></span></div>
                            </div>
                            <div class="col-auto">
                              <strong>+2%</strong>
                            </div>
                            <div class="col-3">
                              <div class="progress" style="height: 4px;">
                                <div class="progress-bar" role="progressbar" style="width: 2%" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                            </div>
                          </div>
                        </div> <!-- .col-md-12 -->
                        
                      </div> <!-- .row -->
                    </div> <!-- .card-body -->
                  </div> <!-- .card -->
                </div> <!-- .col-md-4 -->
                <!-- Map -->
                
              
                
                <div class="col-md-4">
                  <div class="card shadow eq-card timeline">
                    <div class="card-header">
                      <strong class="card-title">실시간 분석</strong>
                     
                    </div>
                    
                    <div class="card-body" data-simplebar style="height: 360px; overflow-y: auto; overflow-x: hidden;">
                      <div class="pb-3 timeline-item item-primary">
                        <div class="pl-5">
                          <div class="mb-1 small"><strong>@효정님</strong><span class="text-muted mx-2">현재 거실 사용량이 저번 달 대비 5.5% 하락했습니다. </span></div>
                          <span class="badge badge-light">1h ago</span>
                          
                        </div>
                      </div>
                      <div class="pb-3 timeline-item item-primary">
                        <div class="pl-5">
                          <div class="mb-1 small"><strong>@효정님</strong><span class="text-muted mx-2">24시간동안 사용하지 않는 대기전력(컴퓨터, 노트북)이 있습니다. </span></div>
                          <span class="badge badge-light">2h ago</span>
                          
                        </div>
                      </div>
                      <div class="pb-3 timeline-item item-primary">
                        <div class="pl-5">
                          <div class="mb-1 small"><strong>@효정님</strong><span class="text-muted mx-2">효정님 현제 다음달 예상 전기세가 1.5% 높게 측정됩니다. </span></div>
                          <span class="badge badge-light">3h ago</span>
                          
                        </div>
                      </div>
                      
                      <div class="pb-3 timeline-item item-success">
                        <div class="pl-5">
                          <div class="mb-2 small"><strong>@효정님</strong><span class="text-muted mx-2">다음달 전기세 절약 20% 하락을 위해서 절약모드 추천드립니다. </span><strong>마이페이지 > 설정</strong></div>
                          <div class="card d-inline-flex mb-2">
                            <div class="card-body bg-light small py-2 px-3">절약모드를 통해 전기세를 절약해보세요</div> </div>
                            <span class="badge badge-light">3h ago</span>
                          </div>
                          
                          
                        </div>
                      </div>
                    </div> <!-- / .card-body -->
                  </div> <!-- / .card -->
                </div> <!-- / .col-md-3 -->
              </div> <!-- end section -->
            </div>
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
        <div class="modal fade modal-notif modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">알람</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="list-group list-group-flush my-n3">
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-box fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>패키지 PRO 남은 기간</strong></small>
                        <div class="my-0 text-muted small">874일 계약이 남으셨습니다.</div>
                        <small class="badge badge-pill badge-light text-muted">1분전</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-download fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>업데이트 예정.</strong></small>
                        <div class="my-0 text-muted small">완벽한 호환을 위해 업데이트 예정입니다.</div>
                        <small class="badge badge-pill badge-light text-muted">2분 전</small>
                      </div>
                    </div>
                  </div>
                  
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-link fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>실시간 전력예측을 확인해주세요</strong></small>
                        <div class="my-0 text-muted small">예측 정보가 올라왔습니다.</div>
                        <small class="badge badge-pill badge-light text-muted">1시간 전</small>
                      </div>
                    </div>
                  </div> <!-- / .row -->
                </div> <!-- / .list-group -->
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">Clear All</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade modal-shortcut modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">바로가기</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body px-5">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-success justify-content-center">
                      <i class="fe fe-cpu fe-32 align-self-center text-white"></i>
                    </div>
                    <p>컨트롤</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                    </div>
                    <a href="${cpath}/index.do">
                      <p>계약연장</p>
                      </a>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                    </div>
                    <a href="${cpath}/index8.do">
                      <p>재실 정보</p>
                      </a>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                    </div>
                    <p>업로드</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-users fe-32 align-self-center text-white"></i>
                    </div>
                    <p>관리자</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                    </div>
                    <p>설정</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main> <!-- main -->
    </div> <!-- .wrapper -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src='js/daterangepicker.js'></script>
    <script src='js/jquery.stickOnScroll.js'></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/config.js"></script>
    <script src="js/d3.min.js"></script>
    <script src="js/topojson.min.js"></script>
    <script src="js/datamaps.all.min.js"></script>
    <script src="js/datamaps-zoomto.js"></script>
    <script src="js/datamaps.custom.js"></script>
    <script src="js/Chart.min.js"></script>
    <script>
      /* defind global options */
      
    </script>
   
   
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
   
    <script>
      $(window).load(function(){
        $('#loding2').delay('15000').fadeOut();
    
      });
      </script>

<!-- 예측 차트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    
<script id="rendered-js">
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
type: 'bar',
data: {
labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
datasets: [{
label: '실제 전력량',
data: [756, 705, 601, 419, 545, 708, 711],

backgroundColor: "rgba(15,237,15,0.7)",




},


{
label: '예측 전력량',
data: [746, 715, 611, 429, 555, 718, 721,716,610,571,511,581],
backgroundColor: "rgba(210,70,30,0.5)" }] } });
//# sourceURL=pen.js
</script>
    
<!-- 예측 차트끝 -->




  








    




</body>
</html>