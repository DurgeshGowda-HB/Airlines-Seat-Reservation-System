<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
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
                     
                        <li class="nav-item  active mr-3 mt-lg-0 mt-3">
                        
                            <a class="nav-link" href="Airport.jsp"> Airport</a>
                            <span class="sr-only">(current)</span>
                        </li>
                      
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="flights.jsp"> Flights</a>
                        </li>
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="offers.jsp"> Offers</a>
                        </li>
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="viewtickets.jsp">View Bookings</a>
                        </li>
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.jsp">Logout</a>
                        </li>
            
                    </ul>
                </div>
            </nav>
        </header>
        <!-- //header -->
       <div class="container">
            <!-- banner-text -->
            <div class="banner-text">
                <div class="slider-info">
               
                    <h3>Welcome Airline Management System</h3>
                </div>
            </div>
        </div>
    </div>
    <!-- //container -->
    <!-- //banner -->
	 <!-- contact -->
    <div class="container py-lg-5 mt-sm-5 mt-3">
        <h3 class="agile-title text-uppercase"></h3>
        <span class="w3-line"></span>
		<div class="w3ls-titles text-center mb-5">
			<h3 class="heading-agileinfo">Add  <span>Airports</span></h3>
		</div>
        <div class="col-md-8col-md-offset-4 contact-form" align="center">
            <div class="col-md-6">
                <form id="contact-form" name="myForm" class="form" action="#" onsubmit="return validateForm()" method="POST">
                    <div class="form-group">
                        <label class="form-label" id="nameLabel" for="name"></label>
                        <input type="text" class="form-control" id="airport_name" name="airport_name" placeholder="Airport name" tabindex="1">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label" id="designation" for="designation"></label>
                        <input type="text" class="form-control" id="city" name="city" placeholder="City" tabindex="3">
                    </div>
               
                    <div class="text-center mt-5">
                        <button type="submit" id="submit" name="submit" class="serv_bottom btn btn-border btn-lg w-100">Add Airports</button>
                    </div>
                </form>
            </div>
           
        </div>
    </div>
    <!-- //contact -->

	<!-- Footer -->
		<footer id="footer" class="py-5">
			<div class="container">
			
			</div>
		</footer>
	<%
        if (request.getParameter("submit")!=null) {
            String airportname = request.getParameter("airport_name");
            String city = request.getParameter("city");
            query = "insert into airports_tbl (airportName,city) "
            			+"values ('"+airportname+"','"+city+"')";
            System.out.println(query);
            DAO_Implement dao = new DAO_Implement();
            if (dao.putData(query)>0) {
                %>
                <script type = "text/javascript">
                    alert("Aiport Details Has been Sucessfully Added");
                    window.location.href = "Airport.jsp";
                </script>
                <%
            } else {
                %>
                <script type="text/javascript">
                    alert("Airport Details Has Not been Added");
                    window.location.href = "Airport.jsp";
                </script>
                <%
            }
            dao.closeConnection();
        }
        %>
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
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
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