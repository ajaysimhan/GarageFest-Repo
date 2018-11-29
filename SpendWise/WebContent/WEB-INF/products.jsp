<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="products.ProductDTO"%>
<html lang="en">
<<<<<<< HEAD
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description"
         content="Creative - Bootstrap 3 Responsive Admin Template">
      <meta name="author" content="GeeksLabs">
      <meta name="keyword"
         content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
      <link rel="shortcut icon" href="img/favicon.png">
      <title>SpendWise</title>
      <!-- Bootstrap CSS -->
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <!-- bootstrap theme -->
      <link href="css/bootstrap-theme.css" rel="stylesheet">
      <!--external css-->
      <!-- font icon -->
      <link href="css/elegant-icons-style.css" rel="stylesheet" />
      <link href="css/font-awesome.min.css" rel="stylesheet" />
      <!-- full calendar css-->
      <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
         rel="stylesheet" />
      <link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
         rel="stylesheet" />
      <!-- easy pie chart-->
      <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
         rel="stylesheet" type="text/css" media="screen" />
      <!-- owl carousel -->
      <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
      <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
      <!-- Custom styles -->
      <link rel="stylesheet" href="css/fullcalendar.css">
      <link href="css/widgets.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">
      <link href="css/style-responsive.css" rel="stylesheet" />
      <link href="css/xcharts.min.css" rel=" stylesheet">
      <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
      <link href="css/vimal.css" rel="stylesheet">
      <script src="code/highcharts.js"></script>
      <!-- =======================================================
         Theme Name: NiceAdmin
         Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
         Author: BootstrapMade
         Author URL: https://bootstrapmade.com
         ======================================================= -->
   </head>
   <body>
      <!-- container section start -->
      <section id="container" class="">
         <header class="header dark-bg">
            <div class="toggle-nav">
               <div class="icon-reorder tooltips"
                  data-original-title="Toggle Navigation" data-placement="bottom">
                  <i class="icon_menu"></i>
               </div>
            </div>
            <!--logo start-->
            <a class="logo">
               <form action="SpendWise">
                  <input type="hidden" name="myAction" value="home">
                  <button type="submit">
                  Spend <span class="lite">Wise 
                  </button>
               </form>
               </span>
            </a>
            <!--logo end-->
            <div class="top-nav notification-row">
               <!-- notificatoin dropdown start-->
               <ul class="nav pull-right top-menu">
                  <!-- task notificatoin start -->
                  <li id="task_notificatoin_bar" class="dropdown">
                     <a
                        data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                        class="icon-task-l"></i> <span class="badge bg-important">6</span>
                     </a>
                     <ul class="dropdown-menu extended tasks-bar">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                           <p class="blue">You have 6 pending letter</p>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Design PSD</div>
                                 <div class="percent">90%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-success"
                                    role="progressbar" aria-valuenow="90" aria-valuemin="0"
                                    aria-valuemax="100" style="width: 90%">
                                    <span class="sr-only">90% Complete (success)</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Project 1</div>
                                 <div class="percent">30%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-warning"
                                    role="progressbar" aria-valuenow="30" aria-valuemin="0"
                                    aria-valuemax="100" style="width: 30%">
                                    <span class="sr-only">30% Complete (warning)</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Digital Marketing</div>
                                 <div class="percent">80%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-info" role="progressbar"
                                    aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                    style="width: 80%">
                                    <span class="sr-only">80% Complete</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Logo Designing</div>
                                 <div class="percent">78%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-danger"
                                    role="progressbar" aria-valuenow="78" aria-valuemin="0"
                                    aria-valuemax="100" style="width: 78%">
                                    <span class="sr-only">78% Complete (danger)</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Mobile App</div>
                                 <div class="percent">50%</div>
                              </div>
                              <div class="progress progress-striped active">
                                 <div class="progress-bar" role="progressbar"
                                    aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                    style="width: 50%">
                                    <span class="sr-only">50% Complete</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li class="external"><a href="#">See All Tasks</a></li>
                     </ul>
                  </li>
                  <!-- task notificatoin end -->
                  <!-- inbox notificatoin start-->
                  <li id="mail_notificatoin_bar" class="dropdown">
                     <a
                        data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                        class="icon-envelope-l"></i> <span class="badge bg-important">5</span>
                     </a>
                     <ul class="dropdown-menu extended inbox">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                           <p class="blue">You have 5 new messages</p>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini.jpg"></span> <span
                           class="subject"> <span class="from">Greg Martin</span> <span
                           class="time">1 min</span>
                           </span> <span class="message"> I really like this admin panel. </span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini2.jpg"></span> <span
                           class="subject"> <span class="from">Bob Mckenzie</span>
                           <span class="time">5 mins</span>
                           </span> <span class="message"> Hi, What is next project plan? </span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini3.jpg"></span> <span
                           class="subject"> <span class="from">Phillip Park</span>
                           <span class="time">2 hrs</span>
                           </span> <span class="message"> I am like to buy this Admin
                           Template. </span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini4.jpg"></span> <span
                           class="subject"> <span class="from">Ray Munoz</span> <span
                           class="time">1 day</span>
                           </span> <span class="message"> Icon fonts are great. </span>
                           </a>
                        </li>
                        <li><a href="#">See all messages</a></li>
                     </ul>
                  </li>
                  <!-- inbox notificatoin end -->
                  <!-- alert notification start-->
                  <li id="alert_notificatoin_bar" class="dropdown">
                     <a
                        data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                        class="icon-bell-l"></i> <span class="badge bg-important">7</span>
                     </a>
                     <ul class="dropdown-menu extended notification">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                           <p class="blue">You have 4 new notifications</p>
                        </li>
                        <li><a href="#"> <span class="label label-primary"><i
                           class="icon_profile"></i></span> Friend Request <span
                           class="small italic pull-right">5 mins</span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="label label-warning"><i
                           class="icon_pin"></i></span> John location. <span
                           class="small italic pull-right">50 mins</span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="label label-danger"><i
                           class="icon_book_alt"></i></span> Project 3 Completed. <span
                           class="small italic pull-right">1 hr</span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="label label-success"><i
                           class="icon_like"></i></span> Mick appreciated your work. <span
                           class="small italic pull-right"> Today</span>
                           </a>
                        </li>
                        <li><a href="#">See all notifications</a></li>
                     </ul>
                  </li>
                  <!-- alert notification end-->
                  <!-- user login dropdown start-->
                  <li class="dropdown">
                     <a data-toggle="dropdown"
                        class="dropdown-toggle" href="#"> <span class="profile-ava">
                     <img alt="" src="img/avatar1_small.jpg">
                     </span> <span class="username"><%=session.getAttribute("username")%></span>
                     <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top"><a href="#"><i
                           class="icon_profile"></i> My Profile</a></li>
                        <li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
                        <li><a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                        </li>
                        <li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
                        <li><a href="login.jsp"><i class="icon_key_alt"></i> Log
                           Out</a>
                        </li>
                        <li><a href="documentation.html"><i class="icon_key_alt"></i>
                           Documentation</a>
                        </li>
                        <li><a href="documentation.html"><i class="icon_key_alt"></i>
                           Documentation</a>
                        </li>
                     </ul>
                  </li>
                  <!-- user login dropdown end -->
               </ul>
               <!-- notificatoin dropdown end-->
            </div>
         </header>
         <!--header end-->
         <!--sidebar start-->
         <aside>
            <div id="sidebar" class="nav-collapse ">
               <!-- sidebar menu start-->
               <ul class="sidebar-menu">
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_house_alt"></i> <input type="hidden"
                              name="myAction" value="home">
                           <button type="submit">Home</button>
                        </form>
                     </a>
                  </li>
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_documents_alt"></i> <input type="hidden"
                              name="myAction" value="addAccounts">
                           <button type="submit">Accounts</button>
                        </form>
                     </a>
                  </li>
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_piechart"></i> <input type="hidden"
                              name="myAction" value="analyseSpending">
                           <button type="submit">Spending</button>
                        </form>
                     </a>
                  </li>
                  <li>
                   <a>
         <form action="SpendWise">
            <i class="icon_documents_alt"></i>
            <input type="hidden" name="myAction" value="dataCapture">
            <button type="submit">User Info</button>   
         </form>
      </a>
                  </li>
                  <li class="active">
                     <a>
                        <form action="SpendWise">
                           <i class="icon_desktop"></i> <input type="hidden"
                              name="myAction" value="suggestPortfolio">
                           <button type="submit">Products</button>
                        </form>
                     </a>
                  </li>
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_genius"></i> <input type="hidden" name="myAction"
                              value="saveKitty">
                           <button type="submit">Save Kitty</button>
                        </form>
                     </a>
                  </li>
               </ul>
               <!-- sidebar menu end-->
            </div>
         </aside>
         <!--sidebar end-->
         <!--main content start-->
         <section id="main-content">
            <section class="wrapper">
               <div class="row">
                  <div class="col-lg-12">
                     <h3 class="page-header">
                        <i class="icon_desktop"></i>Products
                     </h3>
                     <ol class="breadcrumb">
                        <li>
                           <a>
              <form action="SpendWise">
            <i class="fa fa-home"></i></i>
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Home</button>   
         </form>
         </a>
                        </li>
                        <li><i class="icon_desktop"></i>Products</li>
                     </ol>
                  </div><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="products.ProductDTO"%>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description"
         content="Creative - Bootstrap 3 Responsive Admin Template">
      <meta name="author" content="GeeksLabs">
      <meta name="keyword"
         content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
      <link rel="shortcut icon" href="img/favicon.png">
      <title>SpendWise</title>
      <!-- Bootstrap CSS -->
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <!-- bootstrap theme -->
      <link href="css/bootstrap-theme.css" rel="stylesheet">
      <!--external css-->
      <!-- font icon -->
      <link href="css/elegant-icons-style.css" rel="stylesheet" />
      <link href="css/font-awesome.min.css" rel="stylesheet" />
      <!-- full calendar css-->
      <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
         rel="stylesheet" />
      <link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
         rel="stylesheet" />
      <!-- easy pie chart-->
      <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
         rel="stylesheet" type="text/css" media="screen" />
      <!-- owl carousel -->
      <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
      <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
      <!-- Custom styles -->
      <link rel="stylesheet" href="css/fullcalendar.css">
      <link href="css/widgets.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">
      <link href="css/style-responsive.css" rel="stylesheet" />
      <link href="css/xcharts.min.css" rel=" stylesheet">
      <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
      <link href="css/vimal.css" rel="stylesheet">
      <script src="code/highcharts.js"></script>
      <!-- =======================================================
         Theme Name: NiceAdmin
         Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
         Author: BootstrapMade
         Author URL: https://bootstrapmade.com
         ======================================================= -->
   </head>
   <body>
      <!-- container section start -->
      <section id="container" class="">
         <header class="header dark-bg">
            <div class="toggle-nav">
               <div class="icon-reorder tooltips"
                  data-original-title="Toggle Navigation" data-placement="bottom">
                  <i class="icon_menu"></i>
               </div>
            </div>
            <!--logo start-->
            <a class="logo">
               <form action="SpendWise">
                  <input type="hidden" name="myAction" value="home">
                  <button type="submit">
                  Spend <span class="lite">Wise 
                  </button>
               </form>
               </span>
            </a>
            <!--logo end-->
            <div class="top-nav notification-row">
               <!-- notificatoin dropdown start-->
               <ul class="nav pull-right top-menu">
                  <!-- task notificatoin start -->
                  <li id="task_notificatoin_bar" class="dropdown">
                     <a
                        data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                        class="icon-task-l"></i> <span class="badge bg-important">6</span>
                     </a>
                     <ul class="dropdown-menu extended tasks-bar">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                           <p class="blue">You have 6 pending letter</p>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Design PSD</div>
                                 <div class="percent">90%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-success"
                                    role="progressbar" aria-valuenow="90" aria-valuemin="0"
                                    aria-valuemax="100" style="width: 90%">
                                    <span class="sr-only">90% Complete (success)</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Project 1</div>
                                 <div class="percent">30%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-warning"
                                    role="progressbar" aria-valuenow="30" aria-valuemin="0"
                                    aria-valuemax="100" style="width: 30%">
                                    <span class="sr-only">30% Complete (warning)</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Digital Marketing</div>
                                 <div class="percent">80%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-info" role="progressbar"
                                    aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                    style="width: 80%">
                                    <span class="sr-only">80% Complete</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Logo Designing</div>
                                 <div class="percent">78%</div>
                              </div>
                              <div class="progress progress-striped">
                                 <div class="progress-bar progress-bar-danger"
                                    role="progressbar" aria-valuenow="78" aria-valuemin="0"
                                    aria-valuemax="100" style="width: 78%">
                                    <span class="sr-only">78% Complete (danger)</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                              <div class="task-info">
                                 <div class="desc">Mobile App</div>
                                 <div class="percent">50%</div>
                              </div>
                              <div class="progress progress-striped active">
                                 <div class="progress-bar" role="progressbar"
                                    aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                    style="width: 50%">
                                    <span class="sr-only">50% Complete</span>
                                 </div>
                              </div>
                           </a>
                        </li>
                        <li class="external"><a href="#">See All Tasks</a></li>
                     </ul>
                  </li>
                  <!-- task notificatoin end -->
                  <!-- inbox notificatoin start-->
                  <li id="mail_notificatoin_bar" class="dropdown">
                     <a
                        data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                        class="icon-envelope-l"></i> <span class="badge bg-important">5</span>
                     </a>
                     <ul class="dropdown-menu extended inbox">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                           <p class="blue">You have 5 new messages</p>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini.jpg"></span> <span
                           class="subject"> <span class="from">Greg Martin</span> <span
                           class="time">1 min</span>
                           </span> <span class="message"> I really like this admin panel. </span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini2.jpg"></span> <span
                           class="subject"> <span class="from">Bob Mckenzie</span>
                           <span class="time">5 mins</span>
                           </span> <span class="message"> Hi, What is next project plan? </span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini3.jpg"></span> <span
                           class="subject"> <span class="from">Phillip Park</span>
                           <span class="time">2 hrs</span>
                           </span> <span class="message"> I am like to buy this Admin
                           Template. </span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="photo"><img
                           alt="avatar" src="./img/avatar-mini4.jpg"></span> <span
                           class="subject"> <span class="from">Ray Munoz</span> <span
                           class="time">1 day</span>
                           </span> <span class="message"> Icon fonts are great. </span>
                           </a>
                        </li>
                        <li><a href="#">See all messages</a></li>
                     </ul>
                  </li>
                  <!-- inbox notificatoin end -->
                  <!-- alert notification start-->
                  <li id="alert_notificatoin_bar" class="dropdown">
                     <a
                        data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
                        class="icon-bell-l"></i> <span class="badge bg-important">7</span>
                     </a>
                     <ul class="dropdown-menu extended notification">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                           <p class="blue">You have 4 new notifications</p>
                        </li>
                        <li><a href="#"> <span class="label label-primary"><i
                           class="icon_profile"></i></span> Friend Request <span
                           class="small italic pull-right">5 mins</span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="label label-warning"><i
                           class="icon_pin"></i></span> John location. <span
                           class="small italic pull-right">50 mins</span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="label label-danger"><i
                           class="icon_book_alt"></i></span> Project 3 Completed. <span
                           class="small italic pull-right">1 hr</span>
                           </a>
                        </li>
                        <li><a href="#"> <span class="label label-success"><i
                           class="icon_like"></i></span> Mick appreciated your work. <span
                           class="small italic pull-right"> Today</span>
                           </a>
                        </li>
                        <li><a href="#">See all notifications</a></li>
                     </ul>
                  </li>
                  <!-- alert notification end-->
                  <!-- user login dropdown start-->
                  <li class="dropdown">
                     <a data-toggle="dropdown"
                        class="dropdown-toggle" href="#"> <span class="profile-ava">
                     <img alt="" src="img/avatar1_small.jpg">
                     </span> <span class="username"><%=session.getAttribute("username")%></span>
                     <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top"><a href="#"><i
                           class="icon_profile"></i> My Profile</a></li>
                        <li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
                        <li><a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                        </li>
                        <li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
                        <li><a href="login.jsp"><i class="icon_key_alt"></i> Log
                           Out</a>
                        </li>
                        <li><a href="documentation.html"><i class="icon_key_alt"></i>
                           Documentation</a>
                        </li>
                        <li><a href="documentation.html"><i class="icon_key_alt"></i>
                           Documentation</a>
                        </li>
                     </ul>
                  </li>
                  <!-- user login dropdown end -->
               </ul>
               <!-- notificatoin dropdown end-->
            </div>
         </header>
         <!--header end-->
         <!--sidebar start-->
         <aside>
            <div id="sidebar" class="nav-collapse ">
               <!-- sidebar menu start-->
               <ul class="sidebar-menu">
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_house_alt"></i> <input type="hidden"
                              name="myAction" value="home">
                           <button type="submit">Home</button>
                        </form>
                     </a>
                  </li>
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_documents_alt"></i> <input type="hidden"
                              name="myAction" value="addAccounts">
                           <button type="submit">Accounts</button>
                        </form>
                     </a>
                  </li>
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_piechart"></i> <input type="hidden"
                              name="myAction" value="analyseSpending">
                           <button type="submit">Spending</button>
                        </form>
                     </a>
                  </li>
                  <li>
                   <a>
         <form action="SpendWise">
            <i class="icon_documents_alt"></i>
            <input type="hidden" name="myAction" value="dataCapture">
            <button type="submit">User Info</button>   
         </form>
      </a>
                  </li>
                  <li class="active">
                     <a>
                        <form action="SpendWise">
                           <i class="icon_desktop"></i> <input type="hidden"
                              name="myAction" value="suggestPortfolio">
                           <button type="submit">Products</button>
                        </form>
                     </a>
                  </li>
                  <li>
                     <a>
                        <form action="SpendWise">
                           <i class="icon_genius"></i> <input type="hidden" name="myAction"
                              value="saveKitty">
                           <button type="submit">Save Kitty</button>
                        </form>
                     </a>
                  </li>
               </ul>
               <!-- sidebar menu end-->
            </div>
         </aside>
         <!--sidebar end-->
         <!--main content start-->
         <section id="main-content">
            <section class="wrapper">
               <div class="row">
                  <div class="col-lg-12">
                     <h3 class="page-header">
                        <i class="icon_desktop"></i>Products
                     </h3>
                     <ol class="breadcrumb">
                        <li>
                           <a>
              <form action="SpendWise">
            <i class="fa fa-home"></i></i>
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Home</button>   
         </form>
         </a>
                        </li>
                        <li><i class="icon_desktop"></i>Products</li>
                     </ol>
                  </div>
               </div>
               <div class="row">
               <div class="col-md-12 portlets">
                  <section class="panel ">
                     <header class="panel-heading">
                        Risk Category :
                        <%=request.getAttribute("riskCategory")%>
                     </header>
                     <div class="panel-body">
                        <div class="panel panel-primary">
                           <div class="panel-heading">Here are a few products to
                              invest in..
                           </div>
                        </div>
                        <div>
                           <div class="tab-pane" id="chartjs">
                              <div class="row">
                                 <c:forEach var="product" items="${requestScope.productlist}">
                                    <!-- Line -->
                                    <div class="col-lg-12">
                                       <section class="panel">
                                          <header class="panel-heading">
                                             <INPUT TYPE="radio" NAME="productSelected"
                                                VALUE="${product.getId()}" /> ${product.getName()} 
                                          </header>
                                          <div class="panel-body text-center">
                                             <div>${product.getId()}</div>
                                             <div id="${product.getId()}" class="col-lg-8"></div>
                                             <div class="row">description</div>
                                             <div class="row">details</div>
                                          </div>
                                       </section>
                                    </div>
                                    </c:forEach>
                              </div>
                              
                              <form action="SpendWise">
                                 <input type="hidden" name="myAction" value="saveKitty">
                                 <button type="submit" class="btn btn-warning btn-block">See
                                 Your Kitty</button>
                              </form>
                           </div>
                        </div>
                  </section>
                  </div>
               </div>
            </section>
         </section>
         <!--main content end-->
      </section>
      <!-- container section start -->
      <!-- javascripts -->
      <script src="js/jquery.js"></script>
      <script src="js/jquery-ui-1.10.4.min.js"></script>
      <script src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
      <!-- bootstrap -->
      <script src="js/bootstrap.min.js"></script>
      <!-- nice scroll -->
      <script src="js/jquery.scrollTo.min.js"></script>
      <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
      <!-- charts scripts -->
      <script src="assets/jquery-knob/js/jquery.knob.js"></script>
      <script src="js/jquery.sparkline.js" type="text/javascript"></script>
      <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
      <script src="js/owl.carousel.js"></script>
      <!-- jQuery full calendar -->
      <
      <script src="js/fullcalendar.min.js"></script>
      <!-- Full Google Calendar - Calendar -->
      <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
      <!--script for this page only-->
      <script src="js/calendar-custom.js"></script>
      <script src="js/jquery.rateit.min.js"></script>
      <!-- custom select -->
      <script src="js/jquery.customSelect.min.js"></script>
      <script src="assets/chart-master/Chart.js"></script>
      <!--custome script for all page-->
      <script src="js/scripts.js"></script>
      <!-- custom script for this page-->
      <script src="js/sparkline-chart.js"></script>
      <script src="js/easy-pie-chart.js"></script>
      <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
      <script src="js/jquery-jvectormap-world-mill-en.js"></script>
      <script src="js/xcharts.min.js"></script>
      <script src="js/jquery.autosize.min.js"></script>
      <script src="js/jquery.placeholder.min.js"></script>
      <script src="js/gdp-data.js"></script>
      <script src="js/morris.min.js"></script>
      <script src="js/sparklines.js"></script>
      <script src="js/charts.js"></script>
      <script src="js/jquery.slimscroll.min.js"></script>
      <script>
         //knob
         $(function() {
         	$(".knob").knob({
         		'draw' : function() {
         			$(this.i).val(this.cv + '%')
         		}
         	})
         });
         
         //carousel
         $(document).ready(function() {
         	$("#owl-slider").owlCarousel({
         		navigation : true,
         		slideSpeed : 300,
         		paginationSpeed : 400,
         		singleItem : true
         
         	});
         });
         
         //custom select box
         
         $(function() {
         	$('select.styled').customSelect();
         });
         
         /* ---------- Map ---------- */
         $(function() {
         	$('#map').vectorMap({
         		map : 'world_mill_en',
         		series : {
         			regions : [ {
         				values : gdpData,
         				scale : [ '#000', '#000' ],
         				normalizeFunction : 'polynomial'
         			} ]
         		},
         		backgroundColor : '#eef3f7',
         		onLabelShow : function(e, el, code) {
         			el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
         		}
         	});
         });
      </script>
      <script src="js/app.js"></script>
   </body>
