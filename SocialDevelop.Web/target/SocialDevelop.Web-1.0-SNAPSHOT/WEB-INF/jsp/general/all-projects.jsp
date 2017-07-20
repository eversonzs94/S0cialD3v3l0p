<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<section id="user-panel" style="display: <c:out value="${showall}"/>;">
    <div >
        
	<div class="row">
            <div class="section-title" style="margin-top: 100px; margin-left: 43%" >
                      			<strong>Projects</strong>
                                    
				</div>
                
            <div class="col-md-12 col-sm-12">
                
                                <section id="team" >
    <form action="searchproject" method="post">
	<div class="col-md-12">
            <div class="input-group" id="adv-search" style="margin-bottom: 30px">
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
                
                <ul class="nav nav-tabs bold">
                <div style="margin-right: 4%; float: right; margin-bottom: 10px;" >
                    <a href="gotoaddproject"> <button type="button" style="display: <c:out value="${displaySession}"/>;" class="btn btn-primary" >Add New Project</button></a>	
                </div>
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
                    
		</div>
            </div>
	</div>
    </div>
</section>
    





                                
<section id="user-panel" style="display: <c:out value="${showparts}"/>;">
    <div >
        
	<div class="row">
            <div class="section-title" style="margin-top: 100px; margin-left: 43%" >
                      			<strong>Projects</strong>
                                    
				</div>
                
            <div class="col-md-12 col-sm-12">
                
                                <section id="team" >
    <form action="searchproject" method="post">
	<div class="col-md-12">
            <div class="input-group" id="adv-search" style="margin-bottom: 30px">
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
                
                <ul class="nav nav-tabs bold">
                    <li class="active"><a data-toggle="tab" href="#my-projects">My Projects</a></li>
                    <li><a data-toggle="tab" href="#other-projects">Other Projects</a></li>
                    <div style="margin-right: 4%; float: right;">
                <a href="gotoaddproject"> <button type="button" style="display: <c:out value="${displaySession}"/>;" class="btn btn-primary" >Add New Project</button></a>	
                </div>
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
    