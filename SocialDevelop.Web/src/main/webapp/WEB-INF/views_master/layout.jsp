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
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="../resources/js/jquery.js"></script>
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
        <section class="navbar navbar-fixed-top custom-navbar" >
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
                        <li><a href="gotologinpage" class="smoothScroll">SIGN IN / SIGN UP</a></li>
                        <li><a href="about.html" class="smoothScroll">ABOUT</a></li>
                        <li><a href="index.html#contact" class="smoothScroll">CONTACT</a></li>
                        <li><a href="${contextPath}/app/message" class="smoothScroll">MESSAGE</a></li>
                    </ul>
                </div>
            </div>
        </section>
        
        <tiles:insertAttribute name="content"/>
        
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

        
        <script src="../resources/js/index.js"></script>
        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/smoothscroll.js"></script>
        <script src="../resources/js/isotope.js"></script>
        <script src="../resources/js/imagesloaded.min.js"></script>
        <script src="../resources/js/nivo-lightbox.min.js"></script>
        <script src="../resources/js/jquery.backstretch.min.js"></script>
        <script src="../resources/js/wow.min.js"></script>
        <script src="../resources/js/custom.js"></script>
        <script src="../resources/js/login.js"></script>
        <script src="../resources/js/clonedivs.js"></script>
    </body>
</html>