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
        <form action="${contextPath}/app/createTask" method="POST">
            <h2>Create a new task for project: ${project.getName()}</h2><br>
                <c:if test="${message!=null}">
                    <p style="color: blue; float: right;">${message}</p><br>
                </c:if>
                <label>Task name</label><input type="text" name="taskName" placeholder="task name" required/>
                <label>Task description</label><textarea name="description" class="form-control" id="tasktDescription" placeholder="Task description" required=""></textarea><br>
                <label>Collaborators number</label><input type="number" name="collaboratorsNum" placeholder="collaborators number" required=""/>

                <!-- //Select type of task -->

                <label>Start date</label><input name="startDate" type="date" />
                <label>Due date</label><input name="dueDate" type="date" />
                
                <label>Type</label> 
                <select name="type" required>
                    <option disabled="true" selected="true" value="">Select the type of this task.</option>
                    <c:forEach items="${typeList}" var="item">
                        <option value="${item.getIdType()}">${item.getTypeName()}</option>
                    </c:forEach>
                </select>
                <input type="hidden" name="idProject" value=${project.getId()} required=""/>
                
                <label>Skills</label>
                <div class="row" id="selections">
                    <div class="skill-select" id="selection">
                        <div class="col-sm-8 form-group">
                            <select class="show-tick" id="select" name="idSkill" required>
                                <option disabled="true" selected="true" value="">Select a skill for this task.</option>
                                <c:forEach items="${skillList}" var="item">
                                    <option value="${item.getIdSkill()}">${item.getSkillName()}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-sm-4 form-group">
                            <select class="show-tick" id="select" name="skillLevel" required>
                                <option disabled="true" selected="true" value="">Skill level required.</option>
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
                
                <button type="submit" />Create task</button><br><br>
                
                <c:if test="${error!=null}">
                    <p style="color: red">${error}</p>
                </c:if>
        </form>
    </div>
</div>