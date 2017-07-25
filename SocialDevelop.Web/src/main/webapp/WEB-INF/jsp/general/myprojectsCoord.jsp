<%-- 
    Document   : mytasks-proejcts
    Created on : Jul 19, 2017, 2:01:39 AM
    Author     : Tala
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class ="login-wrapper"></div>
<div class="pen-title"></div>

<!-- The Grid -->
<div class="w3-row-padding">
    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1350px;">

        <!-- Right Column -->
        <div class="w3-container w3-card-2 w3-white w3-margin-bottom w3-margin-left w3-margin-top w3-margin-right">
            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-code fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>My Projects </h2>
            <div class="w3-container w3-margin-left">
                <!--   <h5 class="w3-opacity"><b>Projects & Tasks</b></h5>-->
                <p>
                    <c:forEach items="${myprojectsCoord}" var="item">
                        <a href="projectpage?id=<c:out value="${item.getId()}" />" class="w3-text-teal"> <b>${item.getName()}</b> <br> </a>
                    <table class="table table-hover ">
                        <thead class="w3-text-grey">
                            <tr>

                                <th>Tasks</th>
                                <th>Description</th>
                                <th>Start Date</th>
                                <th>Due Date</th>
                                <th>Status</th>
                                <th>Collaborators</th>
                             <!--   <th>Skills</th>-->
                             <!--   <th>Finished?</th>-->
                                <!-- continue the attributes-->

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${item.getListTasks()}" var="tasks">
                                <tr>  <td> 

                                        <a href=taskPage?idTask=<c:out value="${tasks.getIdTask()}"/>> ${tasks.getTaskName()}</a><br>

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

                                    <td>
                                        ${tasks.getCollaboratorsNum()}<br>
                                    </td>
                                    <td>
                                     <!--   <a href="projectpage?id=<c:out value="${item.getId()}" />" class="w3-text-teal">-->
                                            ${tasks.getSkill()}<br></a>
                                    </td>
                                    <td><c:if test="${tasks.getStatus()=='Open'}">
                                            <form action="${contextPath}/app/alldevelopersfortask" method="POST">
                                                <input type="hidden" name="coordinatorEmail" value=${item.getCoordinator().getEmail()} required=""/>
                                                <button type="submit" class="btn btn-add-new-task" />Finished</button>
                                            </form>
                                        </c:if>
                                        <c:if test="${tasks.getStatus()=='Closed'}">
                                            <form action="${contextPath}/app/alldevelopersfortask" method="POST">
                                                <input type="hidden" name="coordinatorEmail" value=${item.getCoordinator().getEmail()} required=""/>
                                                <button type="submit" class="btn btn-add-new-task" />Task Closed</button>
                                            </form>
                                        </c:if>
                                    </td>

                                </tr>


                            </tbody>

                        </c:forEach>
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
