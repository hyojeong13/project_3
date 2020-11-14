<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/onoff2.css">
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
              <a class="dropdown-item" href="#">프로필</a>
              <a class="dropdown-item" href="#">설정</a>
          
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
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${cpath}/myapp/index.do">
              
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
                  <a class="nav-link pl-3" href="${cpath}/myapp/index4.do"><span class="ml-1 item-text">기기등록</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${cpath}/myapp/index.do"><span class="ml-1 item-text">원격접속</span></a>
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
                  <a class="nav-link pl-3" href="${cpath}/myapp/index.do"><span class="ml-1 item-text">실시간 사용량</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${cpath}/myapp/index3.do"><span class="ml-1 item-text">월별 사용량</span></a>
                </li>
                
              </ul>
            </li>
            <li class="nav-item w-100">
              <a class="nav-link" href="#">
                <i class="fe fe-layers fe-16"></i>
                <span class="ml-3 item-text">전력 예측</span>
                <span class="badge badge-pill badge-primary">New</span>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a href="#forms" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-credit-card fe-16"></i>
                <span class="ml-3 item-text">마이페이지</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="forms">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="#"><span class="ml-1 item-text">basic</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="#"><span class="ml-1 item-text">basic</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="#"><span class="ml-1 item-text">basic</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="#"><span class="ml-1 item-text">basic</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="#"><span class="ml-1 item-text">basic</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="#"><span class="ml-1 item-text">basic</span></a>
                </li>
              </ul>
            </li>
          </ul>
         
         
          
            
            
          
          <p class="text-muted nav-heading mt-4 mb-1">
            <span>Documentation</span>
          </p>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item w-100">
              <a class="nav-link" href="#">
                <i class="fe fe-help-circle fe-16"></i>
                <span class="ml-3 item-text">문의하기</span>
              </a>
            </li>
          </ul>
          <div class="btn-box w-100 mt-4 mb-1">
            <a href="${cpath}/myapp/logout.do" target="_blank" class="btn mb-2 btn-primary btn-lg btn-block">
              <i class="fe fe-shopping-cart fe-12 mx-2"></i><span class="small">로그아웃</span>
            </a>
          </div>
        </nav>
      </aside>
      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="row align-items-center mb-2">
                <div class="col">
                  <h2 class="h5 page-title">안녕하세요 ${sessionScope.lastname}님</h2>
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
              <div class="mb-2 align-items-center">
                <div class="card shadow mb-4" >
                  <div class="card-body2">
                    <div class="row mt-1 align-items-center">
                      
                     
                     
                      
                      
                    
                            
	
	
                      
      
                        <section id="contents" class="clerafix">
                          <div class="cont1">
                              
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Computer</span></h1>
                                                          <p class="name4">124kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="0">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
          
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>VTR</span></h1>
                                                          <p class="name4">80kwh</p>
                                                          <p class="name4">3h 10m</p>	
                                                          <p class="name4">3,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div div id="switch" class="switch2" value="1">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Audio</span></h1>
                                                          <p class="name4">24kwh</p>
                                                          <p class="name4">4h 20m</p>	
                                                          <p class="name4">110원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div div id="switch" class="switch2" value="2">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Refrigerator</span></h1>
                                                          <p class="name4">11,040kwh</p>
                                                          <p class="name4">975h 70m</p>	
                                                          <p class="name4">3,151원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="3">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Rice cooker</span></h1>
                                                          <p class="name4">380kwh</p>
                                                          <p class="name4">1h 51m</p>	
                                                          <p class="name4">4,112원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="4">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Phone</span></h1>
                                                          <p class="name4">64kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">912원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="5">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Humidifier</span></h1>
                                                          <p class="name4">9,182kwh</p>
                                                          <p class="name4">3h 10m</p>	
                                                          <p class="name4">5,113원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="6">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>CCTV</span></h1>
                                                          <p class="name4">9,951kwh</p>
                                                          <p class="name4">354h 48m</p>	
                                                          <p class="name4">141,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="7">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Electric pad</span></h1>
                                                          <p class="name4">100kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="8">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Air purifier</span></h1>
                                                          <p class="name4">100kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="9">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>Air conditioner</span></h1>
                                                          <p class="name4">4,511kwh</p>
                                                          <p class="name4">5h 20m</p>	
                                                          <p class="name4">16,192원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="10">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>HDTV</span></h1>
                                                          <p class="name4">100kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="11">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>HDTV</span></h1>
                                                          <p class="name4">100kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="12">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>HDTV</span></h1>
                                                          <p class="name4">100kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="13">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                  <div class="cont1-2">
                                      <div class="on_off">
              
          
            
                                          <div class="full-height">
                                              <div class="absolute-center">
                                            
                                            <div class="section">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                          <h1 class="name3"><span>HDTV</span></h1>
                                                          <p class="name4">100kwh</p>
                                                          <p class="name4">1h 20m</p>	
                                                          <p class="name4">1,230원</p>		
                                                              </div>	
                                                          </div>		
                                                      </div>		
                                                  </div>
                                            
                                            <div class="section mt-6">
                                                      <div class="container">
                                                          <div class="row">
                                                              <div class="col-12">
                                                                  <div id="switch" class="switch2" value="13">
                                                                      <div id="circle"></div>
                                                                  </div>
                                                              </div>	
                                                          </div>		
                                                      </div>			
                                                  </div>
                                          
                                          </div>
                                        </div>
                                      </div>
          
                                  </div>
                              </div>
                              <div class="cont1-1">
                                <div class="cont1-2">
                                    <div class="on_off">
            
        
          
                                        <div class="full-height">
                                            <div class="absolute-center">
                                          
                                          <div class="section">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-12">
                                                        <h1 class="name3"><span>HDTV</span></h1>
                                                        <p class="name4">100kwh</p>
                                                        <p class="name4">1h 20m</p>	
                                                        <p class="name4">1,230원</p>		
                                                            </div>	
                                                        </div>		
                                                    </div>		
                                                </div>
                                          
                                          <div class="section mt-6">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <div id="switch" class="switch2" value="13">
                                                                    <div id="circle"></div>
                                                                </div>
                                                            </div>	
                                                        </div>		
                                                    </div>			
                                                </div>
                                        
                                        </div>
                                      </div>
                                    </div>
        
                                </div>
                            </div>
          
          
          
          
          
          
          
                          </div>
                          
                      </section>
  
  
    
  
                          
  
                          </div>
                    
                    
                    
                    
                    <!-- <div class="chartbox mr-4">
                      <div id="areaChart"></div>
                    </div> -->
                  </div> <!-- .card-body -->
                </div> <!-- .card -->
              </div>
              
             
                <!-- Striped rows -->
              
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
        <div class="modal fade modal-notif modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
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
                        <small><strong>Package has uploaded successfull</strong></small>
                        <div class="my-0 text-muted small">Package is zipped and uploaded</div>
                        <small class="badge badge-pill badge-light text-muted">1m ago</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-download fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Widgets are updated successfull</strong></small>
                        <div class="my-0 text-muted small">Just create new layout Index, form, table</div>
                        <small class="badge badge-pill badge-light text-muted">2m ago</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-inbox fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Notifications have been sent</strong></small>
                        <div class="my-0 text-muted small">Fusce dapibus, tellus ac cursus commodo</div>
                        <small class="badge badge-pill badge-light text-muted">30m ago</small>
                      </div>
                    </div> <!-- / .row -->
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-link fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Link was attached to menu</strong></small>
                        <div class="my-0 text-muted small">New layout has been attached to the menu</div>
                        <small class="badge badge-pill badge-light text-muted">1h ago</small>
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
                    <p>Control area</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Activity</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Droplet</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Upload</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-users fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Users</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Settings</p>
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
      Chart.defaults.global.defaultFontFamily = base.defaultFontFamily;
      Chart.defaults.global.defaultFontColor = colors.mutedColor;
    </script>
    <script src="js/gauge.min.js"></script>
    <script src="js/jquery.sparkline.min.js"></script>
    <script src="js/apexcharts.min.js"></script>
    <script src="js/apexcharts.custom.js"></script>
    <script src='js/jquery.mask.min.js'></script>
    <script src='js/select2.min.js'></script>
    <script src='js/jquery.steps.min.js'></script>
    <script src='js/jquery.validate.min.js'></script>
    <script src='js/jquery.timepicker.js'></script>
    <script src='js/dropzone.min.js'></script>
    <script src='js/uppy.min.js'></script>
    <script src='js/quill.min.js'></script>
    <script>
      $('.select2').select2(
      {
        theme: 'bootstrap4',
      });
      $('.select2-multi').select2(
      {
        multiple: true,
        theme: 'bootstrap4',
      });
      $('.drgpicker').daterangepicker(
      {
        singleDatePicker: true,
        timePicker: false,
        showDropdowns: true,
        locale:
        {
          format: 'MM/DD/YYYY'
        }
      });
      $('.time-input').timepicker(
      {
        'scrollDefault': 'now',
        'zindex': '9999' /* fix modal open */
      });
      /** date range picker */
      if ($('.datetimes').length)
      {
        $('.datetimes').daterangepicker(
        {
          timePicker: true,
          startDate: moment().startOf('hour'),
          endDate: moment().startOf('hour').add(32, 'hour'),
          locale:
          {
            format: 'M/DD hh:mm A'
          }
        });
      }
      var start = moment().subtract(29, 'days');
      var end = moment();

      function cb(start, end)
      {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
      }
      $('#reportrange').daterangepicker(
      {
        startDate: start,
        endDate: end,
        ranges:
        {
          'Today': [moment(), moment()],
          'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days': [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month': [moment().startOf('month'), moment().endOf('month')],
          'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        }
      }, cb);
      cb(start, end);
      $('.input-placeholder').mask("00/00/0000",
      {
        placeholder: "__/__/____"
      });
      $('.input-zip').mask('00000-000',
      {
        placeholder: "____-___"
      });
      $('.input-money').mask("#.##0,00",
      {
        reverse: true
      });
      $('.input-phoneus').mask('(000) 000-0000');
      $('.input-mixed').mask('AAA 000-S0S');
      $('.input-ip').mask('0ZZ.0ZZ.0ZZ.0ZZ',
      {
        translation:
        {
          'Z':
          {
            pattern: /[0-9]/,
            optional: true
          }
        },
        placeholder: "___.___.___.___"
      });
      // editor
      var editor = document.getElementById('editor');
      if (editor)
      {
        var toolbarOptions = [
          [
          {
            'font': []
          }],
          [
          {
            'header': [1, 2, 3, 4, 5, 6, false]
          }],
          ['bold', 'italic', 'underline', 'strike'],
          ['blockquote', 'code-block'],
          [
          {
            'header': 1
          },
          {
            'header': 2
          }],
          [
          {
            'list': 'ordered'
          },
          {
            'list': 'bullet'
          }],
          [
          {
            'script': 'sub'
          },
          {
            'script': 'super'
          }],
          [
          {
            'indent': '-1'
          },
          {
            'indent': '+1'
          }], // outdent/indent
          [
          {
            'direction': 'rtl'
          }], // text direction
          [
          {
            'color': []
          },
          {
            'background': []
          }], // dropdown with defaults from theme
          [
          {
            'align': []
          }],
          ['clean'] // remove formatting button
        ];
        var quill = new Quill(editor,
        {
          modules:
          {
            toolbar: toolbarOptions
          },
          theme: 'snow'
        });
      }
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function()
      {
        'use strict';
        window.addEventListener('load', function()
        {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');
          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form)
          {
            form.addEventListener('submit', function(event)
            {
              if (form.checkValidity() === false)
              {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
    <script>
      var uptarg = document.getElementById('drag-drop-area');
      if (uptarg)
      {
        var uppy = Uppy.Core().use(Uppy.Dashboard,
        {
          inline: true,
          target: uptarg,
          proudlyDisplayPoweredByUppy: false,
          theme: 'dark',
          width: 770,
          height: 210,
          plugins: ['Webcam']
        }).use(Uppy.Tus,
        {
          endpoint: 'https://master.tus.io/files/'
        });
        uppy.on('complete', (result) =>
        {
          console.log('Upload complete! We’ve uploaded these files:', result.successful)
        });
      }
    </script>
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
  
  <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
  <script>
      $(".nav > ul > li").hover(
          function(){
              $(this).find(".submenu").stop().slideDown();
          },function(){
              $(this).find(".submenu").stop().slideUp();
      });


      //Button Effect

  </script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
    <script>
        $(".nav > ul > li").hover(
            function(){
                $(this).find(".submenu").stop().slideDown();
            },function(){
                $(this).find(".submenu").stop().slideUp();
        });


        //Button Effect
  
    </script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script>
    $(".nav > ul > li").hover(
        function(){
            $(this).find(".submenu").stop().slideDown();
        },function(){
            $(this).find(".submenu").stop().slideUp();
    });


    //Button Effect

</script>


<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script id="rendered-js">
/* Please ❤ this if you like it! */


(function ($) {"use strict";

$(function () {
var header = $(".start-style");
$(window).scroll(function () {
  var scroll = $(window).scrollTop();

  if (scroll >= 10) {
    header.removeClass('start-style').addClass("scroll-on");
  } else {
    header.removeClass("scroll-on").addClass('start-style');
  }
});
});



//Animation

$(document).ready(function () {
$('.on_off.hero-anime').removeClass('hero-anime');
});

//Menu On Hover

$('.on_off').on('mouseenter mouseleave', '.nav-item', function (e) {
if ($(window).width() > 750) {
  var _d = $(e.target).closest('.nav-item');_d.addClass('show');
  setTimeout(function () {
    _d[_d.is(':hover') ? 'addClass' : 'removeClass']('show');
  }, 1);
}
});

//Switch light/dark

$(".switch2").on('click', function () {
var clicked_on_off = $($(".on_off")[$(this).attr('value')])
if (clicked_on_off.hasClass("dark")) {
  clicked_on_off.removeClass("dark");
  $(this).removeClass("switched");
} else
{
  clicked_on_off.addClass("dark");
  $(this).addClass("switched");
}
});

})(jQuery);
//# sourceURL=pen.js
</script>

</body>
</html>