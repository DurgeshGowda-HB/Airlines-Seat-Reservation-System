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
                        
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                        
                            <a class="nav-link" href="Airport.jsp"> Airport</a>
                            
                        </li>
                      
                        <li class="nav-item  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="flights.jsp"> Flights</a>
                       
                        </li>
                        <li class="nav-item active mr-3 mt-lg-0 mt-3" >
                            <a class="nav-link" href="offers.jsp"> Offers</a>
                        <span class="sr-only">(current)</span>
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
			<h3 class="heading-agileinfo">Add<span> Offers and Coupons</span></h3>
		</div>
        <div class="col-md-8col-md-offset-4 contact-form" align="center">
            <div class="col-md-6">
                <form id="contact-form" name="myForm" class="form" action="#" onsubmit="return validateForm()" method="POST">
                    <div class="form-group">
                        <label class="form-label" id="nameLabel" for="name"></label>
                        <input type="text" class="form-control" id="coupon_name" name="coupon_name" placeholder="Coupon Name" tabindex="1">
                    </div> 
                    <div class="form-group">
                    
                        <select class="form-control" name="flightId" id="flightId">
									<option value="">Select Flight Name</option>
									<%
										query = "select * from flights_tbl";
											resultSet = dao.getData(query);
											while (resultSet.next()) {
												String flightname = resultSet.getString("flightName");
												int id = resultSet.getInt("flightId");
									%>
									<option value="<%=id%>"><%=flightname%></option>
									<%
										}
									%>
							</select>
                    </div>
                    <div class="form-group">
                    
                        <select class="form-control" name="sourceId" id="sourceId">
									<option value="">Select Source</option>
									<%
										query = "select * from airports_tbl";
											resultSet = dao.getData(query);
											while (resultSet.next()) {
												String source = resultSet.getString("city");
												int sid = resultSet.getInt("airportId");
									%>
									<option value="<%=source%>"><%=source%></option>
									<%
										}
									%>
							</select>
                    </div>
                    <div class="form-group">
                    
                        <select class="form-control" name="destinationId" id="destinationId">
									<option value="">Select Destination</option>
									<%
										query = "select * from airports_tbl";
											resultSet = dao.getData(query);
											while (resultSet.next()) {
												String destination = resultSet.getString("city");
												int did = resultSet.getInt("airportId");
									%>
									<option value="<%=destination%>"><%=destination%></option>
									<%
										}
									%>
							</select>
                    </div>
                    <div class="form-group">
                        <label class="form-label" id="nameLabel" for="name"></label>
                        <input type="text" class="form-control" id="offer_price" name="offer_price" placeholder="Offer Price" tabindex="1">
                    </div>
                     
                     <div class="form-group">
                        <label class="form-label" id="nameLabel" for="name"></label>
                        <input type="text" class="form-control" id="validfrom" name="validfrom" placeholder="Offer Valid From" tabindex="1">
                    </div>
                    <div class="form-group">
                        <label class="form-label" id="nameLabel" for="name"></label>
                        <input type="text" class="form-control" id="validto" name="validto" placeholder="Offer Valid To" tabindex="1">
                    </div>
                    <div class="text-center mt-5">
                        <button type="submit" id="submit" name="submit" class="serv_bottom btn btn-border btn-lg w-100">Add Offers</button>
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
        	int flightId=Integer.parseInt(request.getParameter("flightId"));
            String offername = request.getParameter("coupon_name");
            String offerprice = request.getParameter("offer_price");
            String validTo=request.getParameter("validto");
            String validFrom=request.getParameter("validfrom");
            String src=request.getParameter("sourceId");
            String dest=request.getParameter("destinationId");
            
            String query = "insert into coupons_tbl (coupon,flightId,offer,validFrom,validTo,source,destination) "
            			+"values ('"+offername+"',"+flightId+",'"+offerprice+"','"+validFrom+"','"+validTo+"','"+src+"','"+dest+"')";
            System.out.println(query);
            DAO_Implement dao = new DAO_Implement();
            if (dao.putData(query)>0) {
                %>
                <script type = "text/javascript">
                    alert("Offer Details Has been Sucessfully Added");
                    window.location.href = "offers.jsp";
                </script>
                <%
            } else {
                %>
                <script type="text/javascript">
                    alert("Offers Details Has Not been Added");
                    window.location.href = "offers.jsp";
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