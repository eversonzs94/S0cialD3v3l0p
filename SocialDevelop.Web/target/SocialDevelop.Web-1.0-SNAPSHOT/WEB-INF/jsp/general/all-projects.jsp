<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<section id="team">
    <form action="searchproject" method="post">
	<div class="col-md-12" style="margin-top: 90px;">
            <div class="input-group" id="adv-search">
                <div class="input-group-btn">
                <div class="btn-group" role="group">
                <input type="text" class="form-control" placeholder="Search for Projects" name="keyword"/>
                <button type="submit" class="btn btn-primary"><img src="../resources/images/account-search.png"></button>
                </div>
                </div>
            </div>
        </div>
    </form>
</section>
<!-- pricing section -->
<!-- portfolio section -->
<div id="portfolio" style="display: <c:out value="${showall}"/>;">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="section-title">
                      			<strong>Projects</strong>
					<hr style="margin-bottom: 30px;">
                                        <a href="gotoaddproject"> <button type="button" style="display: <c:out value="${displaySession}"/>;" class="btn btn-primary">Add New Project</button></a>
				</div>
       
				<!-- ISO section -->
				<div class="iso-section">
               		<div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                            <div class="iso-box-wrapper col4-iso-box">
                                <c:forEach items="${projectlist}" var="item">
                                    <div class="iso-box html photoshop hover_text col-lg-4 col-md-4 col-sm-6">
               				<a href="../resources/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/portfolio-img5.jpg" alt="portfolio img"></a>
                                            <div class="project_description">
               				 	<div class="des">
                                                    <h1><c:out value="${item.getName()}" /></h1>
                                                    <a href=projectpage?id=<c:out value="${item.getId()}" /> style="width: 140px; margin: auto;">Read More</a>
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

                                
<section id="user-panel" style="display: <c:out value="${showparts}"/>;">
    <a href="gotoaddproject"> <button type="button" style="display: <c:out value="${displaySession}"/>;" class="btn btn-primary">Add New Project</button></a>
    <div >
	<div class="row">
            <div class="col-md-12 col-sm-12">
			
		<ul class="nav nav-tabs bold">
                    <li class="active"><a data-toggle="tab" href="#my-projects">My Projects</a></li>
                    <li><a data-toggle="tab" href="#other-projects">Other Projects</a></li>
  		</ul>

		<div class="tab-content">
                    <div id="my-projects" class="tab-pane fade in active">
                        <div id="portfolio" style="background-color:#e9e9e9; padding-top:10px;">
                            <div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
				<!-- ISO section -->
                                    <div class="iso-section">
                                    <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                                    <div class="iso-box-wrapper col4-iso-box">
                                        <c:forEach items="${projectlist}" var="item">
                                            <div class="iso-box html photoshop hover_text col-lg-4 col-md-4 col-sm-6">
                                            <a href="../resources/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/portfolio-img5.jpg" alt="portfolio img"></a>
                                            <div class="project_description">
               				 	<div class="des">
                                                    <h1><c:out value="${item.getName()}" /></h1>
                                                    <a href=projectpage?id=<c:out value="${item.getId()}" /> style="width: 140px; margin: auto;">Read More</a>
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
                        </div>		
                    </div>
                    
                    
                    <div id="other-projects" class="tab-pane fade in active">
                        <div id="portfolio" style="background-color:#e9e9e9; padding-top:10px;" >
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
				<!-- ISO section -->
                                    <div class="iso-section">
                                    <div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                                    <div class="iso-box-wrapper col4-iso-box">
                                        <c:forEach items="${otherprojectlist}" var="item">
                                            <div class="iso-box html photoshop hover_text col-lg-4 col-md-4 col-sm-6">
                                            <a href="../resources/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/portfolio-img5.jpg" alt="portfolio img"></a>
                                            <div class="project_description">
               				 	<div class="des">
                                                    <h1><c:out value="${item.getName()}" /></h1>
                                                    <a href=projectpage?id=<c:out value="${item.getId()}" /> style="width: 140px; margin: auto;">Read More</a>
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
                        </div>
                    </div>
		</div>
            </div>
	</div>
    </div>
</section>
    