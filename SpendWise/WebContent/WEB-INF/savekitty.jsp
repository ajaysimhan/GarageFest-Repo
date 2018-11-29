<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
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
  <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
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
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
  <style>
  .balance{
  font-size:17px; 

  float: right;
 	 position: relative;
    width: 600px;
    height: 200px;
   top:30px;
  }
  .kitty{
   position: relative;
   left:15%;
  }
  .kittytext{
   font-size:20px; 
    position: relative;
  	left:2%;
  }
  </style>
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">


    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a class="logo"> <form action="SpendWise">
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Spend <span class="lite">Wise</button>   
         </form></span></a>
      <!--logo end-->

      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

          <!-- task notificatoin start -->
          <li id="task_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-task-l"></i>
                            <span class="badge bg-important">3</span>
                        </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">Your Rewards</p>
              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Login</div>
                    <div class="percent">+100</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="10" style="width: 100%">
                      <span class="sr-only">100% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li><a href="#">
				<div class="task-info">
					<div class="desc">Account Addition</div>
					<div class="percent">+200</div>
				</div>
				<div class="progress progress-striped">
					<div class="progress-bar progress-bar-warning"
						role="progressbar" aria-valuenow="30" aria-valuemin="0"
						aria-valuemax="100" style="width: 60%">
						<span class="sr-only">60% Complete (warning)</span>
					</div>
				</div>
		</a></li>
		<li><a href="#">
				<div class="task-info">
					<div class="desc">Product Selection</div>
					<div class="percent">+150</div>
				</div>
				<div class="progress progress-striped">
					<div class="progress-bar progress-bar-info" role="progressbar"
						aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
						style="width: 40%">
						<span class="sr-only">40% Complete</span>
					</div>
				</div>
		</a></li>
              <li class="external">
                <a href="#">Redeem Rewards</a>
              </li>
               <li class="external">
                <a href="#">Collect more Rewards</a>
              </li>
            </ul>
          </li>
          <!-- task notificatoin end -->
          <!-- inbox notificatoin start-->
          <li id="mail_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">2</span>
                        </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">Experts and Peers</p>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        How can I help you?
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next investment plan?
                                    </span>
                                </a>
              </li>
              <li>
              <li>
                <a href="#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox notificatoin end -->
          <!-- alert notification start-->
          <li id="alert_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 7 new notifications</p>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span>
                                    Bran transferred $1000 
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span>
                                    Started debt repayment.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
              </li>
               <li>
                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span>
                                    Your portfolio appreciated by +0.70%
                                    <span class="small italic pull-right">2 hr</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span>
                                    Your risk has been updated.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
              </li>
              <li>
                <a href="#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username"><%=session.getAttribute("username") %></span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="#"><i class="icon_profile"></i> My Profile</a>
              </li>
              <li>
                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
              </li>
              <li>
                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
              </li>
              <li>
                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
              </li>
              <li>
                <a href="login.jsp"><i class="icon_key_alt"></i> Log Out</a>
              </li>
              <li>
                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
              <li>
                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
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
            <i class="icon_house_alt"></i>
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Home</button>   
         </form>
      </a>
   </li>
   <li>
      <a>
         <form action="SpendWise">
            <i class="icon_documents_alt"></i>
            <input type="hidden" name="myAction" value="addAccounts">
            <button type="submit">Accounts</button>   
         </form>
      </a>
   </li>
   <li>
      <a>
         <form action="SpendWise">
            <i class="icon_piechart"></i>
            <input type="hidden" name="myAction" value="analyseSpending">
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
   <li>
   
      <a>
         <form action="SpendWise" method="post">
            <i class="icon_desktop"></i>
            <input type="hidden" name="myAction" value="suggestPortfolio">
            <button type="submit">Products</button>
         </form>
      </a>
   </li>
   <li class="active">
      <a>
         <form action="SpendWise">
            <i class="icon_genius"></i>
            <input type="hidden" name="myAction" value="saveKitty">
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
              <h3 class="page-header"><i class="icon_genius"></i>Save Kitty</h3>
              <ol class="breadcrumb">
                <li><a>
                 <form action="SpendWise">
            <i class="fa fa-home"></i>
            <input type="hidden" name="myAction" value="home">
            <button type="submit">Home</button>   
         </form>
                </a></li>
                <li><i class="icon_genius"></i>Save Kitty</li>

              </ol>
            </div>
          </div>   
<div class="row">
        <div class="col-md-12 portlets">
        <section class="panel">
              <header class="panel-heading">
               Save while spending
              </header>
              <div class="panel-body">
                <div class="panel panel-primary">
                  <div class="panel-heading">Congrats!!!</div>                  
                  <div class="balance">
                 <span style="font-size:18; color:  #00cc00 "> You have successfully started your savings plan.</span><br><br> Now onwards I will be deducting an amount corresponding to the 10% of every transactions (If you want to change the percentage,<a> click here</a>) and will add to my kitty. 
<br>
Emergency funds and Debt repayment transactions are excluded. It will be then used to fund the product you selected.<br><br>
You are all set for now!!
                  
                  </div>
                  <div class="kitty">
               
         <img src="img/kitty/happy.gif" alt="kitty not found" width="250" height="250">
         <div class="kittytext" style="color:#009900">You are doing great buddy!!!</div> 
		
                   
                   </div>
                                  
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
  <<script src="js/fullcalendar.min.js"></script>
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
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
