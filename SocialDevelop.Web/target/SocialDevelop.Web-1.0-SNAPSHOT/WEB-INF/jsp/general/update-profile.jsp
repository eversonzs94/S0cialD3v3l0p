<%-- 
    Document   : update-profile
    Created on : Jul 15, 2017, 1:59:56 PM
    Author     : Tala
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="login-wrapper"></div>

<div class="pen-title"></div>

<div class="form">
    <h2>Update You Form</h2>
    <form action="${contextPath}/app/updateMyProfile" method="POST">
        <input type="text" name="name" placeholder="Name" value="${user.getName()}" required/>
        <input type="text" name="surname" placeholder="Surname" value="${user.getSurname()}" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <input type="date" name="birthDate" value="${user.getBirthDate()}" required/>
        <input type="text" name="address" placeholder="Address" value="${user.getAddress()}" required/>
        <input type="email" name="email" placeholder="Email Address" value="${user.getEmail()}" required/>
        <input type="tel" name="phoneNumber" placeholder="Phone Number" value="${user.getPhoneNumber()}" required/>
        <select name="gender"  required>
            <c:if test="${user.getGender()=='female'}">
                <option value="female">Female</option>
                <option value="male">Male</option>
            </c:if>
            <c:if test="${user.getGender()=='male'}">
                <option value="male">Male</option>
                <option value="female">Female</option>
            </c:if>
        </select>
        <textarea placeholder="About Me" name="aboutMe"  rows="5" maxlength="250" style="width: 100%; border: 1px solid #d9d9d9;">${user.getAboutMe()}</textarea>
        <!-- <p>Upload Curriculum</p>
         <input type="file" name="curriculum" accept="curriculum/*"  />
        -->
        <button type="submit">Next</button>
    </form>
</div>

<div class="form">
    <div id="selections">
        <div class="input-group" id="selection">
            <span class="input-group-addon" style="display: none;">
                <i class="icon wb-menu" aria-hidden="true"></i>
            </span>
            <select class="show-tick" data-plugin="select2" id="select">
                <option>Skills</option>
                <option value="php">Php</option>
                <option value="html">Html</option>
                <option value="css">Css</option>
                <option value="java">Java</option>
            </select>
            <select class="show-tick" data-plugin="select2" id="select">
                <option>Level</option>
                <option value="one">1</option>
                <option value="two">2</option>
                <option value="three">3</option>
                <option value="four">4</option>
                <option value="five">5</option>
                <option value="six">6</option>
                <option value="seven">7</option>
                <option value="eight">8</option>
                <option value="nine">9</option>
                <option value="ten">10</option>
            </select>
        </div>
    </div>
    <button class="btn btn-primary" id="add_skill" type="button" style="border-radius: 0px;"> Add more skills</button>
    <button>Update</button>
</div>
