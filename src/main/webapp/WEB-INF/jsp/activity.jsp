<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style>
	.initial{
	display:none;
	}
</style>
<body>

	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
       <div class="carousel-inner">
          <c:forEach var="event" items="${events}">
            <div class="carousel-item active">
              <p style="font-size:40px;">${event.name}</p>
			  <p>Start Date:${event.startDate}</p>
			  <p>End Date:${event.endDate}</p>
			  <p>Time:${event.time}</p>
			  <p>Description:${event.description}</p>
              <button type="submit" onclick="register()">Register Now:-</button>
            </div>
            <div id="register" class="initial">
                      <h2 style="font-color:yellow">Register Now</h2>
                        <form action="register-event" method="post">
                            <input type="hidden" name="id" value="${event.id}"/>
                            <i>What you want to do in ${event.name}</i>
                            <input type="text" name="action" required/>
                            <input type="submit" value="Register"/>
                       </form>
             </div>		    
	     </c:forEach> 
	     
	   </div>
	   </div>
	<script>
	  function register(){
		  document.getElementById("register").style.display="block";
	  }</script>
		    
              
</body>
</html>