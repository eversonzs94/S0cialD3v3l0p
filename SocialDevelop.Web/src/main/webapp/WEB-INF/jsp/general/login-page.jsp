<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="login-wrapper"></div>

<div class="pen-title"></div>

<!-- Form Module-->
<div class="module form-module" style="max-width: 320px;">
    <div class="toggle"><i class="fa fa-times fa-pencil"></i>
        <div class="tooltip">Click Me</div>
    </div>
    <div class="form">
        <h2>Login to your account</h2>
        <form action="login" method="POST">
            <input type="text" name="name" placeholder="Username"/>
            <input type="password" name="password" placeholder="Password"/>
            <button type="submit">Login</button>
            <br><br>
            <c:if test="${error!=null}">
                <p style="color: red">${error}</p>
            </c:if>
        </form>
    </div>
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
            <input type="file" name="curriculum *" accept="curriculum/*" required/>
            <!--<p>Upload Image</p>
            <input type="file" name="profilePhoto" accept="image/*"  /> -->
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
        <button>Register</button>
    </div>
    <div class="cta"><a href="recovery-page.html">Forgot your password?</a></div>
</div>
