<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
    <link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
    <script src="resources/myLib/jquery-3.2.1.min.js"></script>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
     <!-- core css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="resources/myLib/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="resources/myLib/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="resources/myLib/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="resources/myLib/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="resources/myLib/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script>
	$(function() {
		// SearchType 이 '---' 면 keyword 클리어
		$('#searchType').change(function() {
			if ($(this).val() == 'n')
				$('#keyword').val('');
		}); //change

		$('#searchBtn').on(
				"click",
				function() {
					self.location = "nlist" + "${pageMaker.makeQuery(1)}"
							+ "&searchType=" + $('#searchType').val()
							+ '&keyword=' + $('#keyword').val()

				}); //on_click

	}) //ready
</script>
<style type="text/css">
.search{

text-align:center;

font-size:10px;

color:black;

padding:10px;

margin:10px;

-webkit-border-radius:15px;

}


</style>
</head>
  <body style="padding-top: 72px;">
    <header class="header">
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
          <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="index.html"><img src="resources/myLib/img/logo.svg" alt="Directory logo"></a>
            <div id="searchBar">
	            <select class="search" name="searchType" id="searchType">
		           <option value="n" <c:out value="${pageMaker.cri.searchType==null ? 'selected':''}"/> >---</option>
		           <option value="t" <c:out value="${pageMaker.cri.searchType=='t' ? 'selected':''}"/> >Title</option>
		           <option value="c" <c:out value="${pageMaker.cri.searchType=='c' ? 'selected':''}"/> >Content</option>
		           <option value="tc" <c:out value="${pageMaker.cri.searchType=='tc' ? 'selected':''}"/> >Title & Content</option>
	            </select>
	            <input class="search" type="text" name="keyword" id="keyword" value="${pageMaker.cri.keyword}">
	            <button class="search" id="searchBtn">Search</button>
            </div>
          </div>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
              <div class="input-label-absolute input-label-absolute-left input-reset w-100">
                <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search">
                <button class="btn btn-reset btn-sm" type="reset"><i class="fa-times fas">           </i></button>
              </div>
            </form>
            <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Home</a>
                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ml-1 mt-n1">New</span></a></div>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Template</a>
                <div class="dropdown-menu megamenu py-lg-0">
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="row p-3 pr-lg-0 pl-lg-5 pt-lg-5">
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Homepage</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ml-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Restaurants</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Rooms</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Blog</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="rlist">Review   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="nlist">Notice   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="qlist">QnA  </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base  <span class="badge badge-info-light ml-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base  &mdash; Topic<span class="badge badge-info-light ml-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions  <span class="badge badge-info-light ml-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Host</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">User</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice  <span class="badge badge-info-light ml-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ml-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail  <span class="badge badge-info-light ml-1">New</span>   </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="row megamenu-services d-none d-lg-flex pl-lg-5">
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#destination-map-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Best rentals</h6>
                              <p class="mb-0 text-muted text-sm">Find the perfect place</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#money-box-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Earn points</h6>
                              <p class="mb-0 text-muted text-sm">And get great rewards</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#customer-support-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">020-800-456-747</h6>
                              <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#secure-payment-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Secure Payment</h6>
                              <p class="mb-0 text-muted text-sm">Secure Payment</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block"><img class="bg-image" src="resources/myLib/img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt=""></div>
                  </div>
                </div>
              </li>
              <!-- /Megamenu end-->
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Docs</a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="docsDropdownMenuLink">
                  <h6 class="dropdown-header font-weight-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                  <div class="dropdown-divider"></div>
                  <h6 class="dropdown-header font-weight-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
                </div>
              </li>
              <c:if test="${loginID==null}">
              <li class="nav-item"><a class="nav-link" href=loginf>Sign in</a></li>
              <li class="nav-item"><a class="nav-link" href="joinf">Sign up</a></li>
              </c:if>
              <c:if test="${loginID!=null}">
              <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
              </c:if>
              <c:if test="${loginID!=null && loginID=='admin'}">
                  <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="ninsertf">Add a listing</a></li>
                </c:if>
              <c:if test="${loginID!=null && loginID!='admin'}">  
                  <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="nlist">Notice List</a></li>
              </c:if>
		      <c:if test="${loginID==null}">
			  <li class="nav-item mt-3 mt-lg-0 ml-lg-3 d-lg-none d-xl-inline-block"></li>
		      </c:if>           
		      </ul>
          </div>
        </div>
      </nav>
      <!-- /Navbar -->
    </header>
    <!-- Hero Section-->
    <section class="hero py-6 py-lg-7 text-white dark-overlay"><img class="bg-image" src="resources/myLib/img/noticeboard.jpg" alt="????" >
      <div class="container overlay-content">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb text-white justify-content-center no-border mb-0">
          <li class="breadcrumb-item"><a href="home">Home</a></li>
        </ol>
        <h1 class="hero-heading">Notice</h1>
      </div>
    </section>
    <section class="py-6">
      <div class="container">
      <h2 class="h4 mb-5" align="center">Notice</h2>
        <div class="row">
              <div class="controls">
                <div class="row">
                    <div class="form-group">
                      <table class="table">
                         <tr height="40" bgcolor="White" align="center">
	                         <th width="50">번호</th><th width="300">제목</th><th width="100">작성자</th><th width="100">작성일</th><th width="100">조회수</th>
                         </tr>
                         <c:forEach var="list" items="${Banana}"><tr height="40">
	                        <td align="center">${list.bfno}</</td>
	                        <td align="center">
		                    <!-- 로그인 했을때만 글내용을 볼 수 있도록 -->
		                    <c:if test="${loginID!=null}">
			                  <a class="a"  href="ndetail?bfno=${list.bfno}&id=${list.id}">${list.bftitle}</a>
		                    </c:if>
		                    <c:if test="${loginID==null}">
			                  ${list.bftitle}
		                    </c:if>
	                        </td>
	                        <td align="center">${list.id}</td>
	                        <td align="center">${list.bfdate}</td>
	                        <td align="center">${list.bfcnt}</td>
                            </tr></c:forEach></table>
                       <div align="center">
	<!-- Paging 2 : Criteria 적용 
		=> ver01 : pageMaker.makeQuery(?)
		=> ver02 : pageMaker.searchQuery(?)
	
		 1)  First << ,  Prev <  처리 -->
	<c:if test="${pageMaker.prev && pageMaker.spageNo>1}">
		<a href="nlist${pageMaker.searchQuery(1)}">FF</a>&nbsp;
		<a href="nlist${pageMaker.searchQuery(pageMaker.spageNo-1)}">Prev</a>
	</c:if>
	
	<!-- 2) sPageNo ~ ePageNo 까지, displayPageNo 만큼 표시 -->
	<c:forEach var="i" begin="${pageMaker.spageNo}" end="${pageMaker.epageNo}">
		<c:if test="${i==pageMaker.cri.currPage}">
			<font size="5" color="Orange">${i}</font>&nbsp;
		</c:if>
		<c:if test="${i!=pageMaker.cri.currPage}">
			<a href="nlist${pageMaker.searchQuery(i)}">${i}</a>&nbsp;
		</c:if>
	</c:forEach>
	&nbsp;
	<!-- 3) Next >  ,  Last >>  처리 -->
	<c:if test="${pageMaker.next && pageMaker.epageNo>0}">
		<a href="nlist${pageMaker.searchQuery(pageMaker.epageNo+1)}">Next</a>&nbsp;
		<a href="nlist${pageMaker.searchQuery(pageMaker.lastPageNo)}">LL</a>&nbsp;&nbsp;
	</c:if>