</html>
=======
=======
>>>>>>> parent of 3770cc1... changes

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>SpendWise</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="css/fullcalendar.css">
<link href="css/widgets.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<link href="css/xcharts.min.css" rel=" stylesheet">
<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<link href="css/vimal.css" rel="stylesheet">
<script src="code/highcharts.js"></script>
<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a class="logo">
				<form action="SpendWise">
					<input type="hidden" name="myAction" value="home">
					<button type="submit">
						Spend <span class="lite">Wise 
					</button>
				</form> </span>
			</a>
			<!--logo end-->

			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">

					<!-- task notificatoin start -->
					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-task-l"></i> <span class="badge bg-important">6</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 6 pending letter</p>
							</li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Design PSD</div>
										<div class="percent">90%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="90" aria-valuemin="0"
											aria-valuemax="100" style="width: 90%">
											<span class="sr-only">90% Complete (success)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Project 1</div>
										<div class="percent">30%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="30" aria-valuemin="0"
											aria-valuemax="100" style="width: 30%">
											<span class="sr-only">30% Complete (warning)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Digital Marketing</div>
										<div class="percent">80%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: 80%">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Logo Designing</div>
										<div class="percent">78%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="78" aria-valuemin="0"
											aria-valuemax="100" style="width: 78%">
											<span class="sr-only">78% Complete (danger)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Mobile App</div>
										<div class="percent">50%</div>
									</div>
									<div class="progress progress-striped active">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											style="width: 50%">
											<span class="sr-only">50% Complete</span>
										</div>
									</div>

							</a></li>
							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- task notificatoin end -->
					<!-- inbox notificatoin start-->
					<li id="mail_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-envelope-l"></i> <span class="badge bg-important">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 5 new messages</p>
							</li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini.jpg"></span> <span
									class="subject"> <span class="from">Greg Martin</span> <span
										class="time">1 min</span>
								</span> <span class="message"> I really like this admin panel. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini2.jpg"></span> <span
									class="subject"> <span class="from">Bob Mckenzie</span>
										<span class="time">5 mins</span>
								</span> <span class="message"> Hi, What is next project plan? </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini3.jpg"></span> <span
									class="subject"> <span class="from">Phillip Park</span>
										<span class="time">2 hrs</span>
								</span> <span class="message"> I am like to buy this Admin
										Template. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini4.jpg"></span> <span
									class="subject"> <span class="from">Ray Munoz</span> <span
										class="time">1 day</span>
								</span> <span class="message"> Icon fonts are great. </span>
							</a></li>
							<li><a href="#">See all messages</a></li>
						</ul></li>
					<!-- inbox notificatoin end -->
					<!-- alert notification start-->
					<li id="alert_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-bell-l"></i> <span class="badge bg-important">7</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 4 new notifications</p>
							</li>
							<li><a href="#"> <span class="label label-primary"><i
										class="icon_profile"></i></span> Friend Request <span
									class="small italic pull-right">5 mins</span>
							</a></li>
							<li><a href="#"> <span class="label label-warning"><i
										class="icon_pin"></i></span> John location. <span
									class="small italic pull-right">50 mins</span>
							</a></li>
							<li><a href="#"> <span class="label label-danger"><i
										class="icon_book_alt"></i></span> Project 3 Completed. <span
									class="small italic pull-right">1 hr</span>
							</a></li>
							<li><a href="#"> <span class="label label-success"><i
										class="icon_like"></i></span> Mick appreciated your work. <span
									class="small italic pull-right"> Today</span>
							</a></li>
							<li><a href="#">See all notifications</a></li>
						</ul></li>
					<!-- alert notification end-->
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="img/avatar1_small.jpg">
						</span> <span class="username"><%=session.getAttribute("username")%></span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="#"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
							<li><a href="#"><i class="icon_clock_alt"></i> Timeline</a>
							</li>
							<li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
							<li><a href="login.jsp"><i class="icon_key_alt"></i> Log
									Out</a></li>
							<li><a href="documentation.html"><i class="icon_key_alt"></i>
									Documentation</a></li>
							<li><a href="documentation.html"><i class="icon_key_alt"></i>
									Documentation</a></li>
						</ul></li>
					<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li><a>
							<form action="SpendWise">
								<i class="icon_house_alt"></i> <input type="hidden"
									name="myAction" value="home">
								<button type="submit">Home</button>
							</form>
					</a></li>
					<li><a>
							<form action="SpendWise">
								<i class="icon_documents_alt"></i> <input type="hidden"
									name="myAction" value="addAccounts">
								<button type="submit">Accounts</button>
							</form>
					</a></li>
					<li><a>
							<form action="SpendWise">
								<i class="icon_piechart"></i> <input type="hidden"
									name="myAction" value="analyseSpending">
								<button type="submit">Spending</button>
							</form>
					</a></li>
