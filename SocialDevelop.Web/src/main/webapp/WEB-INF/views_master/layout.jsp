<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title><tiles:insertAttribute name="title" /></title>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/css/slider_css.css">
        <link rel="stylesheet" href="../resources/css/font-awesome.min.css">
        <link rel="stylesheet" href="../resources/css/animate.min.css">
        <link rel="stylesheet" href="../resources/css/et-line-font.css">
        <link rel="stylesheet" href="../resources/css/nivo-lightbox.css">
        <link rel="stylesheet" href="../resources/css/nivo_themes/default/default.css">
        <link rel="stylesheet" href="../resources/css/style.css">
        <!--
        <link rel="stylesheet" href="../resources/css/login.css">
        -->
        
        <!-- Js only for Slider -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500' rel='stylesheet' type='text/css'>
	<script src="../resources/js/jssor.slider-23.1.6.min.js" type="text/javascript"></script>
	<script src="../resources/js/slider_carousel.js" type="text/javascript"></script>
	<!-- End Of Js Only for Slider -->
        
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="../resources/js/jquery.js"></script>
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

        <!-- navigation section -->
        <section class="navbar navbar-fixed-top custom-navbar" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="main" class="navbar-brand">SocDev</a>
                </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="main" class="smoothScroll">HOME</a></li>
                        <li><a href="alldevelopers" class="smoothScroll">DEVELOPERS</a></li>
                        <li><a href="allprojects" class="smoothScroll">PROJECTS</a></li>
                        <li><a href="gotologinpage" class="smoothScroll" style="display: <c:out value="${displayHomePage}"/>;">SIGN IN / SIGN UP</a></li>
                        <li><a href="viewMyProfile?nickname=<c:out value="${displaySession}"/>" class="smoothScroll" style="display: <c:out value="${displaySession}"/>;">MY PROFILE</a></li>                       
                     <!--   <li><a href="profilepage?nickname=dimAya" class="smoothScroll" style="display: <c:out value="${displaySession}"/>;">MY PROFILE</a></li>                        -->
                        <li><a href="about.html" class="smoothScroll">ABOUT</a></li>
                        <li><a href="goCreateTask" class="smoothScroll">CONTACT</a></li>
                        <li><a href="logout" class="smoothScroll" style="display: <c:out value="${displaySession}"/>;">SIGN OUT</a></li>
                    </ul>
                </div>
            </div>
        </section>
        
        <tiles:insertAttribute name="content"/>
        
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <p>Social Develop 2017</p>
                        <ul class="social-icon">
                            <li><a href="#" class="fa fa-github wow fadeIn" data-wow-delay="0.9s"></a></li>
                            <li><a href="#" class="fa fa-youtube-play wow fadeIn" data-wow-delay="0.9s"></a></li>
                            <li><a href="#" class="fa fa-google-plus wow fadeIn" data-wow-delay="0.3s"></a></li>
                            <li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
                            <li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/clonedivs.js"></script>
        <script src="../resources/js/clonetaskdiv.js"></script>
        <script src="../resources/js/index.js"></script>
        <script src="../resources/js/isotope.js"></script>
        <script src="../resources/js/jquery.backstretch.min.js"></script>
        <script src="../resources/js/jquery.js"></script>
        <script src="../resources/js/login.js"></script>
        <script src="../resources/js/nivo-lightbox.min.js"></script>
        
        <!--
        <script src="../resources/js/imagesloaded.min.js"></script>
        <script src="../resources/js/custom.js"></script>
        <script src="../resources/js/skillvisibility.js"></script>
        <script src="../resources/js/skillvisibilitydeveloper.js"></script>
        <script src="../resources/js/login.js"></script>
        -->
        <script src="../resources/js/smoothscroll.js"></script>
        <script src="../resources/js/wow.min.js"></script>
        
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </body>
</html>