</div>     
                    </div>
                  </div>
                </div>
              </div>
          </div>

    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 bg-gray-200 text-muted"> 
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="font-weight-bold text-uppercase text-dark mb-3">Directory</div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
              <ul class="list-inline">
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-hover-primary" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="index.html">Rooms     </a></li>
                <li><a class="text-muted" href="category-rooms.html">Map on top     </a></li>
                <li><a class="text-muted" href="category-2-rooms.html">Side map     </a></li>
                <li><a class="text-muted" href="category-3-rooms.html">No map     </a></li>
                <li><a class="text-muted" href="detail-rooms.html">Room detail     </a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Pages</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
                <li><a class="text-muted" href="team.html">Team                                   </a></li>
                <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
              </ul>
            </div>
            <div class="col-lg-4">
              <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
              <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
              <form action="#" id="newsletter-form">
                <div class="input-group mb-3">
                  <input class="form-control bg-transparent border-dark border-right-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                  <div class="input-group-append">
                    <button class="btn btn-outline-dark border-left-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 font-weight-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-left">
              <p class="text-sm mb-md-0">&copy; 2020, Your company.  All rights reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-right">
                <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="resources/myLib/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="resources/myLib/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="resources/myLib/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="resources/myLib/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="resources/myLib/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="resources/myLib/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/myLib/js/theme.js"></script>
  </body>
</html>