<<<<<<< HEAD
					<li>
      <a>
         <form action="SpendWise">
            <i class="icon_documents_alt"></i>
            <input type="hidden" name="myAction" value="dataCapture">
            <button type="submit">User Info</button>   
         </form>
      </a>
   </li>
=======
>>>>>>> parent of 3770cc1... changes
					<li class="active"><a>
							<form action="SpendWise">
								<i class="icon_desktop"></i> <input type="hidden"
									name="myAction" value="suggestPortfolio">
								<button type="submit">Products</button>
							</form>
					</a></li>
					<li><a>
							<form action="SpendWise">
								<i class="icon_genius"></i> <input type="hidden" name="myAction"
									value="saveKitty">
								<button type="submit">Save Kitty</button>
							</form>
					</a></li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->

		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="icon_desktop"></i>Products
						</h3>
						<ol class="breadcrumb">
<<<<<<< HEAD
							<li>
							<a>
              <form action="SpendWise">
            <i class="fa fa-home"></i></i>
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Home</button>   
         </form>
         </a>
							</li>
							<li><i class="icon_desktop"></i>Products</li>

						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 portlets">
						<section class="panel ">
							<header class="panel-heading">
								Risk Category :
								<%=request.getAttribute("riskCategory")%>
							</header>
							<div class="panel-body ScrollStyle">
								<div class="panel panel-primary">
									<div class="panel-heading">Here are a few products to
										invest in..</div>
								</div>

								<div>


									<div class="tab-pane" id="chartjs">
										<div class="row">
											<c:forEach var="product" items="${requestScope.productlist}">
												<!-- Line -->
												<div class="col-lg-12">
													<section class="panel">
														<header class="panel-heading">
															<INPUT TYPE="radio" NAME="productSelected"
																VALUE="${product.getId()}" /> ${product.getName()} 

														</header>
														<div class="panel-body text-center">
															<div id="1" class="col-lg-8"></div>
															<div class="col-lg-4">
																<div class="row">description</div>
																<div class="row">details</div>

															</div>
														</div>
													</section>
												</div>
											</c:forEach>
											<form action="SpendWise">
												<input type="hidden" name="myAction" value="saveKitty">
												<button type="submit" class="btn btn-warning btn-block">See
													Your Kitty</button>
											</form>


										</div>


									</div>
						</section>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="js/jquery.sparkline.js" type="text/javascript"></script>
	<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<
	<script src="js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="js/jquery.customSelect.min.js"></script>
	<script src="assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="js/sparkline-chart.js"></script>
	<script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>
	<script src="js/charts.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<script>
		//knob
		$(function() {
			$(".knob").knob({
				'draw' : function() {
					$(this.i).val(this.cv + '%')
				}
			})
		});

		//carousel
		$(document).ready(function() {
			$("#owl-slider").owlCarousel({
				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem : true

			});
		});

		//custom select box

		$(function() {
			$('select.styled').customSelect();
		});

		/* ---------- Map ---------- */
		$(function() {
			$('#map').vectorMap({
				map : 'world_mill_en',
				series : {
					regions : [ {
						values : gdpData,
						scale : [ '#000', '#000' ],
						normalizeFunction : 'polynomial'
					} ]
				},
				backgroundColor : '#eef3f7',
				onLabelShow : function(e, el, code) {
					el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
				}
			});
		});
	</script>
	<script src="js/app.js"></script>
