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
                <p></p>
                <div class="w3-light-grey w3-round-xlarge w3-small">
                  <c:forEach items="${skillsList}" var="item">
                            <tr>
                                <td><c:out value="${item.getSkillName()}, " /></td>
                                 </tr>
                            </c:forEach>
                  <!--  <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>-->
                </div>
                <br>

                

                <br>
            </div>
            <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <!-- Tabs part
        <div id="container">
	    <input id="tab-1" type="radio" name="tab-group" checked="checked" />
	    <label for="tab-1">Tab 1</label>
	    <input id="tab-2" type="radio" name="tab-group" />
	    <label for="tab-2">Tab 2</label>
	    <input id="tab-3" type="radio" name="tab-group" />
	    <label for="tab-3">Tab 3</label>
	    <div id="content">
	        <div id="content-1">
	            <p class="left"><img src="http://ximg.es/160x120" alt="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum sit reprehenderit iusto harum minima. Assumenda, accusamus, perspiciatis inventore tempora qui pariatur quisquam? Deleniti, placeat ea nostrum officiis obcaecati temporibus quod. Ullam, in, adipisci autem at fugit ab tempore enim ratione nesciunt alias corporis vitae quo quod nostrum itaque vero iure?</p>
	            <p class="left last"><img src="http://ximg.es/160x120" alt="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, id blanditiis deserunt in molestiae excepturi incidunt molestias dolor sunt dolore obcaecati non repellat mollitia error placeat est exercitationem sit voluptates iure autem saepe voluptas harum unde perferendis modi provident labore voluptatum. Repudiandae, aspernatur sit harum quod vero quos sequi voluptas!</p>
	        </div>
	        <div id="content-2">
	            <p class="column-left"><img src="http://ximg.es/200x150" alt="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum, est, nisi enim voluptates dicta quibusdam recusandae eveniet provident non at nostrum nesciunt laudantium omnis aliquam debitis magni expedita cumque tempore.</p>
            	<p class="column-right"><img src="http://ximg.es/200x150" alt="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed, molestiae, officia repellendus quasi cumque dolor eius deserunt possimus aliquid neque nam assumenda veniam soluta enim commodi aperiam reprehenderit quia incidunt.</p>
	        </div>
	        <div id="content-3">
	        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis, aperiam, enim odit placeat minus ab vero molestiae ad fugit maiores eaque saepe debitis assumenda ut ipsam eius sit repellendus dolore.</p>
	        	<ul>
	        		<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, in magni illo dolore dicta vero.</li>
	        		<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti, minus, aspernatur voluptatem doloribus labore modi.</li>
	        		<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, exercitationem quia id accusamus beatae sunt? Dolorum mollitia sint debitis delectus.</li>
	        	</ul>
	        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis, accusantium, provident ab quo sed blanditiis perspiciatis distinctio aut voluptatibus cum odio quaerat iure vel dolorum fugit explicabo suscipit tenetur. Sed!</p>
	        </div>
	    </div>
	</div>
        
        -->
                        
        <div class="w3-twothird" id="panel">
            
            <div class=" w3-container w3-card-2 w3-white w3-margin-bottom">
                <a href="mytasks-projects">    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-code fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>My Tasks </h2></a>
                    
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
                {title: "Accept or Reject",
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
            insertTaskDevelopersFromApplicationPanel(data);
            alert("The user: " + data['name'] + " is enrolled in the task.");
        });

        $('#applicationPanel tbody').on('click', '.btnReject', function () {
            var data = table.row($(this).parents('tr')).data();
            updateCollaborationPanel(data, "rejected");
            alert("The user " + data['name'] + " will not work on this task.");
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
    
        function insertTaskDevelopersFromProposalPanel(data) {

        $.ajax(
                {
                    type: "GET",
                    url: "${contextPath}/app/insertTaskDevelopersFromProposalPanel?idTask=" + data.idTask + "&idUser=" + data.idUser,

                    success: function (data) {
                        if (data == "1") {
                            // $("#idTask").val("");
                            alert("The user has been inserted");
                        } else if (data == "0") {
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
            updateCollaborationPanelFromInvitation(data, "canceled");
            alert("The user " + data['name'] + " has been removed from this task.");
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
            updateCollaborationPanel(data, 'accepted');
            insertTaskDevelopersFromProposalPanel(data);
        });

        $('#proposalPanel tbody').on('click', '.btnReject', function () {
            var data = table.row($(this).parents('tr')).data();
            updateCollaborationPanel(data, 'rejected');
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
    
    function updateCollaborationPanel(data, status) {
        $.ajax(
            {
                type: "GET",
                url: "${contextPath}/app/updateCollaborationPanel?idUserSender=" + data.idUser + "&status=" + status+ "&idTask=" + data.idTask,
                success: function (data) {
                    if (data == "1") {
                        alert("Update");
                    } else if (data == "2") {
                        alert("The user has not been updated");
                    } else if (data == "3") {
                        alert("Error with updated");
                    } else if (data == "4") {
                        alert("One or more parameter are nopt valid");
                    }
                }, error: function (a, b, c) {
                    alert("Connection Error");
                }
            });

    }

    function updateCollaborationPanelFromInvitation(data, status) {
        $.ajax(
            {
                type: "GET",
                url: "${contextPath}/app/updateCollaborationPanelFromInvitation?idUserReceiver=" + data.idUser + "&status=" + status+ "&idTask=" + data.idTask,
                success: function (data) {
                    if (data == "1") {
                        alert("Update");
                    } else if (data == "2") {
                        alert("The user has not been updated");
                    } else if (data == "3") {
                        alert("Error with updated");
                    } else if (data == "4") {
                        alert("One or more parameter are nopt valid");
                    }
                }, error: function (a, b, c) {
                    alert("Connection Error");
                }
            });

    }


</script>