<%-- 
    Document   : user-skills
    Created on : 07-18-2017, 06:56:29 PM
    Author     : wales
--%>

<%-- 
    Document   : createTask
    Created on : Jun 30, 2017, 12:18:29 PM
    Author     : evers
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!-- Start Task List -->
<div class="login-wrapper"></div>

<div class="pen-title"></div>

<div class="module form-layout">
    <div></div>
    <div class="form">
        <form action="${contextPath}/app/registerUserSkills" method="POST">
            <h2>Add more skills: </h2><br>
                <label>${user.getName()} ${user.getSurname}</label><input type="text" name="taskName" placeholder="task name" required/>
                
                <label>Skills</label>
                <div class="row" id="selections">
                    <div class="skill-select" id="selection">
                        <div class="col-sm-6 form-group">
                            <select name="idSkills" required>
                                <option disabled="true" selected="true">Select the skill.</option>
                                <c:forEach items="${skillsList}" var="item">
                                <option value="${item.getIdSkill()}">${item.getSkillName()}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-sm-6 form-group">
                            <select class="show-tick" id="select" name="skillLevel" required>
                                <option disabled="true" selected="true">Skill level required.</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                            </select>
                        </div>
                    </div>
                </div>
                <a class="btn btn-primary" id="add_skill" type="button" >Add other skill</a><br>
                
                <button type="submit">Finish Register</button><br><br>
                <c:if test="${message!=null}">
                    <p style="color: red">${message}</p>
                </c:if>
                <c:if test="${startDate!=null}">
                    <p style="color: blue">${startDate}</p>
                </c:if>
            <c:if test="${error!=null}">
                <p style="color: blue">${error}</p>
            </c:if>
        </form>
    </div>
</div>