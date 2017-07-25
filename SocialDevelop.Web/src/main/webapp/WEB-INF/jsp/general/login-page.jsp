<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="login-wrapper"></div>

<div class="pen-title"></div>

<!-- Form Module-->
<div class="module form-module" style="max-width: 320px;">
   <!-- <div class=""><i class="fa fa-male"></i>-->
        <div class="tooltip">Click Me</div>
        <!--<button> Register</button>-->
   <!-- </div>-->
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
        <a href="gotoregistrationpage" class="fa fa-times fa-pencil"> Not registered? Register with us!</a>
    </div>
    
</div>
