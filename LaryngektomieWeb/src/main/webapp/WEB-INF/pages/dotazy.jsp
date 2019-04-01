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
    
   
  
<form class="text-center border border-light p-5" action="/dotazy" method="post">

    <p class="h4 mb-4">Napište nám svůj názor</p>

    <!-- Name -->
    <input type="text" name="commentName" class="form-control mb-4" placeholder="Jména" />

    <!-- Email -->
    <input type="email" name="commentEmail" class="form-control mb-4" placeholder="E-mail" />

    

    <!-- Message -->
    <div class="form-group">
        <textarea class="form-control rounded-0" name="commentText" rows="3" placeholder="Váš komentář..." ></textarea>
    </div>


    <!-- Send button -->
    <button class="btn btn-info btn-block" type="submit">Odeslat</button>

</form>

   
   
   
   
   <div class="row justify-content-center align-items-center mt-3">
   <div class="col-md-8 rounded mt-3" style="background-color: #48bdc5;">
   <h2>Vaše komentáře:</h2>
   </div>
   </div>
    <div class="row justify-content-center align-items-center mt-3">
    
   <c:if test="${comments != null}">
  
  
   	 <c:forEach items="${comments}" var = "comment">
   	 
   	 <div class="col-md-8 rounded mt-3" style="background-color: #6fcbd1;">
   	
         <p>Datum: <c:out value="${comment.getDateAsString()}" /><p>
         <p>Jméno: <c:out value="${comment.getUsername()}" /><p>
         <p>Text komentare: <c:out value="${comment.getText()}" /></p>
       </div>  
     
      </c:forEach>
   </c:if>
   
   </div>  
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




      <%@include file="/WEB-INF/includes/footer.jsp"%>
   </div>
   </body>
</html>