<%-- 
    Document   : panelCoodinator
    Created on : 07-13-2017, 04:48:47 PM
    Author     : YoselineGuevara
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                    
                    
                    <div class="w3-display-bottomleft w3-container w3-text-black"></div>
                    <h2>${developer.getName()} ${developer.getSurname()}</h2>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAboutMe()}</p>
                    <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAddress()}</p>
                    <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getEmail()}</p>
                    <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getPhoneNumber()}</p>
                    <p><i class="fa fa-gear fa-fw w3-margin-right w3-large w3-text-teal"></i><a href="goToUpdate">Update Your Profile Information</p></a>
                    <hr>

                    <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
                    <p>Adobe Photoshop</p>
                    <div class="w3-light-grey w3-round-xlarge w3-small">
                        <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
                    </div>
                    <br>

                    <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
                    <p>English</p>
                    <div class="w3-light-grey w3-round-xlarge">
                        <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
                    </div>

                    <br>
                </div>
            </div><br>

            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird">
            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>OFFERS PANEL</h2>
                <div class="w3-container">

                    <table id="mytable" class="table table-bordred table-striped">
                        <thead>
                        <th>Task</th>
                        <th>Project</th>
                        <th>Coordinator Name</th>
                        <th>Skills</th>
                        <th>Offer Status</th>
                        <th>Apply</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Task 1</td>
                                <td>Project1</td>
                                <td>Name 1</td>
                                <td>Skills</td>
                                <td>Offer Status</td>
                                <td>
                                    <small>
                                        <button class="w3-button w3-black w3-padding-small" style="width:40%">Accepted</button>
                                        <button class="w3-button w3-teal w3-padding-small" style="width:40%">Rejected</button>
                                    </small>
                                </td>

                            </tr>
                        </tbody>
                    </table>
                    <hr>
                </div>
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>APPLICATION PANEL</h2>
                <div class="w3-container">

                    <table id="mytable" class="table table-bordred table-striped">
                        <thead>
                        <th>Task</th>
                        <th>Developer</th>
                        <th>Status</th>
                        <th>Application date</th>

                        </thead>
                        <tbody>
                            <tr>
                                <td>Task 1</td>
                                <td>Developer 1</td>
                                <td>
                                    <button class="w3-button w3-black w3-padding-small" style="width:35%">✔</button>
                                    <button class="w3-button w3-teal w3-padding-small" style="width:35%">X</button>
                                </td>
                                <td>
                                    Date
                                </td>

                            </tr>
                        </tbody>
                    </table>
                    <hr>
                </div>
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>INVITATION PANEL</h2>
                <div class="w3-container">

                    <table id="mytable" class="table table-bordred table-striped">
                        <thead>
                        <th>Developer</th>
                        <th>Task</th>
                        <th>Task Description</th>
                        <th>Status of invite</th>
                        <th>Proposal Submission date</th>
                        <th>

                        </th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Developer 1</td>
                                <td>Task 1</td>
                                <td>Description </td>
                                <td>
                                    <small>
                                        <button class="w3-button w3-black w3-padding-small" style="width:30%">Accept</button>
                                        <button class="w3-button w3-teal w3-padding-small" style="width:35%">Rejected</button>
                                        <button class="w3-button w3-black w3-padding-small" style="width:30%">Waiting</button>
                                    </small> 

                                </td>
                                <td>
                                    Date
                                </td>
                                <td><small><button class="w3-button w3-black w3-padding-small">Cancel</button></small></td>
                            </tr>
                        </tbody>
                    </table>
                    <hr>
                </div>


            </div>

            <div class="w3-container w3-card-2 w3-white">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>PROPOSAL PANEL</h2>
                <div class="w3-container">
                    <div class="form-group">
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Project</th>
                            <th>Task</th>
                            <th>Coordinator Name</th>
                            <th>Proposal Submission date</th>
                            <th>Status of invite</th></thead>
                            <tbody>
                                <tr>
                                    <td>Project 1</td>
                                    <td>Task 1</td>
                                    <td>Name 1</td>
                                    <td>Date</td>
                                    <td>
                                        <small>
                                            <button class="w3-button w3-black w3-padding-small" style="width:40%">Accepted</button>
                                            <button class="w3-button w3-teal w3-padding-small" style="width:40%">Rejected</button>
                                        </small>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <hr>
                </div>


            </div>



            <!-- End Right Column -->
        </div>
        <!-- End Grid -->
    </div>

    <!-- End Page Container -->
</div>