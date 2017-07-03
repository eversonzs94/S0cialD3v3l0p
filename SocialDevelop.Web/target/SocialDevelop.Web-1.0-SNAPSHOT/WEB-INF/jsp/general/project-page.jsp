<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!-- navigation section -->
<section class="navbar navbar-fixed-top custom-navbar" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.html" class="navbar-brand">SocDev</a>
		</div>
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.html" class="smoothScroll">HOME</a></li>
				<li><a href="index.html#work" class="smoothScroll">DEVELOPERS</a></li>
				<li><a href="index.html#portfolio" class="smoothScroll">PROJECTS</a></li>
				<li><a href="login.html" class="smoothScroll">SIGN IN / SIGN UP</a></li>
				<li><a href="about.html" class="smoothScroll">ABOUT</a></li>
				<li><a href="index.html#contact" class="smoothScroll">CONTACT</a></li>
			</ul>
		</div>
	</div>
</section>
<div class="login-wrapper"></div>
 

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
				<div class="container bootstrap snippet">
				    <div class="row">
						<div class="col-md-12">
						<h3 class="text-success" style="color: #00c6d7; text-align: center;">Comments</h3>
<form>
	<div class="column">
  		<div class="form-group">
     		<label class="control-label col-sm-2">Email:</label>
    			<div class="col-sm-3">
        		 	<input type="email" class="form-control" id="emailAddress" placeholder="example@gmail.com">
      			 </div>
   		</div>
  		<div class="form-group">
    		<label class="control-label col-sm-2" for="Textarea">Comment:</label>
   				<div class="col-sm-5">
    				<textarea class="form-control" rows="3" id="projectDescription" placeholder="I think..."></textarea>
    				 	</div>
  				</div>
  		</div>
  	<button type="submit" class="btn btn-default" style="margin-left: 25px; margin-bottom: 30px;">Submit</button>
</form>
						    <div class="blog-comment">
								<ul class="comments">
								<li class="clearfix">
								  <img src="images/profile-image.png" class="avatar" alt="">
								  <div class="post-comments">
								      <p class="meta">Dec 18, 2014 <a href="#">JohnDoe</a> says : <i class="pull-right"><a href="#"><small>Reply</small></a></i></p>
								      <p>
								          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								          Etiam a sapien odio, sit amet
								      </p>
								  </div>
								</li>
								<li class="clearfix">
								  <img src="images/developer1.jpg" class="avatar" alt="">
								  <div class="post-comments">
								      <p class="meta">Dec 19, 2014 <a href="#">JohnDoe</a> says : <i class="pull-right"><a href="#"><small>Reply</small></a></i></p>
								      <p>
								          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								          Etiam a sapien odio, sit amet
								      </p>
								  </div>
								</li>
								</ul>
							</div>
						</div>
					</div>
				</div>				 

			</div>
	   	</div>
	</div>
</section>

