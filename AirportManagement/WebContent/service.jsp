<%@page import="dbconnect.DAO_Implement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dbconnect.DAO_Implement"%>
<%@page import="dbconnect.DAO"%>
<%@page import="java.sql.ResultSet"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
			DAO dao=new DAO_Implement();
			%>
<!-- banner -->
    <div class="banner">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                <h1>
                    <a class="navbar-brand text-white" href="index.html">
                       Airline Management System
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item   mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.jsp">Home
                                
                            </a>
                        </li>
                        <li class="nav-item active  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="service.jsp">services</a>
                        <span class="sr-only">(current)</span>
                        </li>
                       
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="gallery.jsp">Gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Contact</a>
                        </li>
                        
                        <li class="nav-item">
                            <a  class="nav-link" data-toggle="modal" aria-pressed="false" data-target="#exampleModal">
                                Login</a>
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
                    <h3>Best Application to Book Air Tickets</h3>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="gallery.jsp" role="button">View More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- //container -->
    <!-- //banner -->
	<!-- courses -->
	<section class="wthree-row w3-about  py-5">
		<div class="container py-md-4 mt-md-3">
			<h3 class="heading-agileinfo">Our  <span>Properties</span></h3>
			<div class="card-deck mt-md-5 pt-5">
				  <div class="card">
					<img src="images/img1.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Manage Airports</h5>
					  <p class="card-text mb-3">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						
					</div>
				  </div>
				  <div class="card">
					<img src="images/img2.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Manage Flights</h5>
					   <p class="card-text mb-3 ">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						
					</div>
				  </div>
				  <div class="card">
					<img src="images/img3.jpg" class="img-fluid" alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h5 class="card-title">Book Tickets</h5>
					   <p class="card-text mb-3 ">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						
					</div>
				  </div>
			</div>
        </div>
    </section>
	<section class="slide-bg py-5">
			<div class="container py-md-4 mt-md-3">
				<div class="bg-pricemain mt-md-3 pt-5">
					<h3 class="agile-title text-uppercase text-white">Airport Management </h3>
					<h5 class="agile-title text-capitalize pt-4">Online Web Application </h5>
					<p class="text-light py-4">Airport Management is a branch of study that teaches management of airports. It teaches how to manage, supervise, and coordinate operations and maintenance of the airport. Airport Management is normally a two years programme and time duration to complete the course may differ from institute to institute.
					</p>
					
			</div>
		</section>
	<!-- //slide -->
<!-- Clients -->
	<div class="clients py-5">
		<div class="container py-md-4 mt-md-3">
				<h3 class="heading-agileinfo">Customer  <span>Reviews</span></h3>
				<section class="slider mt-md-5 pt-5">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="clients_top row">
								<div class="col-md-3 clients_img">
									<img src="images/t1.jpg" class="img-fluid" alt="" />
								</div>
								<div class="col-md-9 client">
									<p>Add Your Reviews To Build Best Application </p>
								</div>
							</div>
						</li>
						<li>
							<div class="clients_top row">
								<div class="col-md-3 clients_img">
									<img src="images/t2.jpg" class="img-fluid" alt="" />
								</div>
								<div class="col-md-9 client">
									<p>Good Service Quality For Best Price</p>
								</div>
							</div>
						</li>
						<li>
							<div class="clients_top row">
								<div class="col-md-3 clients_img">
									<img src="images/t3.jpg" class="img-fluid" alt="" />
								</div>
								<div class="col-md-9 client">
									<p>Exceeded Expectation and Great Value</p>
								</div>
							</div>
						</li>
						<li>
							<div class="clients_top row">
								<div class="col-md-3 clients_img">
									<img src="images/t4.jpg" class="img-fluid" alt="" />
								</div>
								<div class="col-md-9 client">
									<p> Thanks !!! Awesome Service</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
		</div>
	</div>
<!-- //Clients -->
    <!-- //newsletter-->

	<!-- video and events -->
	
	<!-- //video and events -->
	<!-- Footer -->
		<footer id="footer" class="py-5">
			<div class="container">
					<div class="container py-md-4 mt-md-3">
				<div class="bg-pricemain mt-md-3 pt-5">
					<h3 class="agile-title text-uppercase text-white">Airport Management </h3>
					<h5 class="agile-title text-capitalize pt-4">Online Web Application </h5>
					<p class="text-light py-4">Airport Management is a branch of study that teaches management of airports. It teaches how to manage, supervise, and coordinate operations and maintenance of the airport. Airport Management is normally a two years programme and time duration to complete the course may differ from institute to institute.
					</p>
					
			</div>
				</div>
			</div>
		</footer>
		<div class="cpy-right text-center py-4">
			<p class="text-white">
				Air ticket Booking Service</p>
			</p>
		</div>
	</div>
	<!-- /Footer -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Username</label>
                            <input type="text" class="form-control" placeholder=" " name="name" id="name" required="">
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-form-label">Password</label>
                            <input type="password" class="form-control" placeholder=" " name="password" id="password" required="">
                        </div>
                        <div class="right-w3l">
                            <input type="submit" class="form-control" name="submit" id="submit" value="Login">
                        </div>
                        <div class="row sub-w3l my-3">
                        
                        <p class="text-center dont-do">Don't have an account?
                            <a href="#" data-toggle="modal" data-target="#exampleModalCenter2" class="text-dark font-weight-bold">
                                Register Now</a>		
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //login -->
	 <!--/Register-->
    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="modal-title text-center text-dark mb-4">REGISTER NOW</h5>
                        <form action="#" method="post">
                            <div class="form-group">
                                <label class="col-form-label">User name</label>

                                <input type="text" class="form-control" id="username" name="username" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">MailId</label>
                                <input type="text" class="form-control" id="mailid" name="mailid" placeholder="" required="">
                            </div>

                            <div class="form-group">
                                <label class="mb-2 col-form-label">Password</label>
                                <input type="password" class="form-control" id="passwordr" name="passwordr" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label">Mobile Number</label>
                                <input type="number" class="form-control" id="mobile" name="mobile" placeholder="" required="">
                            </div>
							<div class="reg-w3l">
								<button type="submit" id="register" name="register" class="form-control submit mb-4">Register</button>
                           </div>
						   <p class="text-center pb-4">
                                <a href="#" class="text-secondary">By clicking Register, I agree to your terms</a>
                            </p>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
    
 <%
					DAO dao = new DAO_Implement();
				String username = "", password = "";
								
					if (request.getParameter("submit") != null) {
						username = request.getParameter("name");
						password = request.getParameter("password");
						String query = "SELECT * FROM admin_tbl where adminId = '" + username + "' and password = '" + password
								+ "'";
						System.out.println(query);
						ResultSet resultSet = dao.getData(query);
						if (resultSet.next()) {
							session.setAttribute("admin", username);
							response.sendRedirect("Staff.jsp");
						}

						else {
							String sql = "select * from user_tbl where mailId = '"+username+"' and password = '"+password+"'";
									;
							System.out.println(sql);
							ResultSet set = dao.getData(sql);
							if (set.next()) {
								session.setAttribute("userId", set.getInt("userId"));
			                	response.sendRedirect("user.jsp");
							} 
							else {
				%>
				<script type="text/javascript">
					alert("Invalid Username and Password");
				</script>
				<%
					}

						}
					}         
%>

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