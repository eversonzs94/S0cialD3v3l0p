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
                <div class="w3-display-container" style="text-align: center;">
                    <div style="background: #1dc6ce;">
                        <img src="../resources/images/taskImage.png" style="width:80%;" alt="Avatar">
                    </div>
                    <div class="w3-display-bottomleft w3-container w3-text-black">
                    </div>
                    <div class="w3-row-padding">
                        <h2><b>${task.getTaskName()} </b></h2>
                    </div>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-code-fork fa-fw w3-margin-right w3-large w3-text-teal"></i>Task of project: <a href=projectpage?id=<c:out value="${projectInfo.getId()}" />>${projectInfo.getName()}</a></p>
                    <br>
                </div>
            </div><br>
        </div>
        <!-- End Left Column -->

        <!-- Right Column -->
        <div class="w3-twothird">
            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-clipboard fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Task Information</h2>
                <div class="w3-container">
                    
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td><p class="fa fa-code fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Name</b></td>
                            <td>${task.getTaskName()}</td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-info fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Description</b></td>
                            <td>${task.getDescription()}</td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-check fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Status</b></td>
                            <td>${task.getStatus()}</td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-users fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Collaborators</b></td>
                            <td>
                                <c:forEach items="${task.getUsersList()}" var="users">
                                    <a href=profilepage?nickname=<c:out value="${users.getNickname()}" />>${users.getNickname()}</a><br>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-file-code-o  fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Type</b></td>
                            <td>${task.getType().getTypeName()}</td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-tasks fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Required Skills</b></td>
                            <td>
                                <c:forEach items="${task.getSkillList()}" var="skills">
                                    ${skills.getSkillName()} -> level: ${skills.getLevel()}<br>
                                </c:forEach> 
                            </td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-calendar-o fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Start Date</b></td>
                            <td>${task.getStartDate()}</td>
                        </tr>
                        <tr>
                            <td><p class="fa fa-calendar-o fa-fw w3-margin-right w3-large w3-text-teal"></p><b>Due Date</b></td>
                            <td>${task.getDueDate()}</td>
                        </tr>
                    </tbody>
                </table>

                </div>
            </div>      
        </div>
        <!-- End Right Column -->
    </div>
</div>