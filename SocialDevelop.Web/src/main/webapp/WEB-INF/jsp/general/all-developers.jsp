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
        <div class="input-group" id="adv-search">
            <input type="text" class="form-control" placeholder="Search for Developer" />
            <div class="input-group-btn">
                <div class="btn-group" role="group">
                    <div class="dropdown dropdown-lg">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                        <div class="dropdown-menu dropdown-menu-right" role="menu">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">

                                </div>
                                <div class="form-group">
                                    <div id="visibleskills">
                                        <label for="filter">Filter by skills</label>
                                        <select class="form-control">
                                            <option value="all" selected>All</option>
                                            <option value="html">Html</option>
                                            <option value="css">Css</option>
                                            <option value="js">Javascript</option>
                                            <option value="java">Java</option>
                                            <option value="Csharp">C#</option>
                                        </select>
                                    </div>
                                </div>
                                <input id="btnvisible" class="btn btn-default" type="button" value="Add Level" />
                                <div id="hidedskills">
                                    <div class="form-group">
                                        <label for="filter">Filter by level</label>
                                        <select class="form-control">
                                            <option value="all" selected>All</option>
                                            <option value="one">1</option>
                                            <option value="two">2</option>
                                            <option value="three">3</option>
                                            <option value="four">4</option>
                                            <option value="five">5</option>
                                            <option value="six">6</option>
                                            <option value="seven">7</option>
                                            <option value="eight">8</option>
                                            <option value="nine">9</option>
                                            <option value="ten">10</option>
                                        </select>
                                    </div>
                                </div>
                                <input id="btnhide" class="btn btn-default" type="button" value="Delete Level" />

                                <div class="form-group">

                                </div>
                                <button type="submit" class="btn btn-primary"><img src="../resources/images/account-search.png"></button>
                            </form>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary"><img src="../resources/images/account-search.png"></button>
                    </section>
                    <section id="pricing">
                        <div class="container">
                            <div class="row">

                                <div class="col-md-12 col-sm-12 text-center">
                                    <div class="section-title">
                                        <strong>Developers</strong>
                                        <hr style="margin-bottom: 30px;">
                                    </div>
                                </div>

                                <!-- If you want to add another Developers add right here !!!! -->

                                <!-- Developer Description Start -->	
                                <div class="animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceIn;">
                                    <c:forEach items="${developerlist}" var="item">
                                        <div class="col-sm-4">
                                            <div class="developer_description">
                                                <div class="head_developer_description">
                                                    <div class="developer_image">

                                                        <c:if test="${item.getGender()=='female'}">
                                                            <img src="../resources/images/developer2.png" style="width:100%" alt="Avatar">
                                                        </c:if>
                                                        <c:if test="${item.getGender()=='male'}">
                                                            <img src="../resources/images/developer_1.png" style="width:100%" alt="Avatar">
                                                        </c:if>

                                                    </div>
                                                    <div class="developer_column">

                                                        <div class="developer_from ">
                                                            <p> Name: <b><em>${item.getName()}</em> <em>${item.getSurname()}</em></b></p>                                                         
                                                            <p> Birthdate:<em> ${item.getBirthDate()}</em></p>
                                                            <p> Address:<em>${item.getAddress()}</em></p>
                                                        </div>
                                                        <div class="nickname"><span><p>Username: ${item.getNickname()}</p></span></div>
                                                        <!--<div class="head_developer_description">
                                                                <img src="../resources/images/star.png" class="developer_star">
                                                                <img src="../resources/images/star.png" class="developer_star">
                                                                <img src="../resources/images/star.png" class="developer_star">
                                                                <img src="../resources/images/star.png" class="developer_star">
                                                                <img src="../resources/images/star.png" class="developer_star">
                                                        </div>-->
                                                    </div>
                                                </div>
                                                <div class="developer_short_description"><span>${item.getAboutMe()}</span>
                                                </div>

                                                <div class="hireme"><a href=profilepage?nickname=<c:out value="${item.getNickname()}" /> > View Profile</a></div>
                                            </div>
                                        </div>
                                    </c:forEach>  
                                    <!-- Developer Description End -->


                                </div>

                            </div>

                    </section>