</body>

</html>
                  
               </div>
               <div class="row">
               <div class="col-md-12 portlets">
                  <section class="panel ">
                     <header class="panel-heading">
                        Risk Category :
                        <%=request.getAttribute("riskCategory")%>
                     </header>
                     <div class="panel-body">
                        <div class="panel panel-primary">
                           <div class="panel-heading">Here are a few products to
                              invest in..
                           </div>
                        </div>
                        <div>
                           <div class="tab-pane" id="chartjs">
                              <div class="row">
                                 <c:forEach var="product" items="${requestScope.productlist}">
                                    <!-- Line -->
                                    <div class="col-lg-12">
                                       <section class="panel">
                                          <header class="panel-heading">
                                             <INPUT TYPE="radio" NAME="productSelected"
                                                VALUE="${product.getId()}" /> ${product.getName()} 
                                          </header>
                                          <div class="panel-body text-center">
                                             <div>${product.getId()}</div>
                                             <div id="${product.getId()}" class="col-lg-8"></div>
                                             <div class="row">description</div>
                                             <div class="row">details</div>
                                          </div>
                                       </section>
                                    </div>
                                    </c:forEach>
                              </div>
                              
                              <form action="SpendWise">
                                 <input type="hidden" name="myAction" value="saveKitty">
                                 <button type="submit" class="btn btn-warning btn-block">See
                                 Your Kitty</button>
                              </form>
                           </div>
                        </div>
                  </section>
                  </div>
               </div>
            </section>
         </section>
         <!--main content end-->
      </section>
      <!-- container section start -->
      <!-- javascripts -->
      <script src="js/jquery.js"></script>
      <script src="js/jquery-ui-1.10.4.min.js"></script>
      <script src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
      <!-- bootstrap -->
      <script src="js/bootstrap.min.js"></script>
      <!-- nice scroll -->
      <script src="js/jquery.scrollTo.min.js"></script>
      <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
      <!-- charts scripts -->
      <script src="assets/jquery-knob/js/jquery.knob.js"></script>
      <script src="js/jquery.sparkline.js" type="text/javascript"></script>
      <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
      <script src="js/owl.carousel.js"></script>
      <!-- jQuery full calendar -->
      <
      <script src="js/fullcalendar.min.js"></script>
      <!-- Full Google Calendar - Calendar -->
      <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
      <!--script for this page only-->
      <script src="js/calendar-custom.js"></script>
      <script src="js/jquery.rateit.min.js"></script>
      <!-- custom select -->
      <script src="js/jquery.customSelect.min.js"></script>
      <script src="assets/chart-master/Chart.js"></script>
      <!--custome script for all page-->
      <script src="js/scripts.js"></script>
      <!-- custom script for this page-->
      <script src="js/sparkline-chart.js"></script>
      <script src="js/easy-pie-chart.js"></script>
      <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
      <script src="js/jquery-jvectormap-world-mill-en.js"></script>
      <script src="js/xcharts.min.js"></script>
      <script src="js/jquery.autosize.min.js"></script>
      <script src="js/jquery.placeholder.min.js"></script>
      <script src="js/gdp-data.js"></script>
      <script src="js/morris.min.js"></script>
      <script src="js/sparklines.js"></script>
      <script src="js/charts.js"></script>
      <script src="js/jquery.slimscroll.min.js"></script>
      <script>
         //knob
         $(function() {
         	$(".knob").knob({
         		'draw' : function() {
         			$(this.i).val(this.cv + '%')
         		}
         	})
         });
         
         //carousel
         $(document).ready(function() {
         	$("#owl-slider").owlCarousel({
         		navigation : true,
         		slideSpeed : 300,
         		paginationSpeed : 400,
         		singleItem : true
         
         	});
         });
         
         //custom select box
         
         $(function() {
         	$('select.styled').customSelect();
         });
         
         /* ---------- Map ---------- */
         $(function() {
         	$('#map').vectorMap({
         		map : 'world_mill_en',
         		series : {
         			regions : [ {
         				values : gdpData,
         				scale : [ '#000', '#000' ],
         				normalizeFunction : 'polynomial'
         			} ]
         		},
         		backgroundColor : '#eef3f7',
         		onLabelShow : function(e, el, code) {
         			el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
         		}
         	});
         });
      </script>
      <script src="js/app.js"></script>
   </body>
