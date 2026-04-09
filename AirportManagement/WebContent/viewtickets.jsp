<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@page import="dbconnect.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnect.DAO_Implement"%>
<html lang="zxx">
<head>
    <title>Airline Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Vicarage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet"><!-- //online-fonts -->
</head>
<body>
<%!String query;
	DAO_Implement dao = new DAO_Implement();
	ResultSet resultSet;%>
    <!-- banner -->
    <div class="inner-banner">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="Staff.jsp">Staff 
                            </a>
                        </li>
                        
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                        
                            <a class="nav-link" href="Airport.jsp"> Airport</a>
                            
                        </li>
                      
                        <li class="nav-item  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="flights.jsp"> Flights</a>
                       
                        </li>
                        <li class="nav-item  mr-3 mt-lg-0 mt-3" >
                            <a class="nav-link" href="offers.jsp"> Offers</a>
                        
                        </li>
                 
                        <li class="nav-item active mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="viewticket.jsp">View Bookings</a>
                        <span class="sr-only">(current)</span>
                        
                        </li>
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.jsp">Logout</a>
                        </li>
            
                    </ul>
                </div>
            </nav>
        </header>
        <div class="container">
            <!-- banner-text -->
            <div class="banner-text">
                <div class="slider-info">
               
                    <h3>Welcome Airline Management System</h3>
                </div>
            </div>
        </div>
        <!-- //header -->
       
    </div>
    <!-- //container -->
    <!-- //banner -->
	 <!-- contact -->
    <div class="container py-lg-5 mt-sm-5 mt-3">
        <h3 class="agile-title text-uppercase"></h3>
        <span class="w3-line"></span>
		<div class="w3ls-titles text-center mb-5">
			<h3 class="heading-agileinfo">View<span> Booked Tickets</span></h3>
		</div>
        <div class="col-md-8col-md-offset-4 contact-form" align="center">
            <div class="col-md-6">
               
            </div>
           
        </div>
        <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <td style="color: #990000; font-size: 17px; font-weight: bold;">User Name
                                </td>
                                <td style="color: #990000; font-size: 17px; font-weight: bold;">Source
                                </td>
                                <td style="color: #990000; font-size: 17px; font-weight: bold;">Destination
                                </td>
                                <td style="color: #990000; font-size: 17px; font-weight: bold;">Booked Date</td>
                                <td style="color: #990000; font-size: 17px; font-weight: bold;">Flight Name</td>
                                 <td style="color: #990000; font-size: 17px; font-weight: bold;">Price</td>
                            </tr>
                        </thead>
                        <%
                        DAO_Implement dao = new DAO_Implement();
                        Connection connection = new DBConnection().getConnetion();
                        CallableStatement callableStatement = connection.prepareCall("CALL report_ticket()");
                        callableStatement.execute();
                        String query = "SELECT * FROM  report_tbl  ";
                        ResultSet result = dao.getData(query);

                        while (result.next()) {
                            // output data of each row
                                String username = result.getString("uname");
                                String source = result.getString("tsrc");
                                String destination = result.getString("tdest");
                                String scheduledate = result.getString("sdate");
                                String flightname = result.getString("fname");
                                String price = result.getString("price");
								int userId = result.getInt("userId");
                                %>

                                <tr>
                                   
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><%= username %></td>
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><%= source %></td>
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><%= destination %></td>
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><%= scheduledate %></td>
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><%= flightname %></td>
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><%= price %></td>
                                    <td style="color: green; font-size: 13px;font-weight: bold;"><a href="viewtickets.jsp?ticketId=<%= userId %>">Cancel</a></td>
                                </tr>
                                
                         <%
                        
                        }
                        
                        if(request.getParameter("ticketId")!=null){
                        	String sql = "delete from ticket_tbl where ticketId="+request.getParameter("ticketId"); 
                        	int rows = dao.putData(sql);
                        	if(rows>0){
                        		%>
                        		<script type="text/javascript">
                        			alert("Ticekt Cancelled");
                        			window.location.href="viewtickets.jsp";
                        		</script>
                        		<%
                        	}
                        	else{
                        		%>
                        		<script type="text/javascript">
                        			alert("Unable to Cancel");
                        			window.location.href="viewtickets.jsp";
                        		</script>
                        		<%
                        	}
                        }
                        %>
                    </table>
    </div>
    <!-- //contact -->

	<!-- Footer -->
		<footer id="footer" class="py-5">
			<div class="container">
			
			</div>
		</footer>
	</div>
	<!-- /Footer -->
    <!-- //footer -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
	<!-- FlexSlider-JavaScript -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		
				$(window).load(function(){
				$('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
						$('body').removeClass('loading');
					}
			});
		});
	</script>
<!-- //FlexSlider-JavaScript -->
    <!-- script for password match -->
   
    <!-- script for password match -->
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>