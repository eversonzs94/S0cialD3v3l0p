<%-- 
    Document   : panelCoodinator
    Created on : 07-13-2017, 04:48:47 PM
    Author     : YoselineGuevara
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                    <c:if test="${developer.getGender()=='female'}">
                        <img src="../resources/images/developer2.png" style="width:100%" alt="Avatar">
                    </c:if>
                    <c:if test="${developer.getGender()=='male'}">
                        <img src="../resources/images/developer_1.png" style="width:100%" alt="Avatar">
                    </c:if>


                    <div class="w3-display-bottomleft w3-container w3-text-black"></div>
                    <div class="w3-row-padding w3-margin-bottom">
                        <h2> ${developer.getName()} ${developer.getSurname()}</h2>
                    </div>
                    <div class="w3-container">
                        <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAddress()}</p>
                        <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getEmail()}</p>
                        <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getBirthDate()}</p>
                        <p><i class="fa fa-genderless fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getGender()}</p>
                        <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getPhoneNumber()}</p>
                        <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${developer.getAboutMe()}</p>
                        <p><i class="fa fa-file fa-fw w3-margin-right w3-large w3-text-teal"></i><a href="../resources/curriculums/${developer.getCurriculum()}" download>${developer.getCurriculum()}</p></a>
                        <p><i class="fa fa-gear fa-fw w3-margin-right w3-large w3-text-teal"></i><a href="goToUpdate">Update Your Profile Information</p></a>                    
                        <hr>

                        <br>
                    </div>
                </div><br>

                <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
                <p>Adobe Photoshop</p>
                <div class="w3-light-grey w3-round-xlarge w3-small">
                    <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
                </div>
                <br>

                <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
                <p>English</p>
                <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
                </div>

                <br>
            </div>
            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird" id="panel">
            
            <div class=" w3-container w3-card-2 w3-white w3-margin-bottom">
                <a href="mytasks-projects">    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-code fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>My Tasks & Projects</h2></a>
                    
            </div>
        
            <div class=" w3-container w3-card-2 w3-white w3-margin-bottom">
                <a href="getCoordProjects">    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-code fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>My Projects</h2></a>
                    
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>INVITATION PANEL</h2>
                <div class="w3-container">

                    <table id="invitationPanel" class="table table-bordred table-striped"></table>

                    <hr>
                </div>
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>APPLICATION PANEL</h2>
                <div class="w3-container">

                    <table id="applicationPanel" class="table table-bordred table-striped"></table>
                    <hr>
                </div>
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>PROPOSAL PANEL</h2>
                <div class="w3-container">
                    <div class="form-group">
                        <table id="proposalPanel" class="table table-bordred table-striped"></table>
                    </div>
                    <hr>
                </div>
            </div>

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>OFFERS PANEL</h2>
                <div class="w3-container">

                    <table id="offerPanel" class="table table-bordred table-striped" width="100%"></table>

                    <hr>
                </div>
            </div>


        </div>
        <!-- End Right Column -->
    </div>
    <!-- End Grid -->
</div>


