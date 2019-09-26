<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/empcreate.css" >
</head>
<body>
  <form action="update-event" method="post">
      <table>
      	   <input type="hidden" name="id" value="${event.id}" required/>
       <tr>
           <td>Name</td>
           <td><input type="text" name="name" maxlength="40" value="${event.name}" required/></td>
       </tr>
       <tr>
	       <td>Start Date</td>
	       <td><input type="date" name="startdate" value="${event.startDate}" required/></td>
       </tr>
	   <tr>
	       <td>End Date</td>
	       <td><input type="date" name="enddate" value="${event.endDate}" required/></td>
       </tr>
	   <tr>
         <td>Organiser</td>
         <td><input type="text" name="organiser" value="${event.organiser.id}" required/></td>
       </tr>
       <tr>
	       <td>Time</td>
	       <td><input name="time" value="${event.time}" required/></td>
       </tr>
       <tr>
	       <td>Description:</td>
	       <td><textarea name="description" rows="10" cols="30" required>${event.description}</textArea></td>
       </tr>
       <tr>
           <td><input type="submit" value="update" /></td>
       </tr>
       </table>
   </form>
</body>
</html>