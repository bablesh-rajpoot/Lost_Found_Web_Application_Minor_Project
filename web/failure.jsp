<%-- 
    Document   : failure
    Created on : Mar 9, 2019, 11:57:37 AM
    Author     : BABLESH RAJPOOT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Lost & Found</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="keywords" content="MediBulk Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />  <!-- time-picker-CSS -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<!--//fonts-->


</head>
<body>
 
<div class="banner-top">
	<div class="banner-header">
	<!--header-->
		<div class="header">
		<div class="container-fluid">
			<nav class="navbar navbar-default ">
				<div class="navbar-header navbar-right">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
						<span class="icon-bar"></span>
			                        
					</button>
                                    
					<div class="w3_navigation_pos navbar-right">
                                            <a href="home.html"><img src="images/found.jpg" width="50" height="50"></a>
					</div>
                                    
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
                                    <nav>
						<ul class="nav navbar-nav">
                                                      <li class="active"><a href="home.html">Home</a></li>
                                                        <li><a href="#">About Us</a></li>
                                                        <li><a href="#">Contact</a></li>
						        <li class="dropdown">
									<a href="#" class="dropdown-toggle" data-hover="Pages" data-toggle="dropdown">Categories <b class="caret"></b></a>
									<ul class="dropdown-menu">
                                                                            <li><a href="#"><b>&starf; Gadgets Accessories</b></a></li>
                                                                            <li><a href="#"><b>&starf; Personal Document</b></a></li>
                                                                            <li><a href="#"><b>&starf; Study Material</b></a></li>
                                                                            <li><a href="#"><b>&starf; Money Material</b></a></li>
                                                                            <li><a href="#"><b>&starf; Ornaments</b></a></li>
										
									</ul>
                                                        </li>
                                                          
                                                          <li><a data-toggle="modal" aria-pressed="false" data-target="#exampleModal">Lost Something</a></li>
                                                          <li><a data-toggle="modal" aria-pressed="false" data-target="#exampleModal2">Found Something</a></li>
                                                         
							
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
		<!--//header-->
