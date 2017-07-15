<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!-- navigation section -->


<div class="pen-title"></div>
<!-- Form Module-->
<section id="team">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="profile-header">
                    <div class="column">
                        <h1><c:out value="${project.getName()}"/></h1>
                        <span style="text-align: center; font-style: italic;">Coordinator Name</span>
                    </div>
                </div>
                <div class="col-sm-12" style="border:2px solid grey;box-shadow: 1px 1px 3px #888888; margin-top: 35px;">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                </div>
                <a href="edit-project.html">Edit project>></a>
                <ul class="nav nav-tabs bold">
                    <li class="active"><a data-toggle="tab" href="#task-list">Task List</a></li>
                    <li><a data-toggle="tab" href="#task-description">Task Description</a></li>
                    <li><a data-toggle="tab" href="#task-date">Task Date</a></li>
                    <li><a data-toggle="tab" href="#task-skill">Skill/Level</a></li>
                </ul>

                <div class="tab-content">
                    <div id="task-list" class="tab-pane fade in active">
                        <h3>Invited developers</h3>
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Task List</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Task name 1</td>
                                </tr>
                                <tr>
                                    <td>Task name 2</td>
                                </tr>
                                <tr>
                                    <td>Task name 3</td>
                                </tr>
                                <tr>
                                    <td>Task name 4</td>
                                </tr>
                                <tr>
                                    <td>Task name 5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="task-description" class="tab-pane fade">
                        <h3>App Coordinator</h3>
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Task Description</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Task DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask Descr</td>
                                </tr>
                                <tr>
                                    <td>Task DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask Descr</td>
                                </tr>
                                <tr>
                                    <td>Task DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask Descr</td>
                                </tr>
                                <tr>
                                    <td>Task DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask Descr</td>
                                </tr>
                                <tr>
                                    <td>Task DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask DescriptionTask Descr</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="task-date" class="tab-pane fade">
                        <h3>Developer proposal</h3>
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Task Date</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Date 1</td>
                                </tr>
                                <tr>
                                    <td>Date 2</td>
                                </tr>
                                <tr>
                                    <td>Date 3</td>
                                </tr>
                                <tr>
                                    <td>Date 4</td>
                                </tr>
                                <tr>
                                    <td>Date 5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="task-skill" class="tab-pane fade">
                        <h3>Offers developer</h3>
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Skill</th>
                            <th>Level</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Skill</td>
                                    <td>Level</td>
                                </tr>
                                <tr>
                                    <td>Skill</td>
                                    <td>Level</td>
                                </tr>
                                <tr>
                                    <td>Skill</td>
                                    <td>Level</td>
                                </tr>
                                <tr>
                                    <td>Skill</td>
                                    <td>Level</td>
                                </tr>
                                <tr>
                                    <td>Skill</td>
                                    <td>Level</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Form Module-->
                <div class="module form-module form-messages">
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
                            <div class="col-sm-12 col-sm-offset-1 ">
                                <div class="row">
                                    <textarea rows="4" placeholder="Write a message" id="message" name="message"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <div class="col-sm-16">
                                <div class="row">
                                    <label class="radio-inline">
                                        <input type="radio" name="privacy" id="privacy" value="public"> public
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="privacy" id="privacy" value="private"> private
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-5 col-sm-10">
                                <a href="javascript:void(0)" id="btnPost" name="btnPost" class="btn btn-lg btn-default">Post</a>
                            </div>
                            <br>
                        </div>
                        <br>

                    </div>

                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3>Comments</h3>
                        </div><!-- /col-sm-12 -->
                    </div><!-- /row -->
                    <div style="text-align: center">
                        <img src="${contextPath}/resources/images/progress.gif" id="load"  height="42" width="42">
                    </div>
                    <div class="row" id="message-box">
                        <p align="center">Loading Messages...</p>
                    </div><!-- /row -->
                </div>

                <c:if test="${error!=null}">    
                    <p style="color: red">${error}<p>
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
                                                alert("Connection Error");
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
                                                $("#message-box").html("<p align='center' style='color: red;'>There is not any messages for this project...<p>");
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
</section>