<script>
    //offer panel
    $(document).ready(function () {
        getOfferPanel();
        getApplicationPanel();
        getInvitationPanel();
        getProposalPanel();
    });
    function doDataTable(dataset) {

        var table = $('#offerPanel').DataTable({
            data: dataset,
            columns: [
                {
                    title: "Task",
                    data: 'taskName'
                },
                {
                    title: "Project",
                    data: 'projectName'
                },
                {
                    title: "Coordinator",
                    data: 'name'
                },
                {
                    title: "Status",
                    data: 'status'
                },
                {title: "apply",
                    "targets": -1,
                    "data": null,
                    "defaultContent": "<small><button class='btnAccept w3-button w3-black w3-padding-small' style='width:40%'>Accept</button><button class='btnRejected w3-button w3-teal w3-padding-small' style='width:40%'>Rejected</button></small>"
                }

            ]
        });

        $('#offerPanel tbody').on('click', '.btnAccept', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['name'] + "'s salary is: ");
            insertOfferPanelToApplication($("#idTask").val(), $("#idProject").val(), $("#idUserReciver").val(), $("#idUserSender").val());
            $('.btnAccept').attr("disabled", true);
        });

        $('#offerPanel tbody').on('click', '.btnRejected', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['surname'] + "'s salary is: ");
        });
    }

    function getOfferPanel() {
        $.ajax(
                {
                    url: "${contextPath}/app/offerPanel",

                    success: function (data) {
                        doDataTable(data);
                        console.log(data);
                    },
                    error: function (error) {
                        console.log(error);
                    }
                }
        );
    }


    //APPLICATION PANEL
    function doDataTableApplicationPanel(dataset) {
        var table = $('#applicationPanel').DataTable({
            data: dataset,
            columns: [
                {
                    title: "Task",
                    data: 'taskName'
                },
                {
                    title: "Developer",
                    data: 'name'
                },
                {title: "apply",
                    "targets": -1,
                    "data": null,
                    "defaultContent": "<small><button class='btnAccept w3-button w3-black w3-padding-small' style='width:35%'>✔</button><button class='btnReject w3-button w3-teal w3-padding-small' style='width:35%'>X</button></small>"
                },
                {
                    title: "Application Date",
                    data: 'submissionDate'
                },
                {
                    title: "id",
                    data: "idTask",
                    "sClass": "hide_column"
                }

            ]});
        $('#applicationPanel tbody').on('click', '.btnAccept', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['name'] + "'s salary is: ");
            // $(".btnAccept").attr("disabled", "disabled");
            insertTaskDevelopersFromApplicationPanel(data);
        });

        $('#applicationPanel tbody').on('click', '.btnReject', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['name'] + "'s salary is: ");
        });


    }

    function getApplicationPanel() {
        $.ajax(
                {
                    url: "${contextPath}/app/applicationPanel?",
                    success: function (data) {
                        doDataTableApplicationPanel(data);
                        console.log(data);
                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
    }
    // here offer(developer)--> show in application panel(coordinator) CollaborationDocs-->insert
    function insertOfferPanelToApplication(idTask, idProject, idUserReceiver, idUserSender) {
        $.ajax(
                {
                    type: "GET",
                    url: "${contextPath}/app/insertOfferPanelToApplication?idTask=" + idTask + "&idProject=" + idProject + "&idUserReceiver=" + idUserReceiver + "&idUserSender=" + idUserSender,
                    data: null,
                    success: function (data) {
                        if (data == "1") {
                            // $("#idTask").val("");
                            alert("The user has been inserted");
                        } else if (data == "2") {
                            alert("The user has not been inserted");
                        } else if (data == "3") {
                            alert("Error with insertion");
                        } else if (data == "4") {
                            alert("One or more parameter are nopt valid");
                        }
                    }, error: function (a, b, c) {
                        alert("Connection Error");
                    }
                });

    }

    //insert in tblTaskDeveloper
    function insertTaskDevelopersFromApplicationPanel(data) {

        $.ajax(
                {
                    type: "GET",
                    url: "${contextPath}/app/insertTaskDevelopersFromApplicationPanel?idTask=" + data.idTask + "&idUser=" + data.idUser,

                    success: function (data) {
                        if (data == "1") {
                            // $("#idTask").val("");
                            alert("The user has been inserted");
                        } else if (data == "2") {
                            alert("The user has not been inserted");
                        } else if (data == "3") {
                            alert("Error with insertion");
                        } else if (data == "4") {
                            alert("One or more parameter are nopt valid");
                        }
                    }, error: function (a, b, c) {
                        alert("Connection Error");
                    }
                });
    }

    //INVITATION PANEL
    function getInvitationPanel() {
        $.ajax(
                {
                    url: "${contextPath}/app/invitationPanel",
                    success: function (data) {
                        doDataTableInvitationPanel(data);
                        console.log(data);
                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
    }


    function doDataTableInvitationPanel(dataset) {
        var table = $('#invitationPanel').DataTable({
            data: dataset,
            columns: [
                {
                    title: "Developer",
                    data: 'name'
                },
                {
                    title: "Task",
                    data: 'taskName'
                },
                {
                    title: "Status",
                    data: 'status'
                },
                {
                    title: "Submission date",
                    data: 'submissionDate'
                },
                {
                    title: "Cancel",
                    "targets": -1,
                    "data": null,
                    "defaultContent": "<small><button class='btnCancel w3-button w3-black w3-padding-small'>Cancel</button></small>"
                }

            ]});

        $('#invitationPanel tbody').on('click', '.btnCancel', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['name'] + "'s salary is: ");
        });

    }

    ////PROPOSAL PANEL
    function doDataTableProposalPanel(dataset) {
        var table = $('#proposalPanel').DataTable({
            data: dataset,
            columns: [
                {
                    title: "Project",
                    data: 'projectName'

                },
                {
                    title: "Task",
                    data: 'taskName'
                },
                {
                    title: "Coordinator",
                    data: 'nickname'
                },
                {
                    title: "Submission Date",
                    data: 'submissionDate'
                },
                {
                    title: "Status of invitation",
                    "targets": -1,
                    "data": null,
                    "defaultContent": "<small><button class='btnAccept w3-button w3-black w3-padding-small' style='width:40%'>Accepted</button><button class='btnReject w3-button w3-teal w3-padding-small' style='width:40%'>Rejected</button></small>"

                }
            ]})

        $('#proposalPanel tbody').on('click', '.btnAccept', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['name'] + "'s salary is: ");
        });

        $('#proposalPanel tbody').on('click', '.btnReject', function () {
            var data = table.row($(this).parents('tr')).data();
            alert(data['name'] + "'s salary is: ");
        });
    }

    function getProposalPanel() {
        $.ajax(
                {
                    url: "${contextPath}/app/proposalPanel",
                    success: function (data) {
                        doDataTableProposalPanel(data);
                        console.log(data);
                    },
                    error: function (error) {
                        console.log(error);
                    }
                });
    }


</script>