</html>
=======

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>SpendWise</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="css/fullcalendar.css">
<link href="css/widgets.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<link href="css/xcharts.min.css" rel=" stylesheet">
<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
<link href="css/vimal.css" rel="stylesheet">
<script src="code/highcharts.js"></script>
<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a class="logo">
				<form action="SpendWise">
					<input type="hidden" name="myAction" value="home">
					<button type="submit">
						Spend <span class="lite">Wise 
					</button>
				</form> </span>
			</a>
			<!--logo end-->

			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">

					<!-- task notificatoin start -->
					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-task-l"></i> <span class="badge bg-important">6</span>
					</a>
						<ul class="dropdown-menu extended tasks-bar">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 6 pending letter</p>
							</li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Design PSD</div>
										<div class="percent">90%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="90" aria-valuemin="0"
											aria-valuemax="100" style="width: 90%">
											<span class="sr-only">90% Complete (success)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Project 1</div>
										<div class="percent">30%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="30" aria-valuemin="0"
											aria-valuemax="100" style="width: 30%">
											<span class="sr-only">30% Complete (warning)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Digital Marketing</div>
										<div class="percent">80%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
											style="width: 80%">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Logo Designing</div>
										<div class="percent">78%</div>
									</div>
									<div class="progress progress-striped">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="78" aria-valuemin="0"
											aria-valuemax="100" style="width: 78%">
											<span class="sr-only">78% Complete (danger)</span>
										</div>
									</div>
							</a></li>
							<li><a href="#">
									<div class="task-info">
										<div class="desc">Mobile App</div>
										<div class="percent">50%</div>
									</div>
									<div class="progress progress-striped active">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
											style="width: 50%">
											<span class="sr-only">50% Complete</span>
										</div>
									</div>

							</a></li>
							<li class="external"><a href="#">See All Tasks</a></li>
						</ul></li>
					<!-- task notificatoin end -->
					<!-- inbox notificatoin start-->
					<li id="mail_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-envelope-l"></i> <span class="badge bg-important">5</span>
					</a>
						<ul class="dropdown-menu extended inbox">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 5 new messages</p>
							</li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini.jpg"></span> <span
									class="subject"> <span class="from">Greg Martin</span> <span
										class="time">1 min</span>
								</span> <span class="message"> I really like this admin panel. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini2.jpg"></span> <span
									class="subject"> <span class="from">Bob Mckenzie</span>
										<span class="time">5 mins</span>
								</span> <span class="message"> Hi, What is next project plan? </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini3.jpg"></span> <span
									class="subject"> <span class="from">Phillip Park</span>
										<span class="time">2 hrs</span>
								</span> <span class="message"> I am like to buy this Admin
										Template. </span>
							</a></li>
							<li><a href="#"> <span class="photo"><img
										alt="avatar" src="./img/avatar-mini4.jpg"></span> <span
									class="subject"> <span class="from">Ray Munoz</span> <span
										class="time">1 day</span>
								</span> <span class="message"> Icon fonts are great. </span>
							</a></li>
							<li><a href="#">See all messages</a></li>
						</ul></li>
					<!-- inbox notificatoin end -->
					<!-- alert notification start-->
					<li id="alert_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-bell-l"></i> <span class="badge bg-important">7</span>
					</a>
						<ul class="dropdown-menu extended notification">
							<div class="notify-arrow notify-arrow-blue"></div>
							<li>
								<p class="blue">You have 4 new notifications</p>
							</li>
							<li><a href="#"> <span class="label label-primary"><i
										class="icon_profile"></i></span> Friend Request <span
									class="small italic pull-right">5 mins</span>
							</a></li>
							<li><a href="#"> <span class="label label-warning"><i
										class="icon_pin"></i></span> John location. <span
									class="small italic pull-right">50 mins</span>
							</a></li>
							<li><a href="#"> <span class="label label-danger"><i
										class="icon_book_alt"></i></span> Project 3 Completed. <span
									class="small italic pull-right">1 hr</span>
							</a></li>
							<li><a href="#"> <span class="label label-success"><i
										class="icon_like"></i></span> Mick appreciated your work. <span
									class="small italic pull-right"> Today</span>
							</a></li>
							<li><a href="#">See all notifications</a></li>
						</ul></li>
					<!-- alert notification end-->
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="img/avatar1_small.jpg">
						</span> <span class="username"><%=session.getAttribute("username")%></span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="#"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
							<li><a href="#"><i class="icon_clock_alt"></i> Timeline</a>
							</li>
							<li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
							<li><a href="login.jsp"><i class="icon_key_alt"></i> Log
									Out</a></li>
							<li><a href="documentation.html"><i class="icon_key_alt"></i>
									Documentation</a></li>
							<li><a href="documentation.html"><i class="icon_key_alt"></i>
									Documentation</a></li>
						</ul></li>
					<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li><a>
							<form action="SpendWise">
								<i class="icon_house_alt"></i> <input type="hidden"
									name="myAction" value="home">
								<button type="submit">Home</button>
							</form>
					</a></li>
					<li><a>
							<form action="SpendWise">
								<i class="icon_documents_alt"></i> <input type="hidden"
									name="myAction" value="addAccounts">
								<button type="submit">Accounts</button>
							</form>
					</a></li>
					<li><a>
							<form action="SpendWise">
								<i class="icon_piechart"></i> <input type="hidden"
									name="myAction" value="analyseSpending">
								<button type="submit">Spending</button>
							</form>
					</a></li>
					<li>
      <a>
         <form action="SpendWise">
            <i class="icon_documents_alt"></i>
            <input type="hidden" name="myAction" value="dataCapture">
            <button type="submit">User Info</button>   
         </form>
      </a>
   </li>
					<li class="active"><a>
							<form action="SpendWise">
								<i class="icon_desktop"></i> <input type="hidden"
									name="myAction" value="suggestPortfolio">
								<button type="submit">Products</button>
							</form>
					</a></li>
					<li><a>
							<form action="SpendWise">
								<i class="icon_genius"></i> <input type="hidden" name="myAction"
									value="saveKitty">
								<button type="submit">Save Kitty</button>
							</form>
					</a></li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->

		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="icon_desktop"></i>Products
						</h3>
						<ol class="breadcrumb">
							<li>
							<a>
              <form action="SpendWise">
            <i class="fa fa-home"></i></i>
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Home</button>   
         </form>
         </a>
							</li>
