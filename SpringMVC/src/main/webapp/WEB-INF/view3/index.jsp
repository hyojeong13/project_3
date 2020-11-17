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
    <style>
    .container34 {
    width: 100%;
    
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
                <div class="card shadow mb-4">
                  <div class="card-body">
                    <div class="row mt-1 align-items-center">
                      <div class="col-12 col-lg-4 text-left pl-4">
                        <p class="mb-1 small text-muted">금일 예상 전기료</p>
                        <span class="h3">￦ 4,382 원</span>
                        <span class="small text-muted">+14%</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                        <p class="text25"> 에어컨 사용으로 인해 전력 사용율 % 증가 </p>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4">
                        <p class="mb-1 small text-muted">어제 전기료</p>
                        <span class="h3">￦ 2,600원</span><br />
                        <span class="small text-muted">+20%</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4 mb-2">
                        <p class="mb-1 small text-muted">오늘 전기료</p>
                        <span class="h3">￦ 2,758원</span><br />
                        <span class="small text-muted">+6%</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4">
                        <p class="mb-1 small text-muted">저번달 전력량</p>
                        <span class="h3">760kWh</span><br />
                        <span class="small text-muted">+20%</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4">
                        <p class="mb-1 small text-muted">이번달 전력량</p>
                        <span class="h3">458kWh</span><br />
                        <span class="small text-muted">-52%</span>
                        <span class="fe fe-arrow-down text-danger fe-12"></span>
                      </div>
                    </div>
                    <div class="container34">
                      <h2>실시간 전력 사용량(kw)</h2>
                      <div>
                        <canvas id="canvas" style="width: 1327px;height: 400px;"></canvas>
                      </div>
                    </div>
                    
                    
                  </div>
                </div>
                
                    










                    
                    <div class="row">
                      <!-- Recent Activity -->
                      <div class="col-md-12 col-lg-4 mb-4">
                        <div class="card timeline shadow">
                          <div class="card-header">
                            <strong class="card-title">타임라인</strong>
                            <a class="float-right small text-muted" href="#!">View all</a>
                          </div>
                          <div class="card-body" data-simplebar style="height:355px; overflow-y: auto; overflow-x: hidden;">
                            <h6 class="text-uppercase text-muted mb-4">Today</h6>
                            <div class="pb-3 timeline-item item-primary">
                              <div class="pl-5">
                                <div class="mb-1"><strong>@김형호</strong><span class="text-muted small mx-2">님께서 4시간 동안 컴퓨터를 사용하였습니다.</span><strong>작은방</strong></div>
                                <p class="small text-muted">알람 시간 <span class="badge badge-light">1h ago</span>
                                </p>
                              </div>
                            </div>
                            <div class="pb-3 timeline-item item-warning">
                              <div class="pl-5">
                                <div class="mb-3"><strong>@박효정</strong><span class="text-muted small mx-2">님께서 에어컨을 4시간 20분 사용하였습니다. </span><strong>거실</strong></div>
                                <p class="small text-muted">알람 시간 <span class="badge badge-light">1h ago</span>
                                </p>
                              </div>
                            </div>
                            <div class="pb-3 timeline-item item-success">
                              <div class="pl-5">
                                <div class="mb-3"><strong>@공한별</strong><span class="text-muted small mx-2">님께서 에어컨을 4시간 20분 사용하였습니다.</span><strong></strong></div>
                                <div class="card d-inline-flex mb-2">
                                  <div class="card-body bg-light py-2 px-3 small rounded"> 전력 에코모드를 시행하였습니다. </div>
                                </div>
                                <p class="small text-muted">알람 시간 <span class="badge badge-light">1h ago</span>
                                </p>
                              </div>
                            </div>
                            <h6 class="text-uppercase text-muted mb-4">Yesterday</h6>
                            <div class="pb-3 timeline-item item-warning">
                              <div class="pl-5">
                                <div class="mb-3"><strong>@박효정</strong><span class="text-muted small mx-2">님께서 4시간 동안 컴퓨터2를 사용하였습니다.</span><strong>큰방</strong></div>
                                <ul class="avatars-list mb-3">
                                  
                                 
                                </ul>
                                <p class="small text-muted">알람 시간 <span class="badge badge-light">1h ago</span>
                                </p>
                              </div>
                            </div>
                          
                            
                          </div> <!-- / .card-body -->
                        </div> <!-- / .card -->
                      </div> <!-- / .col-md-6 -->
                      <!-- Striped rows -->
                      <div class="col-md-12 col-lg-8">
                        <div class="card shadow">
                          <div class="card-header">
                            <strong class="card-title">실시간 전력 내역</strong>
                            <a class="float-right small text-muted" href="#!">View all</a>
                          </div>
                          <div class="card-body my-n2">
                            <table class="table table-striped table-hover table-borderless">
                              <thead>
                                <tr>
                                  <th>ID</th>
                                  <th>Name</th>
                                  <th>kWh</th>
                                  <th>Date</th>
                                  <th>Action</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>2474</td>
                                  <th scope="col">에어컨</th>
                                  <td>1102 kWh</td>
                                  <td>13/09/2020</td>
                                  <td>
                                    <div class="dropdown">
                                      <button class="btn btn-sm dropdown-toggle more-vertical" type="button" id="dr1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="text-muted sr-only">Action</span>
                                      </button>
                                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dr1">
                                        <a class="dropdown-i7tem" href="#">끄기</a>
                                        <a class="dropdown-item" href="#">켜기</a>
                                        
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>2786</td>
                                  <th scope="col">TV</th>
                                  <td>478 kWh</td>
                                  <td>04/05/2019</td>
                                  <td>
                                    <div class="dropdown">
                                      <button class="btn btn-sm dropdown-toggle more-vertical" type="button" id="dr2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="text-muted sr-only">Action</span>
                                      </button>
                                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dr2">
                                        <a class="dropdown-item" href="#">끄기</a>
                                        <a class="dropdown-item" href="#">켜기</a>
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>2747</td>
                                  <th scope="col">컴퓨터(김형호)</th>
                                  <td>1577 kWh</td>
                                  <td>04/06/2019</td>
                                  <td>
                                    <div class="dropdown">
                                      <button class="btn btn-sm dropdown-toggle more-vertical" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="text-muted sr-only">Action</span>
                                      </button>
                                      <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">끄기</a>
                                        <a class="dropdown-item" href="#">켜기</a>
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>2639</td>
                                  <th scope="col">컴퓨터(박효정)</th>
                                  <td>2512 kWh</td>
                                  <td>04/08/2019</td>
                                  <td>
                                    <div class="dropdown">
                                      <button class="btn btn-sm dropdown-toggle more-vertical" type="button" id="dr4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="text-muted sr-only">Action</span>
                                      </button>
                                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dr4">
                                        <a class="dropdown-item" href="#">끄기</a>
                                        <a class="dropdown-item" href="#">켜기</a>
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>2238</td>
                                  <th scope="col">셋톱박스</th>
                                  <td>2357 kWh</td>
                                  <td>04/01/2019</td>
                                  <td>
                                    <div class="dropdown">
                                      <button class="btn btn-sm dropdown-toggle more-vertical" type="button" id="dr5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="text-muted sr-only">Action</span>
                                      </button>
                                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dr5">
                                        <a class="dropdown-item" href="#">끄기</a>
                                        <a class="dropdown-item" href="#">켜기</a>
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div> <!-- Striped rows -->
                    </div> <!-- .row-->
                    
                    
                    
                    
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
                    <a href="${cpath}/index7.do">
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
  <script>
      $(".nav > ul > li").hover(
          function(){
              $(this).find(".submenu").stop().slideDown();
          },function(){
              $(this).find(".submenu").stop().slideUp();
      });


      //Button Effect

  </script>

  <!-- start -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
  <script >
    var dData = function () {
  return Math.round(Math.random() * 100) + 41;
};

var barChartData = {
  labels: ["1 초", "2 초", "3 초", "4 초", "5 초", "6 초", "7 초", "8 초", "9 초", "10 초"],
  datasets: [{
    fillColor: "rgba(28,181,89,0.09)",
    strokeColor: "rgba(0,227,150,1)",
    highlightFill: "rgba(220,220,220,0.75)",
    highlightStroke: "rgba(220,220,220,1)",
    data: [dData(), dData(), dData(), dData(), dData(), dData(), dData(), dData(), dData(), dData()] }] };

   

var index = 11;
var ctx = document.getElementById("canvas").getContext("2d");
var barChartDemo = new Chart(ctx).Bar(barChartData, {
  responsive: true,
  barValueSpacing: 2 });

setInterval(function () {
  barChartDemo.removeData();
  barChartDemo.addData([dData()], index+"초 ");
  index++;
}, 4000);
    //# sourceURL=pen.js
  </script>




</body>
</html>