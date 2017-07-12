<%-- 
    Document   : message
    Created on : 06-29-2017, 04:46:40 PM
    Author     : YoselineGuevara
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="login-wrapper"></div>

<div class="pen-title"></div>
<!-- Form Module-->
<div class="module form-module form-messages">
    <div class="toggle"><i class="fa fa-times fa-pencil"></i>
        <td>${message}</td>
    </div>
    <br>


    <div class="form-horizontal">
        <br>
        <input type="hidden" name="idUser" id="idUser" value="">
        <input type="hidden" name="idProject" id="idProject" value="">
        <input type="hidden" name="involved" id="involved" value="">
        <div class="form-group">
            <div class="row col-sm-offset-1">
                <label for="message" class="col-sm-2 control-label">Message: ${hola}</label>
            </div>
            <br>
            <div class="col-sm-12 col-sm-offset-1 ">
                <div class="row">
                    <textarea rows="4" placeholder="Write a messager" id="message" name="message"></textarea>
                </div>
            </div>
        </div>
        <div class="form-group" style="text-align: center">
            <div class="col-sm-12">
                <div class="row">
                    <label class="radio-inline">
                        <input type="radio" name="privacy" id="privacy" value="public">public
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="privacy" id="privacy" value="private">private
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
    <div id="" style="text-align: center">
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
            $("#idProject").val(getUrlVars()["idProject"]);
            $("#idUser").val(getUrlVars()["idUser"]);
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