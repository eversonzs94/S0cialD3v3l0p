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
                <div class="w3-display-container">
                    <img src="../resources/images/Projects.jpg" style="width:100%" alt="Avatar">
                    <div class="w3-display-bottomleft w3-container w3-text-black">
                    </div>
                    <div class="w3-row-padding">
                        <h2><b>${project.getName()} </b></h2>
                    </div>
                </div>
                <div class="w3-container">
                    <p><i class="fa fa-user-circle-o fa-fw w3-margin-right w3-large w3-text-teal"></i>Coordinator: <a href=profilepage?nickname=<c:out value="${coordinatorProject.getNickname()}"/>>${coordinatorProject.getNickname()}</a></p>
                    <p><i class="fa fa-calendar fa-fw w3-margin-right w3-large w3-text-teal"></i>Publish date: ${project.getDatePublish()}</p>
                    <p><i class="fa fa-check-square-o fa-fw w3-margin-right w3-large w3-text-teal"></i>Status: ${project.getStatus() }</p>
                    <p><i class="fa fa-info-circle fa-fw w3-margin-right w3-large w3-text-teal"></i>${project.getDescription()}</p>
                    <br>
                </div>
            </div><br>
        </div>
        <!-- End Left Column -->

        <!-- Right Column -->
        <div class="w3-twothird">
            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-tasks fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Tasks</h2>
                <form action="${contextPath}/app/goCreateTask" method="POST">
                    <input type="hidden" name="idProject" value=${project.getId()} required=""/>
                    <button type="submit" class="btn btn-add-new-task" />+ Add new task</button>
                </form>
                <div class="w3-container">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Skills</th>
                                <th>Developers</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${taskSkills}" var="item">
                                <tr>
                                    <td><a href=taskPage?idTask=<c:out value="${item.getIdTask()}"/>>${item.getTaskName()}</a></td>
                                    <td>${item.getStatus()}</td>
                                    <td>
                                        <c:forEach items="${item.getSkillList()}" var="skills">
                                            ${skills.getSkillName()}<br>
                                        </c:forEach>    
                                    </td>
                                    <td>
                                        <c:forEach items="${item.getUsersList()}" var="users">
                                            <a href=profilepage?nickname=<c:out value="${users.getNickname()}" />>${users.getNickname()}</a><br>
                                        </c:forEach>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <!-- <button class="w3-button w3-black">View</button>-->

                </div>
            </div>
                                
            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-comments fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Messages</h2>
                <div class="w3-container">
                    
                    <!-- Messages form-->
                    <div class="module form-module form-messages" style="max-width: 70%;">
                        <div class="form-horizontal">
                            <br>
                            <input type="hidden" name="idUser" id="idUser" value="">
                            <input type="hidden" name="idProject" id="idProject" value="">
                            <input type="hidden" name="involved" id="involved" value="">
                            <div class="form-group">
                                <div class="row col-sm-offset-1">
                                    <label for="message" class="col-sm-2 control-label"></label>
                                </div>
                                <br>
                                <div class="write-message-form" >
                                    <textarea rows="4" placeholder="Write a message" class="form-control" id="message" name="message"></textarea>
                                </div>
                            </div>
                            <div class="form-group" style="text-align: center">
                                <div>
                                    <div>
                                        <label class="radio-inline">
                                            <input type="radio" name="privacy" id="privacy" value="public">Public 
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="privacy" id="privacy" value="private">Private
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-5 col-sm-10">
                                    <a href="javascript:void(0)" id="btnPost" name="btnPost" class="btn btn-publish-message">Publish</a>
                                </div>
                                <br>
                            </div>
                            <br>

                        </div>

                    </div>
                    
                    <br>

                    <div class="container">
                        <div class="row">
                            <div>
                                <h3>Comments</h3>
                            </div><!-- /col-sm-12 -->
                        </div><!-- /row -->
                        <div>
                            <img src="${contextPath}/resources/images/progress.gif" id="load"  height="42" width="42">
                        </div>
                        <div class="row" id="message-box">
                            <p>Loading Messages...</p>
                        </div><!-- /row -->
                    </div>

                    <c:if test="${error!=null}">
                        <p style="color: blue">${error}<p>
                    </c:if>

                    <script>
                        $(document).ready(function () {
                            $("#idProject").val(getUrlVars()["id"]);
                            $("#idUser").val(${idUser});
                            isInvolved()
                            setInterval(function () {
                                showMessage();
                            }, 2000);
                        });
                        function getUrlVars() {
                            var vars = {};
                            var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (m, key, value) {
                                vars[key] = value;
                            });
                            return vars;
                        }
                        $("#btnPost").click(function () {
                            if ($("#message").val().trim() == "") {
                                alert("Message is mandatory");
                            } else if (!$("input[name='privacy']:checked").val() == true) {
                                alert("The privacy is mandatory");
                            } else {
                                var pri = $("input[name='privacy']:checked").val();
                                var men = $("#message").val();
                                $.ajax(
                                        {type: "GET",
                                            url: "insertMessage?message=" + men + "&idProject=" + $("#idProject").val() + "&idUser=" + $('#idUser').val() + "&privacy=" + pri,
                                            data: null,
                                            success: function (data) {
                                                if (data == "1") {
                                                    $("#message").val("");
                                                    showMessage();
                                                } else if (data == "2") {
                                                    alert("The message has not been inserted");
                                                } else if (data == "3") {
                                                    alert("Error with insertion");
                                                } else if (data == "4") {
                                                    alert("One or more parameter are nopt valid");
                                                }
                                            }, error: function (a, b, c) {
                                                alert("Something was wrong, if you are not loggin you can not leave a message.");
                                            }
                                        }
                                );
                            }
                        });
                        function showMessage() {
                            $.ajax(
                                    {type: 'GET',
                                        url: "getMessages?idUser=" + $('#idUser').val() + "&idProject=" + $("#idProject").val(),
                                        data: null,
                                        success: function (data) {
                                            $("#message-box").html("");
                                            $("#load").hide();
                                            if (data.length == 0) {
                                                $("#message-box").html("<p style='color: blue;'>There is not messages for this project...<p>");
                                            } else {
                                                for (var i = 0; i < data.length; i++) {
                                                    if ($("#involved").val() == "involved") {
                                                        $("#message-box").append("<div class='col-sm-1 col-sm-offset-2'><div class='thumbnail'><img class='img-responsive user-photo' src='https://ssl.gstatic.com/accounts/ui/avatar_2x.png'></div></div>\n\
                                                                            <div class='col-sm-7'><div class='panel panel-default'><div class='panel-heading'><strong>" + data[i].name + " " + data[i].surname + "</strong> \n\
                                                                            <span class='text-muted' style='display: block; float: right;'>" + data[i].dateMessage + "</span><div class='panel-body'>" + data[i].message + "</div></div></div>");
                                                    } else {
                                                        if (data[i].privacity == "public") {
                                                            $("#message-box").append("<div class='col-sm-1 col-sm-offset-2'><div class='thumbnail'><img class='img-responsive user-photo' src='https://ssl.gstatic.com/accounts/ui/avatar_2x.png'></div></div>\n\
                                                                            <div class='col-sm-7'><div class='panel panel-default'><div class='panel-heading'><strong>" + data[i].name + " " + data[i].surname + "</strong> \n\
                                                                            <span class='text-muted' style='display: block; float: right;'>" + data[i].dateMessage + "</span><div class='panel-body'>" + data[i].message + "</div></div></div>");
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                            )
                        }
                        function isInvolved() {
                            $.ajax(
                                    {
                                        type: 'GET',
                                        url: "isInvolvingInProject?idProject=" + $('#idProject').val() + "&idUser=" + $('#idUser').val(),
                                        data: null,
                                        success: function (data) {
                                            if (data > 0) {
                                                $("#involved").val("involved")
                                            } else if (data == -1) {
                                                $("#involved").val("error")
                                            } else {
                                                $("#involved").val("no")
                                            }
                                        }
                                    }
                            )
                        }
                    </script>
                    
                </div>
            </div>
                                
        </div>
        <!-- End Right Column -->
    </div>
</div>