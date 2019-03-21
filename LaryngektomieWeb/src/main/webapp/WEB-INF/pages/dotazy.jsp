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
      
   <form action="/sendComment" method="post" >
   		<input type="text" placeholder="Napište nám...">
   		<input type="submit">
   
   </form>
   
   
   
   <div>
   <c:if test="${comments != null}">
   	 <c:forEach var = "i" begin = "0" end = "${comments.size() - 1}">
         <p>Komentář číslo: <c:out value = "${comments[i]}"/><p>
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