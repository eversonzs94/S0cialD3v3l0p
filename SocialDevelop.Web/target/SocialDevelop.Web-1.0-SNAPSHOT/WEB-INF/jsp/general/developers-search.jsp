<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 

<div class="pen-title"></div>
<form action="searchdevelopers" method="post">
	<div class="container">
		
                    <div class="form-group">
     			<label class="control-label col-sm-2">Skill1:</label>
                            <div class="col-sm-10">
        		 	<input type="name" name="skill" class="form-control" placeholder="Enter name" >
                            </div>
   		    </div>
   		    
                    <div class="form-group">
    			<label class="control-label col-sm-2" for="Textarea">Level1:</label>
                            <div class="col-sm-10">
    				<input type="number" name="level" min="0" max="10" value="0">
                            </div>
                    </div>
            
                    <div class="form-group">
     			<label class="control-label col-sm-2">Skill2:</label>
                            <div class="col-sm-10">
        		 	<input type="name" name="skill" class="form-control" placeholder="Enter name" >
                            </div>
   		    </div>
   		    
                    <div class="form-group">
    			<label class="control-label col-sm-2" for="Textarea">Level2:</label>
                            <div class="col-sm-10">
    				<input type="number" name="level" min="0" max="10" value="0">
                            </div>
                    </div>
            
                    <div class="form-group">
     			<label class="control-label col-sm-2">Skill3:</label>
                            <div class="col-sm-10">
        		 	<input type="name" name="skill" class="form-control" placeholder="Enter name" >
                            </div>
   		    </div>
   		    
                    <div class="form-group">
    			<label class="control-label col-sm-2" for="Textarea">Level3:</label>
                            <div class="col-sm-10">
    				<input type="number" name="level" min="0" max="10" value="0">
                            </div>
                    </div>
            
                    <div class="form-group">
     			<label class="control-label col-sm-2">Skill4:</label>
                            <div class="col-sm-10">
        		 	<input type="name" name="skill" class="form-control" placeholder="Enter name" >
                            </div>
   		    </div>
   		    
                    <div class="form-group">
    			<label class="control-label col-sm-2" for="Textarea">Level4:</label>
                            <div class="col-sm-10">
                                <input type="number" name="level" min="0" max="10" value="0">                          
                            </div>
                    </div>
            
                    <div class="form-group">
     			<label class="control-label col-sm-2">Skill5:</label>
                            <div class="col-sm-10">
        		 	<input type="name" name="skill" class="form-control" placeholder="Enter name" >
                            </div>
   		    </div>
   		    
                    <div class="form-group">
    			<label class="control-label col-sm-2" for="Textarea">Level5:</label>
                            <div class="col-sm-10">
    				<input type="number" name="level" min="0" max="10" value="0">
                            </div>
                    </div>
  			
  			
			
			
			
			<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default btn-lg btn-block">Search</button>
      </div>
    </div>
	</div>
</form>
