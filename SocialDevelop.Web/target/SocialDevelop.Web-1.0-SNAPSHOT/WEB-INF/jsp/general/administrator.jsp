<%-- 
    Document   : administrator
    Created on : 07-17-2017, 11:03:29 PM
    Author     : wales
--%>

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
                    <img src="../resources/images/developer1.png" style="width:100%" alt="Avatar">
                    <div class="w3-display-bottomleft w3-container w3-text-black"></div>
                    <h2>Jane Doe</h2>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Designer</p>
                    <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>London, UK</p>
                    <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>ex@mail.com</p>
                    <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>1224435534</p>
                    <hr>


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
        <div class="w3-twothird" id="panel">
            <!-- INSERT TYPE-->
            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>CREATE TYPE</h2>
                <div class="w3-container">

                    <table id="offerPanel" class="table table-bordred table-striped" width="100%"></table>
                    <!-- Create Type form -->
                    <div></div>
                    <div class="form">
                        <form action="${contextPath}/app/insertType" method="POST">
                            <label>Type name*:</label>
                            <input type="text" name="typeName" placeholder="Enter Type Name" required>
                            <br><br>
                            <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Insert</button><br><br>
                            <c:if test="${messageType!=null}">    
                                <p style="color: blue">${messageType}</p>
                            </c:if>
                        </form>
                    </div>  
                    <hr>
                </div>
            </div>
            <!--INSERT SKILL-->          
            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>CREATE SKILL</h2>
                <div class="w3-container">

                    <table id="applicationPanel" class="table table-bordred table-striped"></table>           

                    <form class="w3-container" action="${contextPath}/app/insertSkill" method="POST">
                        <div class="w3-section">
                            <label><b>Select type:</b></label><br>
                            <c:forEach items="${typesList}" var="item">
                                <input type="checkbox" name="idType" value="${item.getIdType()}">  ${item.getTypeName()}<br>
                            </c:forEach>
                            <BR>
                            <label><b>Skill Father Name:</b></label>
                            <select name="idSkillFather">
                                <option value="0">Select a father</option>
                                <c:forEach items="${skillsList}" var="item">
                                    <option value="${item.getIdSkill()}" >${item.getSkillName()}</option>
                                </c:forEach>
                            </select><br>
                            <label><b>Skill Name:</b></label>
                            <input class="w3-input w3-border" type="text" placeholder="Enter Skill Name" name="skillName" required>
                            <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Insert</button>
                        </div>
                        <c:if test="${messageSkill!=null}">    
                            <p style="color: blue">${messageSkill}</p>
                        </c:if>
                    </form>             

                    <hr>
                </div>
            </div>
            <!--end-->



            <!-- End Page Container -->
        </div>
    </div>
</div>