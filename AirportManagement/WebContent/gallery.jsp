<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbconnect.DAO_Implement"%>
<%@page import="dbconnect.DAO"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%!
			DAO dao=new DAO_Implement();
			%>
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
	 <!-- gallery smoothbox  -->
    <link rel="stylesheet" href="css/smoothbox.css" type='text/css' media="all" ><!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet"><!-- //online-fonts -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="inner-banner">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                 <h1>
                    <a class="navbar-brand text-white" href="index.jsp">
                       Airline Management System
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.jsp">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="service.jsp">services</a>
                        </li>
       
                        <li class="nav-item active mr-3 mt-lg-0 mt-3">
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
       
    </div>
    <!-- //container -->
    <!-- //banner -->
	<!-- gallery -->
    <div class="agileits-services py-sm-5" id="gallery">
        <div class="container py-lg-5 pt-3 pb-5">
            <div class="w3ls-titles text-center mb-5">
				<h3 class="heading-agileinfo">Our  <span>Gallery</span></h3>
			</div>
            <div class="w3ls_gallery_grids pt-md-5 pt-3">
                <div class="row agileits_w3layouts_gallery_grid">
                    <div class="col-sm-4  agileits_w3layouts_gallery_grid1 w3layouts_gallery_grid1 hover14">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img5.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img5.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-4  agileits_w3layouts_gallery_grid1 hover14 my-sm-0 my-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img2.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img2.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-4  agileits_w3layouts_gallery_grid1 hover14">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img3.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img3.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row agileits_w3layouts_gallery_grid my-4">
                    <div class="col-sm-4 agileits_w3layouts_gallery_grid1 hover14 mt-sm-0 mt-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img4.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img4.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-4 agileits_w3layouts_gallery_grid1 hover14 mt-sm-0 mt-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img5.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img5.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-4 agileits_w3layouts_gallery_grid1 hover14 mt-sm-0 mt-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img6.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img6.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row agileits_w3layouts_gallery_grid">
                    <div class="col-sm-4 agileits_w3layouts_gallery_grid1 w3layouts_gallery_grid1 hover14 mt-sm-0 mt-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img7.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img7.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-4 agileits_w3layouts_gallery_grid1 hover14 mt-sm-0 mt-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/img8.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/img8.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-4 agileits_w3layouts_gallery_grid1 hover14 mt-sm-0 mt-4">
                        <div class="w3_agile_gallery_effect">
                            <a href="images/back.jpg" class="sb" title="quis nostrud exercitation ullamco laboris quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum">
                                <figure>
                                    <img src="images/back.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //gallery -->

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

	<!-- login  -->
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
                            <input type="text" class="form-control" placeholder=" " name="Name" id="recipient-name" required="">
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-form-label">Password</label>
                            <input type="password" class="form-control" placeholder=" " name="Password" id="password" required="">
                        </div>
                        <div class="right-w3l">
                            <input type="submit" class="form-control" value="Login">
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
	<!-- gallery smoothbox -->
    <script src="js/smoothbox.jquery2.js"></script>

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