=======
							<li><i class="fa fa-home"></i><a>
									<form action="SpendWise">
										<i class="icon_house_alt"></i> <input type="hidden"
											name="myAction" value="home">
										<button type="submit">Home</button>
									</form>
							</a></li>
>>>>>>> parent of 3770cc1... changes
							<li><i class="icon_desktop"></i>Products</li>

						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 portlets">
						<section class="panel ">
							<header class="panel-heading">
								Risk Category :
								<%=request.getAttribute("riskCategory")%>
							</header>
							<div class="panel-body ScrollStyle">
								<div class="panel panel-primary">
									<div class="panel-heading">Here are a few products to
										invest in..</div>
								</div>

								<div>


									<div class="tab-pane" id="chartjs">
										<div class="row">
											<c:forEach var="product" items="${requestScope.productlist}">
												<!-- Line -->
												<div class="col-lg-12">
													<section class="panel">
														<header class="panel-heading">
															<INPUT TYPE="radio" NAME="productSelected"
																VALUE="${product.getId()}" /> ${product.getName()} 

														</header>
														<div class="panel-body text-center">
															<div id="1" class="col-lg-8"></div>
															<div class="col-lg-4">
																<div class="row">description</div>
																<div class="row">details</div>

															</div>
														</div>
													</section>
												</div>
											</c:forEach>
											<form action="SpendWise">
												<input type="hidden" name="myAction" value="saveKitty">
												<button type="submit" class="btn btn-warning btn-block">See
													Your Kitty</button>
											</form>


										</div>


									</div>
						</section>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="js/jquery.sparkline.js" type="text/javascript"></script>
	<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<
	<script src="js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="js/jquery.customSelect.min.js"></script>
	<script src="assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="js/sparkline-chart.js"></script>
	<script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>
	<script src="js/charts.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<script>
		//knob
		$(function() {
			$(".knob").knob({
				'draw' : function() {
					$(this.i).val(this.cv + '%')
				}
			})
		});

		//carousel
		$(document).ready(function() {
			$("#owl-slider").owlCarousel({
				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem : true

			});
		});

		//custom select box

		$(function() {
			$('select.styled').customSelect();
		});

		/* ---------- Map ---------- */
		$(function() {
			$('#map').vectorMap({
				map : 'world_mill_en',
				series : {
					regions : [ {
						values : gdpData,
						scale : [ '#000', '#000' ],
						normalizeFunction : 'polynomial'
					} ]
				},
				backgroundColor : '#eef3f7',
				onLabelShow : function(e, el, code) {
					el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
				}
			});
		});
	</script>
	<script src="js/app.js"></script>
</body>

</html>
