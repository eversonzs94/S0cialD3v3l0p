<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 

<div class="pen-title"></div>
<form action="addproject" method="post">
	<div class="container">
		
			<div class="form-group">
     			 <label class="control-label col-sm-2">Project name:</label>
    			 <div class="col-sm-10">
        		 	<input type="name" name="name" class="form-control" placeholder="Enter name">
      			 </div>
   		    </div>
   		    <div class="form-group">
     			<label class="control-label col-sm-2">Project category:</label>
    			<div class="col-sm-10">
        		 	<select class="selectpicker form-control">
        		 		<option>Choose category</option>
  						<option>HTML</option>
						<option>CSS</option>
					    <option>PHP</option>
					</select>
      			</div>
   		    </div>
   		    <div class="form-group">
     			 <label class="control-label col-sm-2">Invite developer:</label>
    			 <div class="col-sm-10">
        		 	<input type="name" class="form-control" placeholder="Invite developer">
      			 </div>
   		    </div>
   		    <div class="form-group">
    			<label class="control-label col-sm-2" for="Textarea">Project description:</label>
   					 <div class="col-sm-10">
    					<textarea class="form-control" id="projectDescription" placeholder="Project description"></textarea>
    				 </div>
  			</div>
  			<div class="form-group">
     			 <label class="control-label col-sm-2">Status:</label>
    			 <div class="col-sm-10">
        		 	<select class="selectpicker form-control">
        		 		<option>Choose status</option>
  						<option>Open</option>
						<option>Precess</option>
					    <option>Closed</option>
					</select>
      			 </div>
   		    </div>
  			
			<!-- Start Task List -->
			<div id="taskselections">
				<div class="input-group-task" id="selectionTask">
				<div class="form-group">
					<label class="control-label col-sm-2">Task list:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" placeholder="Enter name">
						<textarea class="form-control" id="tasktDescription" placeholder="Task description"></textarea>
						<input type="date" class="form-control">
					</div>
				</div>
				</div>
			</div>
			<button class="btn btn-default" type="button">Add new task</button>
			<div class="form-group">
			<hr style="display: none;">
			<label class="control-label col-sm-2">Add skills & level</label>
				<div id="selections">
		  			<div class="input-group" id="selection">
		    			<span class="input-group-addon" style="display: none;"><i class="icon wb-menu" aria-hidden="true"></i></span>
		   					<select class="show-tick" data-plugin="select2" id="select" style="margin-bottom: 15px; margin-top: 5px; margin-left: 15px;">
							      <option>Skills</option>
								  <option value="php">Php</option>
								  <option value="html">Html</option>
								  <option value="css">Css</option>
								  <option value="java">Java</option>
							</select>

		     				<select class="show-tick" data-plugin="select2" id="select">
							      <option>Level</option>
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
				<button class="btn btn-primary" id="add_skill" type="button" style="border-radius: 0px;"> Add more skills</button>
			</div>
			<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default btn-lg btn-block">Submit</button>
      </div>
    </div>
	</div>
</form>
