<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="login-wrapper"></div>

<div class="pen-title"></div>

<!-- Form Module-->
<div class="module form-module" style="max-width: 320px;">
    <a href=gotologinpage>
        <div class="toggle"><i class="fa fa-times"></i>
            <div class="tooltip">Click Me</div>
        </div>
    </a>

    <div class="form">
        <h2>Register</h2>
        <form action="${contextPath}/app/register" method="POST" enctype="multipart/form-data">
            <input type="text" name="name" placeholder="Name *" required/>
            <input type="text" name="surname" placeholder="Surname *" required/>
            <input type="text" name="nickname" placeholder="Username *" required/>
            <input type="password" name="password" placeholder="Password *" required/>
            <input type="date" name="birthDate *" required/>
            <input type="text" name="address" placeholder="Address"/>
            <!-- <input type="text" name="country" placeholder="Country" required/>
             <input type="text" name="city" placeholder="City" required/>-->
            <input type="email" name="email" placeholder="Email Address *" required/>
            <input type="tel" name="phoneNumber" placeholder="Phone Number" />
            <select name="gender" >
                <option>Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
            <textarea placeholder="About Me" name="aboutMe" rows="5" maxlength="250" style="width: 100%; border: 1px solid #d9d9d9;"></textarea>
            <p>Upload Curriculum *</p>
            <input type="file" name="curriculum" accept="curriculum/*" />
            <!--<p>Upload Image</p>
            <input type="file" name="profilePhoto" accept="image/*"  /> -->
            <button type="submit">Next</button>
        </form>
    </div>
</div>
