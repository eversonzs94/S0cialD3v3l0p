<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="login-wrapper"></div>

<div class="pen-title"></div>
<div class="module form-layout">
    <div></div>
    <div class="form">
        <form action="addproject" method="post">
            <h2>Create a new Project: </h2><br>
            <label>Project name*:</label>
            <input type="name" name="name" placeholder="Enter name" required>
            <label for="Textarea">Project description:</label>
            <textarea name="description" class="form-control" id="projectDescription" placeholder="Project description"></textarea>
            <br><br>

            <button type="submit" class="btn btn-default btn-lg btn-block">Submit</button><br><br>
        </form>
    </div>
</div>
        
