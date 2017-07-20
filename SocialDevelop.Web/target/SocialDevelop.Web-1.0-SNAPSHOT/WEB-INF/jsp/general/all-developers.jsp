<%-- 
    Document   : all-developers
    Created on : Jul 3, 2017, 3:52:08 PM
    Author     : Tala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<section id="team">
    <div class="col-md-12" style="margin-top: 90px;">
        <!-- <div class="input-group" id="adv-search">-->
        <!--   <input type="text" class="form-control" placeholder="Search for Developer" />-->
        <!--  <div class="input-group-btn">
              <div class="btn-group" role="group">
        <!--<button type="submit" class="btn btn-primary"><img src="../resources/images/account-search.png"></button>-->
</section>
<section id="pricing">
    <div class="container">
        <div class="row">

            <div class="col-md-12 col-sm-12 text-center">
                <div class="section-title">
                    <strong>Developers</strong>
                    <div><a href="gotosearchdeveloperspage" class="fa fa-search w3-padding-16"> Looking for a developer with a certain skill?</a></div>
                    <!--     <hr style="margin-bottom: 30px;">-->

                </div>
            </div>

            <!-- If you want to add another Developers add right here !!!! -->

            <!-- Developer Description Start -->	
            <div class="animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceIn;">
                <c:forEach items="${developerlist}" var="item">
                    <div class="col-sm-4">
                        <div class="developer_description">
                            <div class="head_developer_description">


                                <div class="developer_image pull-left w3-large">

                                    <c:if test="${item.getGender()=='female'}">
                                        <img src="../resources/images/developer2.png" style="width:100%" alt="Avatar">
                                    </c:if>
                                    <c:if test="${item.getGender()=='male'}">
                                        <img src="../resources/images/developer_1.png" style="width:100%" alt="Avatar">
                                    </c:if>

                                </div>
                                <div class="developer_column">

                                    <div class="developer_from">
                                        <p class="pull-left justify" >Name: <b><em> ${item.getName()}</em> <em> ${item.getSurname()}</em></b></p>  <br>                                                       
                                        <p class="pull-left justify">Birthdate:<em> ${item.getBirthDate()}</em></p><br>
                                        <p class="pull-left justify">Address:<em> ${item.getAddress()}</em></p> <br>
                                    </div>
                                    <div class="nickname"><span><p class="pull-left justify ">Username: ${item.getNickname()}</p></span></div>
                                    <!--<div class="head_developer_description">
                                            <img src="../resources/images/star.png" class="developer_star">
                                            <img src="../resources/images/star.png" class="developer_star">
                                            <img src="../resources/images/star.png" class="developer_star">
                                            <img src="../resources/images/star.png" class="developer_star">
                                            <img src="../resources/images/star.png" class="developer_star">
                                    </div>-->
                                </div>
                            </div>
                        <!--    <div class="developer_short_description "><span class="pull-left w3-margin-left">${item.getAboutMe()}</span>
                            </div>-->

                            <div class="hireme"><a href=profilepage?nickname=<c:out value="${item.getNickname()}" /> > View Profile</a></div>
                        </div>
                    </div>
                </c:forEach>  
                <!-- Developer Description End -->


            </div>

        </div>

</section>