<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
   <head>
      <title>Events</title>
       <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="/css/displayall.css" >      
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
	 .divbox {
		margin-left:25px;
		margin-top:25px;
		margin-right:15px;
		margin-bottom:15px;
		text-align: left;
		background: #d0d3f5;
		border-radius: 15px;
		width: 270px;
		height:280px;
		padding: 5px 0px 5px 5px;
		display: inline-block;
		}
	</style>
 </head>

   <body>
     <div>
      <h2>Events Information</h2>
      <form action="get-all-events">
        <input type="submit" value="Display All Events"/>
      </form>
      
      <form action="new">
         <button type="submit" class="button createbuttonbackground">
            <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
         </button>
      </form>
      
	<c:if test="${not empty upcomingEvents}">
	<h2 style="font-color:yellow;">Upcoming Events</h2>
      <c:forEach var="event" items="${upcomingEvents}">   
      <div class="divbox">
        <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
              <i class="fa fa-calendar-check-o"></i>
            </legend>
            <table class="allemployee">
				<tr>
					<td>Event Name</td>
					<td>${event.name}</td>
				</tr>
				<tr>
					<td>Start Date</td>
					<td>${event.startDate}</td>
				</tr>
				<tr>
					<td>End Date</td>
					<td>${event.endDate}</td>
				</tr>
				<tr>
					<td>Time:</td>
					<td>${event.time}</td>
				</tr>
				<tr>
					<td>Organiser:</td>
					<td>${event.organiser.id}</td>
				</tr>
				<tr>
					<td>
						<form action="get-event" method="get">
							<input type="hidden" name="id" value="${event.id}"/>
							<button type="submit" class="button editbuttonbackground">
							<i class="fa fa-pencil-square-o" ></i>
							</button>
						</form>
				   </td>
				   <td>
						<form action="delete-event" method="get">
							<input type="hidden" name="id" value="${event.id}"/>
							<button type="submit" class="button removebuttonbackground" >
							<i class="fa fa-trash" aria-hidden="true"></i></button>
						</form>
					</td>
					<td>
						<button onclick="showDescription('${event.description}')" class="button viewbuttonbackground">
						<i class="fa fa-eye" aria-hidden="true"></i></button>
					</td>
				</tr>
				<tr>
				    <td>
						<form action="getParticipants" method="get">
							<input type="hidden" name="id" value="${event.id}"/>
							<input type="submit" value="participants"/>
						</form>
				    </td>
				</tr>
			</table>
        </fieldset>
        </div>
      </c:forEach> 
	</c:if>
    </div>
	<hr width="100%">
	<c:if test="${not empty pastEvents}">
	<h2 style="font-color:yellow;">Past Events</h2>
      <c:forEach var="event" items="${pastEvents}">   
      <div class="divbox">
        <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
              <i class="fa fa-user-circle-o"></i>
            </legend>
            <table cellpadding="5px" class="allemployee">
				<tr>
					<td>Event Name</td>
					<td>
						${event.name}
					</td>
				</tr>
				<tr>
					<td>Start Date</td>
					<td>${event.startDate}</td>
				</tr>
				<tr>
					<td>End Date</td>
					<td>${event.startDate}</td>
				</tr>
				<tr>
					<td>Time:</td>
					<td>${event.time}</td>
				</tr>
				<tr>
					<td>Organiser:</td>
					<td>${event.organiser.id}</td>
				</tr>
				<tr>
					<td>
						<button onclick="showDescription('${event.description}')" class="button viewbuttonbackground">
						<i class="fa fa-eye" aria-hidden="true"></i></button>
					</td>
				</tr>
				<tr>
				    <td>
						<form action="getParticipants" method="get">
							<input type="hidden" name="id" value="${event.id}"/>
							<input type="submit" value="participants"/>
						</form>
				    </td>
				</tr>
			</table>
        </fieldset>
        </div>
      </c:forEach> 
	</c:if>
	<c:if test="${not empty events}">
	<h2 style="font-color:yellow;">All Events</h2>
      <c:forEach var="event" items="${events}">   
      <div class="divbox">
        <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
              <i class="fa fa-user-circle-o"></i>
            </legend>
            <table cellpadding="5px" class="allemployee">
				<tr>
					<td>Event Name</td>
					<td>
						${event.name}
					</td>
				</tr>
				<tr>
					<td>Start Date</td>
					<td>${event.startDate}</td>
				</tr>
				<tr>
					<td>End Date</td>
					<td>${event.startDate}</td>
				</tr>
				<tr>
					<td>Time:</td>
					<td>${event.time}</td>
				</tr>
				<tr>
					<td>Organiser:</td>
					<td>${event.organiser.id}</td>
				</tr>
				<tr>
					<td>
						<button onclick="showDescription('${event.description}')" class="button viewbuttonbackground">
						<i class="fa fa-eye" aria-hidden="true"></i></button>
					</td>
				</tr>
			</table>
        </fieldset>
        </div>
      </c:forEach> 
	</c:if>
		<script>
			function showDescription(description){
				alert(description);
		}
	   </script>
   </body>
   
</html>