</div>
</div>
<!-- // Lost Something-->

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <form  method='POST' enctype='multipart/form-data' id='fileUploadForm'>
            <div class="modal-content">
               
                <fieldset><legend></legend>
                  
                <div class="modal-header">
                    
                    <h4 class="modal-title" id="exampleModalLabel"><b>I LOST SOMETHING</b>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&Cross;</span>
                    </button></h4>
                </div>
                
                
                <div class="modal-body">
                     
                   
                          <fieldset class="legend"><legend>FOR REPORT ARTICLE</legend>
                                  <div class="form-group">
                                      
                                    <label for="recipient-name" class="col-form-label">Item Category :</label><br>
                                    <div class="cuisine">
                                       <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
                                       <input type="text" name="category" id="cattype" placeholder="category">
                                       <br><span id="sp1"></span>
				    </div>
							
                                   </div>
                                <div class="form-group">
                               <label for="recipient-name" class="col-form-label">Place of Missing :</label><br>
                               <div class="cuisine">
                                       <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                       <input type="text" name="place" id="place" placeholder="Location" > 
                                       <br><span id="sp2"></span>
			       </div>
                        </div>
                               
                          
                         
                      
			 <label for="recipient-name" class="col-form-label">Date of Missing :</label>
                         <div class="cuisine">
                            <div  class="span1_of_1 book_date"> 
				<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                <input class="date" id="datepicker" name="date"  placeholder="dd/mm/yyyy"  type="text" onkeypress="return event.charCode>=48||47 && event.charCode<=57||47" maxlength="10">
                                <br><span id="sp3"></span>
			</div>
                            </div>    
					
                         <div class="form-group cuisine">                                    
		       	
                                           <div class="span1_of_1 section_room">
								<!-- start_section_room --> 
								<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
                                                                <select id="country1" name="country1">
                                                                        <option value="Select Categories">Select Categories</option>
                                                                        <option value="Gadgets Accessories">Gadgets Accessories</option>
                                                                        <option value="Personal Document">Personal Document</option>
                                                                        <option value="Study Material">Study Material</option>
                                                                        <option value="Money Material">Money Material</option>
                                                                        <option value="Ornaments">Ornaments</option>
								</select>
                                                                 <span id="sp4"></span>
                        </div>   
                         </div>
                         <br>
                         <br>
                        
                        
                        
                              <div class="form-group"> 
                                  <label for="recipient-name" class="col-form-label">Article Description (Optional) :</label>
                                  <div class="cuisine">
										
                                      <textarea id="description" name="description" placeholder="Description..." title="Please enter Your Queries"></textarea>	
                                      <br><span id="sp5"></span>
                                  </div>
                              </div>
                         <div class="form-group">
                                  <div class="cuisine">
                                      <img src="" id="upload" class="img-responsive" alt="lost" width="50" height="50">
                                      <input type="file" name="image" id="image">
                                      <span id="sp6"></span>
                                 
				</div>
                               </div>
                         
                        
                             
                     
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Reward For Article (Optional):</label>
                              <div class="cuisine">
                                       <span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
                                       <input type="text" name="reward" id="reward" placeholder=" 100.00" maxlength="10" onkeypress="return event.charCode>=48 && event.charCode<=57">
                                        <br><span id="sp7"></span>
				    </div>
                        </div>
                         </fieldset>
                        
                        <br>
                        <fieldset><legend>FOR PERSONAL INFORMATION</legend>
                         
                                  <div class="form-group">
                                      
                                      <label for="recipient-name" class="col-form-label">Full Name:</label>
                                     <div class="cuisine">
                                       <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                       <input type="text" name="name" id="name" placeholder="Name">
                                       <br><span id="sp8"></span>
				    </div>
                                  </div>
                            <div class="form-group">
                                  <label for="recipient-name" class="col-form-label ">Mobile Number:</label> 
                                  <div class="cuisine">
                                      <div class="phone_email"> 
							<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                                                        <input type="text" name="phone" id="phone" placeholder="Phone" maxlength="10" onkeypress="return event.charCode>=48 && event.charCode<=57">
                                                        <br><span id="sp9"></span>
				      </div>
                                       <div class="phone_email1"> 
                                           <span class="glyphicon glyphicon-pencil" id="glycon" aria-hidden="true"></span>
                                                        <input type="text" name="otp" id="otp" placeholder="Enter OTP" maxlength="4" onkeypress="return event.charCode>=48 && event.charCode<=57">
                                                        <br><span id="sp10"></span>
						</div>
				     
                                  </div>
                                  <br>
                                  <br>
                                  <span id="lostresult"></span>
                                  <br>
                                  <br>
                                  <br>
                                 
                                        
                                     <div class="date_btn"> 
                                          
				   <div class="cuisine center-block">    	
                                       <input type="button" name="lostbtn" id="lostbtn" value="SUBMIT" onclick="connect()">
                                        
				       </div>
                                     
                                   
                                
                           
                        </fieldset>
                      
                            
                        <br>
                        
                           
                        
                    
                </div>
                </fieldset>    
            </div>
            </form>
        </div>
    </div>
   
    <!-- //Lost something -->
    
    <!-- // Found Something-->

     <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
             <form>
            <div class="modal-content">
               
                <fieldset><legend></legend>
                  
                <div class="modal-header">
                    
                    <h4 class="modal-title" id="exampleModalLabel"><b>I FOUND SOMETHING</b>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&Cross;</span>
                    </button></h4>
                </div>
                
                
                <div class="modal-body">
                     
                   
                          <fieldset class="legend"><legend>FOR REPORT ARTICLE</legend>
                                  <div class="form-group">
                                      
                                    <label for="recipient-name" class="col-form-label">Item Category :</label><br>
                                    <div class="cuisine">
                                       <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
			               <input type="text" name="category" placeholder="category" required=""> 
				    </div>
							
                                   </div>
                                <div class="form-group">
                               <label for="recipient-name" class="col-form-label">Place of Missing :</label><br>
                               <div class="cuisine">
                                       <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
			                <input type="text" name="place" placeholder="Location" required=""> 
			       </div>
                        </div>
                               
                          
                         
                      
			 <label for="recipient-name" class="col-form-label">Date of Missing :</label>
                         <div class="cuisine">
                            <div  class="span1_of_1 book_date"> 
				<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
			        <input class="date" id="datepicker" name="date" placeholder="(dd/mm/yyyy)"  type="text" required="">
			</div>
                            </div>    
					
                         <div class="form-group cuisine">                                    
		       	
                                           <div class="span1_of_1 section_room">
								<!-- start_section_room --> 
								<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
                                                                <select id="country1" required>
                                                                        <option value="Select Categories">Select Categories</option>
                                                                        <option value="Gadgets Accessories">Gadgets Accessories</option
                                                                        <option value="Personal Document">Personal Document</option>
                                                                        <option value="Study Material">Study Material</option>
                                                                        <option value="Money Material">Money Material</option>
                                                                        <option value="Ornaments">Ornaments</option>
								</select> 
                        </div>   
                         </div>
                        
                        
                        
                        
                              <div class="form-group"> 
                                  <label for="recipient-name" class="col-form-label">Article Description (Optional) :</label><br>
                                  <div class="cuisine">
										
                                      <textarea id="message" name="description" placeholder="Description..." title="Please enter Your Queries"></textarea>	
                                  </div>
                                  <div class="col-md-3 clients_img">
                                      <img src="images/sno.jpg" class="img-circle" alt="lost">
                                 <input type="file" name="image">
                                 
				</div>
                               </div>
                             <br>
                             <br>
                     
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Reward For Article (Optional):</label>
                              <div class="cuisine">
                                       <span class="glyphicon glyphicon-usd" aria-hidden="true"></span>
			                <input type="text" name="reward" placeholder=" 100.00" required=""> 
				    </div>
                        </div>
                         </fieldset>
                        
                        <br>
                        <fieldset><legend>FOR PERSONAL INFORMATION</legend>
                         
                                  <div class="form-group">
                                      
                                      <label for="recipient-name" class="col-form-label">Full Name:</label>
                                     <div class="cuisine">
                                       <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
			                <input type="text" name="name" placeholder="Name" required=""> 
				    </div>
                                  </div>
                            <div class="form-group">
                                  <label for="recipient-name" class="col-form-labe">Mobile Number:</label> 
                                  <div class="cuisine">
                                      <div class="phone_email"> 
							<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
							<input type="text" name="phone" placeholder="Phone" required=""> 
				      </div>
				      <div class="phone_email1"> 
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							<input type="text" name="otp" placeholder="Enter OTP" >
						</div>
                                  </div>
                                  <br>
                                  <br>
                                  <br>
                                  <br>
                                  
                                   <div class="date_btn"> 
                                          
				   <div class="cuisine center-block">    	
                                       <input type="button" name="Phone" id="btn" value="SUBMIT">
                                        
				       </div>
                                     
                                     
                                   
                                
                           
                        </fieldset>
                      
                            
                        <br>
                        
                           
                        
                    
                </div>
                </fieldset>    
            </div>
            </form>
        </div>
    </div>
   
   
    <!-- //Found something -->


