<!DOCTYPE html>
<html>
<head>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/includes/head.jsp" %>

</head>
	
   <body>
   <%@include file="/WEB-INF/includes/header.jsp"%>
   <%@include file="/WEB-INF/includes/navbar.jsp"%>
   <div class="container-fluid">
   
   
   
 <div class="row justify-content-center align-items-center mt-3">
 <div class="col-md-6 rounded mt-3" style="background-color: #48bdc5;">
	<form:form modelAttribute="comment" class="text-center p-5" action="/dotazy" method="POST">

    <p class="h4 mb-4">Napište nám svůj názor</p>

    <!-- Name -->
    <form:input path="username"  type="text" name="commentName" class="form-control mb-4" placeholder="Jméno" />

    <!-- Email -->
    <form:input path="email" type="email" name="commentEmail" class="form-control mb-4" placeholder="E-mail" />

    

    <!-- Message -->
    <div class="form-group">
        <form:textarea path="text" class="form-control rounded-0" name="commentText" rows="3" placeholder="Váš komentář..." ></form:textarea>
        
        <p class="mt-1" style="font-weight: bold;">Zbývá <span class="text-counter">1500</span> znaků</p>
    </div>
	
    <!-- Send button -->
    <form:button class="btn btn-info btn-block" type="submit">Odeslat</form:button>

	</form:form>
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
  			<span class="text-right float-right"><c:out value="${comment.getDateAsString()}" /></span><br />
  			<span class="text-right float-right"><c:out value="${comment.getId()}" /></span>
		</div>
         
         <p><c:out value="${comment.getText()}" /></p>
       </div>  
      </div> 
      </c:forEach>
   </c:if>
   
   
		
<c:if test="${pages != null}">		
<nav aria-label="Page navigation example mt-5">
 <ul class="pagination justify-content-center">
 	<li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
 	<c:forEach items="${pages}" var="pageNum">
 		 <li class="page-item"><a class="page-link" href="/dotazy/${pageNum}">${pageNum}</a></li>
 	
 	
 	
 	</c:forEach>
 	
 	<li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
        
  </ul>
</nav>
</c:if>
	
  
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