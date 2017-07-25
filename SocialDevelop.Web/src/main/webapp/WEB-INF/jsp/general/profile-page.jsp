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
                    <div class="w3-row-padding w3-margin-bottom">
                        <b><h1> ${developer.getName()} ${developer.getSurname()}</h1></b></div>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAddress()}</p>
                    <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getEmail()}</p>
                    <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getBirthDate()}</p>
                    <p><i class="fa fa-genderless fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getGender()}</p>
                    <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getPhoneNumber()}</p>
                    <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAboutMe()}</p>
                    <p><i class="fa fa-file fa-fw w3-margin-right w3-large w3-text-teal"></i><a href="../resources/curriculumns/${developer.getCurriculum()}" download>${developer.getCurriculum()}</p></a>
                    <hr>

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
                    <!--<p> List of developer's skills</p>   -->
                     <c:forEach items="${skillsList}" var="item">
                            <tr>
                                <td><c:out value="${item.getSkillName()}, " /></td>
                                 </tr>
                            </c:forEach>
                    <hr>
                </div>
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-code fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Projects & Tasks </h2>
                <div class="w3-container">
                    <!--   <h5 class="w3-opacity"><b>Projects & Tasks</b></h5>-->
                    <p>
                        <c:forEach items="${developerProject}" var="item">
                            <a href="projectpage?id=<c:out value="${item.getId()}" />" class="w3-text-teal"> <b>${item.getName()}</b> </a>
                        <table class="table table-hover ">
                            <thead class="w3-text-grey">
                                <tr>

                                    <th>Tasks</th>
                                    <th>Task Description</th>
                                    <th>Task Start Date</th>
                                    <th>Task Due Date</th>
                                    <th>Task Status</th>
                                    <!-- continue the attributes-->

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${item.getListTasks()}" var="tasks">
                                    <tr>  <td> 

                                            ${tasks.getTaskName()}<br>

                                        </td>
                                        <td>

                                            ${tasks.getDescription()}<br>

                                        </td>
                                        <td>

                                            ${tasks.getStartDate()}<br>

                                        </td>
                                        <td>

                                            ${tasks.getDueDate()}<br>

                                        </td>
                                        <td>

                                            ${tasks.getStatus()}<br>

                                        </td>


                                    </tr>

                                </c:forEach>
                            </tbody>


                        </table>
                    </c:forEach>
                    <!-- <button class="w3-button w3-black">View</button>-->
                    </p>
                    <hr>
                </div>


            </div>


            <!--
            <c:forEach items="${developerProject}" var="item">
                <c:forEach items="${item.getListTasks()}" var="tasks">

                    <table class="table table-hover">

                        <thead>
                            <tr>
                                <th>Projects</th>
                                <th>Task</th>
                                <th> Task Description </th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>

                                <td><a href="#">${item.getName()}</a></td>
                            </tr>
                            <tr>

                                <td><a href="#"> ${tasks.getTaskName()}</a></td>
                            </tr>
                            <tr>

                                <td><a href="#"> ${tasks.getDescription()}</a></td>
                            </tr>
                        </tbody>
                </c:forEach>
            </c:forEach>
        </table>


            -->


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