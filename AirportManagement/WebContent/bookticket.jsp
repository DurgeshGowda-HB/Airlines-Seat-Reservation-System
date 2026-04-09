<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbconnect.DAO_Implement"%>
<html lang="zxx">
<head>
<title>Airline Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="keywords"
	content="Vicarage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- font-awesome icons -->
<link href="css/fontawesome-all.min.css" rel="stylesheet">
<!-- //Custom Theme files -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" property="" />
<!-- online-fonts -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900"
	rel="stylesheet">
<!-- //online-fonts -->
<script type="text/javascript">
	function onflightchange() {
		var f = document.getElementById("flight").value;
		var target = "bookticket.jsp";
		if (f != "") {
			target += "?fid=" + f;
		}
		window.location.href = target;
	}
	function f1() {
		var p = document.getElementById("tprice").value;
		var v = document.getElementById("passengernumber").value;
		alert("Number Of Passengers : "+ v + "\n"+" Price :"+p+"\n"+"Total Ticket Price : " + (v*p));
		document.getElementById("totalbill").value = v * p;
	}
</script>
</head>
<body>
	<%!String query;
	DAO_Implement dao = new DAO_Implement();
	ResultSet resultSet;
	int userId,walletamount;
	int fid;%>
	<%
		if (session.getAttribute("userId") != null) {
			userId = Integer.parseInt(session.getAttribute("userId").toString());
		} else {
			response.sendRedirect("index.jsp");
		}
	query ="select * from users_tbl where userId="+userId;
	resultSet=dao.getData(query);
	if(resultSet.next())
	 walletamount=Integer.parseInt(resultSet.getString("amount"));
	%>
	<!-- banner -->
	<div class="inner-banner">
		<!-- header -->
		<header>
			<nav
				class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
				<button class="navbar-toggler ml-md-auto" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-lg-auto text-center">
						<li class="nav-item  mr-3 mt-lg-0 mt-3"><a class="nav-link"
							href="user.jsp"> View Flights</a></li>

						<li class="nav-item mr-3 mt-lg-0 mt-3"><a class="nav-link"
							href="viewoffers.jsp"> View Offers</a></li>
						<li class="nav-item   mr-3 mt-lg-0 mt-3"><a class="nav-link"
							href="amount.jsp"> Add Amount</a></li>
						<li class="nav-item  active mr-3 mt-lg-0 mt-3"><span
							class="sr-only">(current)</span> <a class="nav-link"
							href="bookticket.jsp">Book Ticket</a></li>
						<li class="nav-item mr-3 mt-lg-0 mt-3"><a class="nav-link"
							href="index.jsp">Logout</a></li>
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
			<h3 class="heading-agileinfo">
				Book <span>Tickets</span>
			</h3>
		</div>
		<div class="col-md-8col-md-offset-4 contact-form" align="center">
			<div class="col-md-6">
				<%!int price = 0;%>
				<%
					int selectedFid = 0;
					if (request.getParameter("fid") != null) {
						String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
						selectedFid = Integer.parseInt(request.getParameter("fid"));
						query = "SELECT offer FROM coupons_tbl WHERE flightId = "+ selectedFid
								+" AND '"+date+"' BETWEEN validFrom AND validTo" ;
						ResultSet resultSet = dao.getData(query);
						if (resultSet.next()) {
							price = resultSet.getInt("offer");
						}
						else{
							query = "select price from flights_tbl where flightId=" + selectedFid;
							resultSet = dao.getData(query);
							if (resultSet.next()) {
								price = resultSet.getInt("price");
							}
						}
					}
				%>
				<form id="contact-form" name="myForm" class="form" action="#"
					onsubmit="return validateForm()" method="POST">
					<div class="form-group">

						<select class="form-control" name="flight" id="flight"
							onchange="onflightchange()">
							<option value="">Select Flight</option>
							<%
								query = "select * from flights_tbl";
								resultSet = dao.getData(query);
								while (resultSet.next()) {
									String flightname = resultSet.getString("flightName");
									fid = resultSet.getInt("flightId");
									if (selectedFid == fid) {
							%>
							<option value="<%=fid%>" selected="selected"><%=flightname%></option>
							<%
								} else {
							%>
							<option value="<%=fid%>"><%=flightname%></option>
							<%
								}
								}
							%>
						</select>
					</div>
					<div class="form-group">

						<select class="form-control" name="desairport" id="desairport">
							<option value="">Select Source</option>
							<%
								query = "select * from airports_tbl";
								resultSet = dao.getData(query);
								while (resultSet.next()) {
									String sname = resultSet.getString("city");
									int sid = resultSet.getInt("airportId");
							%>
							<option value="<%=sid%>"><%=sname%></option>
							<%
								}
							%>
						</select>
					</div>
					<div class="form-group">

						<select class="form-control" name="sourceairport"
							id="sourceairport">
							<option value="">Select Destination</option>
							<%
								query = "select * from airports_tbl";
								resultSet = dao.getData(query);
								while (resultSet.next()) {
									String dname = resultSet.getString("city");
									int did = resultSet.getInt("airportId");
							%>
							<option value="<%=did%>"><%=dname%></option>
							<%
								}
							%>
						</select>
					</div>

					<div class="form-group">
						<label class="form-label" for="passengernumber"></label> <input
							type="number" class="form-control" id="passengernumber"
							name="passengernumber" placeholder="Total Number Of Passenger"
							tabindex="3" onkeyup="f1()">
					</div>
					<div class="form-group">
						<label class="form-label" for="ticketprice"></label> <input
							type="hidden" class="form-control" id="tprice" name="tprice"
							placeholder="Total Number Of Passenger" tabindex="3"
							value="<%=price%>">
					</div>

					<div class="form-group">
						<label class="form-label" id="bill" for="bill"></label> <input
							type="text" class="form-control" id="totalbill" name="totalbill"
							placeholder="Total Amount" tabindex="3">
					</div>

					<div class="text-center mt-5">
						<button type="submit" id="submit" name="submit"
							class="serv_bottom btn btn-border btn-lg w-100">Book
							Ticket</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- //contact -->

	<!-- Footer -->
	<footer id="footer" class="py-5">
		<div class="container"></div>
	</footer>
	<%
		if (request.getParameter("submit") != null) {
			String passengernum = request.getParameter("passengernumber");
			int desId = Integer.parseInt(request.getParameter("desairport"));
			int srcId = Integer.parseInt(request.getParameter("sourceairport"));
			int flightId = Integer.parseInt(request.getParameter("flight"));
			int userid = Integer.parseInt(session.getAttribute("userId").toString());
			int totalbill= Integer.parseInt(request.getParameter("totalbill"));
			System.out.println(desId);
			System.out.println(srcId);

			if(walletamount<totalbill)
			{
				%>
				<script type="text/javascript">
					alert("Insufficient Amount ?? Add Amount to wallet.");
					window.location.href = "amount.jsp";
				</script>
				<%
			}
			else
			{
			String query = "insert into ticket_tbl (userId,source,destination,flightId,price) " + "values (" + userid
					+ ",'" + srcId + "','" + desId + "'," + flightId + ",'"+totalbill+"')";
			System.out.println(query);

			DAO_Implement dao = new DAO_Implement();
			if (dao.putData(query) > 0) {
				query="update users_tbl set amount= (amount-"+totalbill+") where userId="+userid;
				dao.putData(query);
	%>
	<script type="text/javascript">
		alert("Ticket Booking Successfull");
		window.location.href = "user.jsp";
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
		alert("Ticket Booking Failed");
		window.location.href = "user.jsp";
	</script>
	<%
		}
			dao.closeConnection();
		}}
	%>
	<!-- /Footer -->

	<!-- login  -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="#" method="post">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Username</label>
							<input type="text" class="form-control" placeholder=" "
								name="Name" id="recipient-name" required="">
						</div>
						<div class="form-group">
							<label for="password" class="col-form-label">Password</label> <input
								type="password" class="form-control" placeholder=" "
								name="Password" id="password" required="">
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Login">
						</div>
						<div class="row sub-w3l my-3">
							<div class="col sub-agile">
								<input type="checkbox" id="brand1" value=""> <label
									for="brand1" class="text-secondary"> <span></span>Remember
									me?
								</label>
							</div>
							<div class="col forgot-w3l text-right">
								<a href="#" class="text-secondary">Forgot Password?</a>
							</div>
						</div>
						<p class="text-center dont-do">
							Don't have an account? <a href="#" data-toggle="modal"
								data-target="#exampleModalCenter2"
								class="text-dark font-weight-bold"> Register Now</a>

						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<!--/Register-->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="login px-4 mx-auto mw-100">
						<h5 class="modal-title text-center text-dark mb-4">REGISTER
							NOW</h5>
						<form action="#" method="post">
							<div class="form-group">
								<label class="col-form-label">First name</label> <input
									type="text" class="form-control" id="validationDefault01"
									placeholder="" required="">
							</div>
							<div class="form-group">
								<label class="col-form-label">Last name</label> <input
									type="text" class="form-control" id="validationDefault02"
									placeholder="" required="">
							</div>

							<div class="form-group">
								<label class="mb-2 col-form-label">Password</label> <input
									type="password" class="form-control" id="password1"
									placeholder="" required="">
							</div>
							<div class="form-group">
								<label class="col-form-label">Confirm Password</label> <input
									type="password" class="form-control" id="password2"
									placeholder="" required="">
							</div>
							<div class="reg-w3l">
								<button type="submit" id="submit" name="submit"
									class="form-control submit mb-4">Register</button>
							</div>
							<p class="text-center pb-4">
								<a href="#" class="text-secondary">By clicking Register, I
									agree to your terms</a>
							</p>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

	<!--//Register-->

	<!-- //footer -->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- FlexSlider-JavaScript -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //FlexSlider-JavaScript -->
	<!-- script for password match -->
	<script>
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity(
						"Passwords Don't Match");
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
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function() {
			/*
			var defaults = {
			    containerID: 'toTop', // fading element id
			    containerHoverID: 'toTopHover', // fading element hover id
			    scrollSpeed: 1200,
			    easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
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