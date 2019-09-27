<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
    
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/displayall.css">    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
	 .divbox {
		margin-left:25px;
		margin-top:25px;
		margin-right:15px;
		margin-bottom:15px;
		text-align: left;
		background: #d0d3f5;
		border-radius: 15px;
		width: 300px;
		height:280px;
		padding: 5px 0px 5px 5px;
		display: inline-block;
		}
	</style>
</head>

<body>
    <c:if test="${not empty activities}">
    <c:forEach var="activity" items="${activities}">
       <div class="divbox">
        <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
              <i class="fa fa-calendar-check-o"></i>
            </legend>
      <table class="allemployee">
        <tr>
          <td>Registered Date:</td>
          <td>${activity.registerDate}</td>
        </tr>
        <tr>
          <td>Idea of yours</td>
          <td>${activity.action}</td>
        </tr>
        <tr>
          <td> 
            <form action="get-event-detail">
              <input type="hidden" name="eventId" value="${activity.eventId}"/>
              <input type="hidden" name="id" value="${activity.id}"/>
              <button type="submit" class="button removebuttonbackground" >
              <i class="fa fa-eye" aria-hidden="true"></i></button>
            </form>
          </td>
        </tr>
     </table>
     </fieldset>
        </div>
    </c:forEach>
    </c:if>
    
       <c:if test="${not empty event}">
       <div class="divbox">
        <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
              <i class="fa fa-calendar-check-o" style="color:black"></i>
            </legend>
       <table class="allemployee">
         <tr>
           <td>Registered Date:</td>
           <td>${activity.registerDate}</td>
         </tr>
         <tr>
           <td>Idea of yours</td>
           <td>${activity.action}</td>
         </tr>
          <tr>
            <td>Event</td>
            <td>${event.name}</td>
          </tr>
          <tr>
            <td>Start date</td>
            <td>${event.startDate}</td>
          </tr>
          <tr>
            <td>End date</td>
            <td>${event.endDate}</td>
          </tr>
          <tr>
            <td>Time</td>
            <td>${event.time}</td>
          </tr>
        </table> 
        </fieldset>
        </div>
      </c:if>
        
   
  </body>
</html>
