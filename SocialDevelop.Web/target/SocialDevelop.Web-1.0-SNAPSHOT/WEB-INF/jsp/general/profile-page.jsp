<%-- 
    Document   : profile-page
    Created on : Jul 8, 2017, 9:05:56 PM
    Author     : Tala
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div class ="login-wrapper"></div>
<div class="pen-title"></div>

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

    <!-- The Grid -->
    <div class="w3-row-padding">

        <!-- Left Column -->
        <div class="w3-third">

            <div class="w3-white w3-text-grey w3-card-4">
                <div class="w3-display-container">

                    <c:if test="${developer.getGender()=='female'}">
                        <img src="../resources/images/developer2.png" style="width:100%" alt="Avatar">
                    </c:if>
                    <c:if test="${developer.getGender()=='male'}">
                        <img src="../resources/images/developer_1.png" style="width:100%" alt="Avatar">
                    </c:if>
                    <div class="w3-display-bottomleft w3-container w3-text-black">

                    </div>
                    <div class="w3-row-padding">
                        <b><h2> ${developer.getName()} ${developer.getSurname()}</h2></b></div>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Designer</p>
                    <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAddress()}</p>
                    <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getEmail()}</p>
                    <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getPhoneNumber()}</p>
                    <hr>
                    <!--
                                        <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
                                        <p>HTML</p>
                                        <div class="w3-light-grey w3-round-xlarge w3-small">
                                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
                                        </div>
                                        <p>CSS</p>
                                        <div class="w3-light-grey w3-round-xlarge w3-small">
                                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
                                                <div class="w3-center w3-text-white">80%</div>
                                            </div>
                                        </div>
                                        <p>JAVA</p>
                                        <div class="w3-light-grey w3-round-xlarge w3-small">
                                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
                                        </div>
                                        <p>PHP</p>
                                        <div class="w3-light-grey w3-round-xlarge w3-small">
                                            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
                                        </div>
                                        <br>
                    
                                        <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
                                        <p>C#</p>
                                        <div class="w3-light-grey w3-round-xlarge">
                                            <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
                                        </div>-->
                    <br>
                </div>
            </div><br>

            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird">




            <div class="w3-container w3-card-2 w3-white  w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Skills</h2>
                <div class="w3-container">
                    <h5 class="w3-opacity"><b>Skills</b></h5>
                    <p> List of developer's skills</p>        
                    <hr>
                </div>


            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>PROJECT & Tasks </h2>
                <div class="w3-container">
                    <!--   <h5 class="w3-opacity"><b>Projects & Tasks</b></h5>-->
                    <p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Tasks</th>
                                <th>Projects</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Task</td>
                                <td><a href="project-page.html">Project Name</a></td>
                            </tr>
                            <tr>
                                <td>Task</td>
                                <td><a href="project-page.html">${project.getName()}</a></td>
                            </tr>
                            <tr>
                                <td>Task</td>
                                <td><a href="project-page.html">Project Name</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- <button class="w3-button w3-black">View</button>-->
                    </p>
                    <hr>
                </div>


            </div>

            <!--   <div class="w3-container w3-card-2 w3-white">
                   <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>PROPOSAL PANEL</h2>
                   <div class="w3-container">
                       <h5 class="w3-opacity"><b>Collaboration Proposal</b></h5>
                       <p>
                           List of collaboration proposal</p>
    
                       <div class="w3-bar w3-right">
                           <button class="w3-button w3-black">Accept</button>
                           <button class="w3-button w3-teal">Decline</button>
                           <button class="w3-button w3-black">See</button>
                       </div>
    
                       <hr>
                   </div>
    
    
               </div>-->

            <!-- End Right Column -->
        </div>
    </div>
</div>