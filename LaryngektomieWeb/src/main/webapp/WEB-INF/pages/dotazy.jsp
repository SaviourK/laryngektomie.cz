<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/includes/head.jsp" %>

</head>
	
   <body>
   <%@include file="/WEB-INF/includes/header.jsp"%>
   <%@include file="/WEB-INF/includes/navbar.jsp"%>
   <div class="container-fluid">
    
   
 <div class="row justify-content-center align-items-center mt-3">
 <div class="col-md-6 rounded mt-3" style="background-color: #48bdc5;">
	<form class="text-center p-5" action="/dotazy" method="post">

    <p class="h4 mb-4">Napište nám svůj názor</p>

    <!-- Name -->
    <input type="text" name="commentName" class="form-control mb-4" placeholder="Jméno" />

    <!-- Email -->
    <input type="email" name="commentEmail" class="form-control mb-4" placeholder="E-mail" />

    

    <!-- Message -->
    <div class="form-group">
        <textarea class="form-control rounded-0" name="commentText" rows="3" placeholder="Váš komentář..." ></textarea>
        
        <p class="mt-1" style="font-weight: bold;">Zbývá <span class="text-counter">1500</span> znaků</p>
    </div>
	
    <!-- Send button -->
    <button class="btn btn-info btn-block" type="submit">Odeslat</button>

	</form>
	</div>
</div>

   
   
   
   
   <div class="row justify-content-center align-items-center mt-3">
   <div class="col-md-6 rounded mt-3 text-center"  style="background-color: #48bdc5;">
   <h2 class="p-4">Vaše komentáře:</h2>
   </div>
   </div>
    
    
   <c:if test="${comments != null}">
  
  
   	 <c:forEach items="${comments}" var = "comment">
   	 <div class="row justify-content-center align-items-center mt-3" >
   	 <div class="col-md-6 rounded mt-3 overflow-auto" style="background-color: #48bdc5;">
   		<div class="bg-info clearfix">
  			<span class="text-left float-left"><c:out value="${comment.getUsername()}" /> </span>
  			<span class="text-right float-right"><c:out value="${comment.getDateAsString()}" /></span>
		</div>
         
         <p><c:out value="${comment.getText()}" /></p>
       </div>  
      </div> 
      </c:forEach>
   </c:if>
   
   
		<div class="row justify-content-center align-items-center mt-3">
		  <div class="col-md-3" style="background-color: #48bdc5;">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Special title treatment</h5>
		        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
		        <a href="#" class="btn btn-primary">Go somewhere</a>
		      </div>
		    </div>
		  </div>
		  <div class="col-md-3" style="background-color: #5bc4cb;">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Special title treatment</h5>
		        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
		        <a href="#" class="btn btn-primary">Go somewhere</a>
		      </div>
		    </div>
		  </div>
		  <div class="col-md-3" style="background-color: #6fcbd1;">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Special title treatment</h5>
		        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
		        <a href="#" class="btn btn-primary">Go somewhere</a>
		      </div>
		    </div>
		  </div>
		</div>


	<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  
  <script type="text/javascript">
		  var maxLength = 1500;
		  $('textarea').keyup(function() {
		    var textlen = maxLength - $(this).val().length;
		    $('.text-counter').text(textlen);
		  });
		</script>

      <%@include file="/WEB-INF/includes/footer.jsp"%>
   </div>
   </body>
</html>