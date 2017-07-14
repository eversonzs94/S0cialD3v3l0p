<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!-- home section -->
<section id="home">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <h3>Social Development Platform</h3>
                <h1>SocDev</h1>
                <a href="#work" class="smoothScroll btn btn-danger">Browse for Developers</a>
                <a href="#portfolio" class="smoothScroll btn btn-default">Browse for Projects</a>
            </div>
        </div>
    </div>		
</section>

<!-- work section -->
<section id="work">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="section-title">
                    <strong>01</strong>
                    <h1 class="heading bold">Developers</h1>
                    
                </div>
            </div>

            <!-- #region Jssor Slider Begin -->
            <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:809px;height:230px;overflow:hidden;visibility:hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position:absolute;top:0px;left:0px;background:url('../resources/images/loading.gif') no-repeat 50% 50%;background-color:rgba(0, 0, 0, 0.7);"></div>
                <div data-u="slides" style="cursor:pointer;position:relative;top:0px;left:0px;width:809px;height:230px;overflow:visible;">
                    <!-- Slider Images -->
                    <div class="team">
                        <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">                                     
                            <div class="iso-box-wrapper col4-iso-box">
                                <c:forEach items="${developerlist}" var="item">       
                                    <div class="iso-box html photoshop hover_text col-lg-4 col-md-4 col-sm-6 ">

                                        <c:if test="${item.getGender()=='female'}">
                                            <a href="../resources/images/developer2.png" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/developer2.png" alt="portfolio img"></a>

                                        </c:if>
                                        <c:if test="${item.getGender()=='male'}">
                                            <a href="../resources/images/developer_1.png" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/developer_1.png" alt="portfolio img"></a>
                                            </c:if>

                                        <div class="project_description">
                                            <div class="des">
                                                <!-- Here add the info and description for a developer--> 
                                                <h1><c:out value="${item.getName()} ${item.getSurname()}" /></h1>
                                                <a href=profilepage?nickname=<c:out value="${item.getNickname()}" /> style="color: #fff; text-decoration: none; padding: 8px 16px; background-color: #00c6d7;">Read More</a> 
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>  
                            </div>
                        </div>


                        <a data-u="any" href="https://wordpress.org/plugins/jssor-slider/" style="display:none">wordpress banner rotator</a>
                    </div>
                    <!-- Bullet Navigator -->
                    <div data-u="navigator" class="jssorb03" style="bottom:10px;right:10px;">
                        <!-- bullet navigator item prototype -->
                        <div data-u="prototype" style="display: none; width:21px;height:21px;">
                            <div data-u="numbertemplate"></div>
                        </div>
                    </div>
                    <!-- Arrow Navigator -->
                    <!-- <span data-u="arrowleft" class="jssora03l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
                    <span data-u="arrowright" class="jssora03r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span> -->
                </div>
                <script type="text/javascript">jssor_1_slider_init();</script>
                <!-- #endregion Jssor Slider End -->
            </div>
        </div>
        <h3><a href="alldevelopers" style="margin-top: 12px; color: #00C6D7; text-decoration: none;">See More Developers</a></h3>
</section>

<!-- portfolio section -->
<div id="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="section-title">
                    <strong>02</strong>
                    <h1 class="heading bold">PROJECTS</h1>
                </div>
                <!-- ISO section -->
                <div class="iso-section">
                    <ul class="filter-wrapper clearfix">
                        <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".html">HTML</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".wordpress">Wordpress</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".mobile">Mobile</a></li>
                        <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".html">HTML</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".wordpress">Wordpress</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".mobile">Mobile</a></li>
                        <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".html">HTML</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".wordpress">Wordpress</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".mobile">Mobile</a></li>
                        <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".html">HTML</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".wordpress">Wordpress</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".mobile">Mobile</a></li>
                        <li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".html">HTML</a></li>
                        <li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
                    </ul>
                    <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                        <div class="iso-box-wrapper col4-iso-box">
                            <c:forEach items="${projectlist}" var="item">
                                <div class="iso-box html photoshop hover_text col-lg-4 col-md-4 col-sm-6">
                                    <a href="../resources/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/portfolio-img5.jpg" alt="portfolio img"></a>
                                    <div class="project_description">
                                        <div class="des">
                                            <h1><c:out value="${item.getName()}" /></h1>
                                            <a href=projectpage?id=<c:out value="${item.getId()}" />>Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="read-more"><a href="allprojects">See more...</a></div>
</div>		


<!-- contact section -->
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 text-center">
                <div class="section-title">
                    <strong>03</strong>
                    <h1 class="heading bold">CONTACT US</h1>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 contact-info">
                <h2 class="heading bold">CONTACT INFO</h2>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteu sunt in culpa qui officia deserunt mollit anim id.</p>
                <div class="col-md-6 col-sm-4">
                    <h3><i class="icon-envelope medium-icon wow bounceIn" data-wow-delay="0.6s"></i> EMAIL</h3>
                    <p>hello@company.com</p>
                </div>
                <div class="col-md-6 col-sm-4">
                    <h3><i class="icon-phone medium-icon wow bounceIn" data-wow-delay="0.6s"></i> PHONES</h3>
                    <p>010-020-0340 | 090-080-0760</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <form action="#" method="get" class="wow fadeInUp" data-wow-delay="0.6s">
                    <div class="col-md-6 col-sm-6">
                        <input type="text" class="form-control" placeholder="Name" name="name">
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input type="email" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="col-md-12 col-sm-12">
                        <textarea class="form-control" placeholder="Message" rows="7" name="message"></textarea>
                    </div>
                    <div class="col-md-offset-4 col-md-8 col-sm-offset-4 col-sm-8">
                        <input type="submit" class="form-control" value="SEND MESSAGE">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