<!-- slider -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active"> 
				<div class="banner-dott">
				<div class="container">
					<div class="carousel-caption">
						<h3>We provide best Lost&Found services</h3>
						<div class="contrast">
							  <p> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
						 </div>
					</div>
				</div>
				</div>
			</div>
			<div class="item item1"> 
				<div class="banner-dott">
				<div class="container">
					<div class="carousel-caption">
						<h3>We provide best Lost&Found services</h3>
						<div class="contrast">
							  <p> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
						 </div>
					</div>
				</div>
				</div>
			</div>
			<div class="item item2"> 
				<div class="banner-dott">
				<div class="container">
					<div class="carousel-caption">
						<h3>We provide best Lost&Found services </h3>
						  <div class="contrast">
							  <p> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
						  </div>
					</div>
				</div>
				</div>
			</div>
			<div class="item item3"> 
				<div class="banner-dott">
				<div class="container">
					<div class="carousel-caption">
						 <h3>We provide best Lost&Found services</h3>
						 
						  <div class="contrast">
							  <p> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
						  </div>
					</div>
				</div>
				</div>
			</div>
			
			<div class="item item4"> 
				<div class="banner-dott">
				<div class="container">
					<div class="carousel-caption">
						 <h3>We provide best Lost&Found services </h3>
						  
						  <div class="contrast">
							  <p> Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.</p>
						  </div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
    </div> 
		 
					
	<!-- //slider -->
        <br>
        <br>
        <br>
        <br>
<!-- // banner -->

