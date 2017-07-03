<%-- 
    Document   : all-developers
    Created on : Jul 3, 2017, 3:52:08 PM
    Author     : Tala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>SocDev</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/slider_css.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/et-line-font.css">
	<link rel="stylesheet" href="css/nivo-lightbox.css">
	<link rel="stylesheet" href="css/nivo_themes/default/default.css">
	<link rel="stylesheet" href="css/style.css">
	<!-- Js only for Slider -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500' rel='stylesheet' type='text/css'>
	<script src="js/jssor.slider-23.1.6.min.js" type="text/javascript"></script>
	<script src="js/slider_carousel.js" type="text/javascript"></script>
	<!-- End Of Js Only for Slider -->
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

<!-- preloader section -->
<div class="preloader">
	<div class="sk-spinner sk-spinner-circle">
       <div class="sk-circle1 sk-circle"></div>
       <div class="sk-circle2 sk-circle"></div>
       <div class="sk-circle3 sk-circle"></div>
       <div class="sk-circle4 sk-circle"></div>
       <div class="sk-circle5 sk-circle"></div>
       <div class="sk-circle6 sk-circle"></div>
       <div class="sk-circle7 sk-circle"></div>
       <div class="sk-circle8 sk-circle"></div>
       <div class="sk-circle9 sk-circle"></div>
       <div class="sk-circle10 sk-circle"></div>
       <div class="sk-circle11 sk-circle"></div>
       <div class="sk-circle12 sk-circle"></div>
    </div>
</div>

<!-- navigation section -->
<section class="navbar navbar-fixed-top custom-navbar" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.html" class="navbar-brand">SocDev</a>
		</div>
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.html" class="smoothScroll">HOME</a></li>
				<li><a href="index.html#work" class="smoothScroll">DEVELOPERS</a></li>
				<li><a href="index.html#portfolio" class="smoothScroll">PROJECTS</a></li>
				<li><a href="login.html" class="smoothScroll">SIGN IN / SIGN UP</a></li>
				<li><a href="about.html" class="smoothScroll">ABOUT</a></li>
				<li><a href="index.html#contact" class="smoothScroll">CONTACT</a></li>
			</ul>
		</div>
	</div>
</section>

<section id="team">
	<div class="col-md-12" style="margin-top: 90px;">
            <div class="input-group" id="adv-search">
                <input type="text" class="form-control" placeholder="Search for Developer" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                   
                                  </div>
                                  <div class="form-group">
                                  	<div id="visibleskills">
                                    <label for="filter">Filter by skills</label>
                                    <select class="form-control">
                                        <option value="all" selected>All</option>
                                        <option value="html">Html</option>
                                        <option value="css">Css</option>
                                        <option value="js">Javascript</option>
                                        <option value="java">Java</option>
                                        <option value="Csharp">C#</option>
                                    </select>
                                  </div>
                                  </div>
                                  <input id="btnvisible" class="btn btn-default" type="button" value="Add Level" />
                                  <div id="hidedskills">
	                                  <div class="form-group">
	                                    <label for="filter">Filter by level</label>
	                                    <select class="form-control">
	                                        <option value="all" selected>All</option>
	                                        <option value="one">1</option>
	                                        <option value="two">2</option>
	                                        <option value="three">3</option>
	                                        <option value="four">4</option>
	                                        <option value="five">5</option>
	                                        <option value="six">6</option>
	                                        <option value="seven">7</option>
	                                        <option value="eight">8</option>
	                                        <option value="nine">9</option>
	                                        <option value="ten">10</option>
	                                    </select>
	                                  </div>
                                  </div>
                                  <input id="btnhide" class="btn btn-default" type="button" value="Delete Level" />

                                  <div class="form-group">
                                    
                                  </div>
                                  <button type="submit" class="btn btn-primary"><img src="images/account-search.png"></button>
                                </form>
                            </div>
                        </div>
                        <button type="button" class="btn btn-primary"><img src="images/account-search.png"></button>
</section>
<section id="pricing">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 text-center">
				<div class="section-title">
					<strong>Developers</strong>
					<hr style="margin-bottom: 30px;">
				</div>
			</div>
			<!-- If you want to add another Developers add right here !!!! -->
			
		<!-- Developer Description Start -->	
		<div class="animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceIn;">
			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>
			
			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="developer_description">
					<div class="head_developer_description">
						<div class="developer_image"><img src="images/developer1.jpg" alt="developer image"></div>
						<div class="developer_column">
							<div class="nickname"><span>Nickname</span></div>
							<div class="developer_from"><p>Developer From:<em>Country</em></p>
							</div>
							<div class="head_developer_description">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
								<img src="images/star.png" class="developer_star">
							</div>
						</div>
					</div>
					<div class="developer_short_description"><span>I am in the TOP 5 out of 16,000,000+ Freelancers. I am super experienced web programmer who has successfully launched various huge projects and has proven my skill in many opportunity. I am the responsible for the working and try to keep the best relationship with the customers. My Vision : High Quality, High Speed,...</span>
					</div>
					<div class="hireme"><a href="profile-page.html">Hire Me</a></div>
				</div>
			</div>
		</div>
		<!-- Developer Description End -->
			<!-- Page Counter -->
				<div class="pagination">
				    <a href="#">&laquo;</a>
				    <a href="#"  class="active">1</a>
				    <a href="#">2</a>
				    <a href="#">3</a>
				    <a href="#">4</a>
				    <a href="#">5</a>
				    <a href="#">6</a>
				    <a href="#">&raquo;</a>
  				</div>
		</div>
	</div>
</section>

<!-- footer section -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<p>Project for Web Engineering</p>
				<hr>
				<ul class="social-icon">
					<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
					<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
					<li><a href="#" class="fa fa-dribbble wow fadeIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-behance wow fadeIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-tumblr wow fadeIn" data-wow-delay="0.9s"></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/isotope.js"></script>
<script src="js/imagesloaded.min.js"></script>
<script src="js/nivo-lightbox.min.js"></script>
<script src="js/jquery.backstretch.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/skillsvisibility.js"></script>


</body>
</html>

  
