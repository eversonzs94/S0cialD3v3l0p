
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div class ="login-wrapper"></div>
<div class="pen-title"></div>

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

    <!-- The Grid -->
    <div class="w3-row-padding">

        <!-- Right Column -->
        <div class="w3-twothird" style="margin-left: 230px">

            <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
                <h2 class="w3-text-grey w3-padding-16"><b>Search For Developers </b></h2>
                <form action="searchdevelopers" method="post">

                <div class="w3-container">
                    <!--   <h5 class="w3-opacity"><b>Projects & Tasks</b></h5>-->
                    <p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Skill</th>
                                <th>Level</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="name" name="skill" class="form-control" placeholder="Enter name" ></td>
                                <td><input type="number" name="level" min="0" max="10" value="0"></textarea></td>
                            </tr>
                            <tr>
                                <td><input type="name" name="skill" class="form-control" placeholder="Enter name" ></td>
                                <td><input type="number" name="level" min="0" max="10" value="0"></textarea></td>
                            </tr>
                            <tr>
                                <td><input type="name" name="skill" class="form-control" placeholder="Enter name" ></td>
                                <td><input type="number" name="level" min="0" max="10" value="0"></textarea></td>
                            </tr>
                            <tr>
                                <td><input type="name" name="skill" class="form-control" placeholder="Enter name" ></td>
                                <td><input type="number" name="level" min="0" max="10" value="0"></textarea></td>
                            </tr>
                            <tr>
                                <td><input type="name" name="skill" class="form-control" placeholder="Enter name" ></td>
                                <td><input type="number" name="level" min="0" max="10" value="0"></textarea></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- <button class="w3-button w3-black">View</button>-->
                    </p>
                </div>
                <div class="form-group">        
                    <button type="submit" class="btn-info" style="margin-left: 82%">Search</button>
                </div>
               </form>
            </div>

        </div>
    </div>
</div>