<!-- /view card -->
 <section id="team" class="pb-5 ">
           
            <div class="jumbotron col-xs-6">  
        <h5 class="section-title h1 fadeIn">Lost And Found Items List</h5>
        <div class ="row ">
        <%
            StringBuffer s = new StringBuffer("");
            ArrayList<reportspojo> al = reports.getall();
            for(reportspojo rp:al)
            {
                 String val="";
               if(rp.getReport_type().equalsIgnoreCase("L"))
              val = "I FOUND THIS";
               else
                  val = "I LOST THIS"; 
String ans = "<div class='col-xs-12 col-md-12 col-lg-4 '>"+
           "<div class='image-flip' ontouchstart='this.classList.toggle('hover');'>"+
                    "<div class='mainflip'>"+
                        "<div class='frontside'>"+
                        "<div class='card'>"+
                        "<div class='card-body text-center'>"+
         "  <h4 class='card-title' style='font-size: 1.6rem'>" +rp.getItem_name()+"</h4>"+
   "<p><img class='img-fluid img-thumbnail rounded float-left '   src='images/"+rp.getItem_img().trim() +"' alt='card image'></p>"+
     " <p class='card-text textst' style='margin-top:40px'>"+ rp.getReward()+ "</p>"+
    "<a href='#' class='btn btn-primary btn-sm' style='margin-top:40px'><i class='fa fa-plus'></i></a>"+
  "</div> </div></div> <div class='backside'> <div class='card'>"+
  "<div class='card-body text-center mt-4'> "+
       " <h4 class='card-title'style='font-size: 1.6rem'>" + rp.getItem_name()+"</h4>"+
   " <p class='card-text textst' style='margin-top:40px'>  Missing Place :" + rp.getItem_palce()+"</p>"+
    " <p class='card-text textst'> Missing Date :" +rp.getItem_date() +"</p>"+
   " <p class='card-text textst' style='color:GREEN'>" + rp.getItem_desc()+"</p>"+
   
   "<button id = '"+rp.getItem_id() +"class ='btn card-button' data-toggle='modal' data-backdrop='static'  data-target='#myModal' type=button>"+val+"</button>"+
  " </div> </div> </div> </div> </div> </div>";

s.append(ans);
            }
            
            %>
            
        <%=s%>
        
        
        
            </div>
    </div>
</section>

<!-- //view card -->
<!-- /services -->

<!-- //services -->
<!-- testimonials -->
	
<!-- //testimonials -->
<!-- footer -->
<div class="footer">
	<div class="container">
	<div class="footer_agile_inner_info_w3l">
		<div class="col-md-4 footer-left">
			<h2><a href="home.html">LOST&FOUND </a></h2>
			<p>Lorem ipsum quia dolor
			sit amet, consectetur, adipisci velit, sed quia non 
			numquam eius modi tempora.</p>
			<ul class="social-nav model-3d-0 footer-social w3_agile_social two">
															<li><a href="https://www.facebook.com" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="https://www.twitter.com" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="https://www.instagram.com" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="https://www.linkedin.com" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
		</div>
		<div class="col-md-4 footer-right">
			<div class="sign-grds">
				<div class="sign-gd">
					<h4>Information </h4>
					<ul>
						 <li><a href="home.html" class="active">Home</a></li>
        <li><a href="#" >About</a></li>
        <li><a href="#"> Services</a></li>
		<li><a href="#">Help</a></li>
		<li><a href="#">Contact</a></li>
						
					</ul>
				</div>
				</div>
			</div>
				<div class="col-md-4 sign-gd-two">
					<h4>Contact Us</h4>
					<div class="w3-address">
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-phone" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>Phone Number</h6>
								<p>+91 1234567890</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>Email Address</h6>
								<p>Email :<a href="mailto:Lost&Found@gmail.com"> Lost&Found@gmail.com</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="w3-address-grid">
							<div class="w3-address-left">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
							</div>
							<div class="w3-address-right">
								<h6>Location</h6>
								<p>Berasia Road , JNCT-College Bhopal, India. 
								
								</p>
							</div>
							
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
				
		
		<div class="clearfix"></div>
			
                <p class="copy-right">&copy; 2019  LOST&FOUND.  All rights reserved <br> Design by   &star;&star;&star;<a href="home.html"> BR,EJ,RR </a>&star;&star;&star;</p>
	</div>
</div>
</div>
<!-- //footer -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<!-- carousal -->
	<script src="js/slick.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(document).on('ready', function() {
		  $(".center").slick({
			dots: true,
			infinite: true,
			centerMode: true,
			slidesToShow: 2,
			slidesToScroll: 2,
			responsive: [
				{
				  breakpoint: 768,
				  settings: {
					arrows: true,
					centerMode: false,
					slidesToShow: 2
				  }
				},
				{
				  breakpoint: 480,
				  settings: {
					arrows: true,
					centerMode: false,
					centerPadding: '40px',
					slidesToShow: 1
				  }
				}
			 ]
		  });
		});
	</script>
<!-- //carousal -->


			<script src="js/SmoothScroll.min.js"></script>
		<!-- smooth scrolling-bottom-to-top -->
				<script type="text/javascript">
					$(document).ready(function() {
					/*
						var defaults = {
						containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
						};
					*/								
					$().UItoTop({ easingType: 'easeOutQuart' });
					});
				</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		<!-- //smooth scrolling-bottom-to-top -->
		<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- Time select -->
				<script type="text/javascript" src="js/wickedpicker.js"></script>
				<script type="text/javascript">
					$('.timepicker').wickedpicker({twentyFour: false});
				</script>
				<!-- //Time select -->
				<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker" ).datepicker();
						  });
				  </script>
				<!-- //Calendar -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/lostsomething.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 

</body>
</html>