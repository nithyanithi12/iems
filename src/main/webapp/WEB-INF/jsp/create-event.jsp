<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
    <title>Create Event</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/empcreate.css" >
</head>
<body>
  <h1>Create Event</h1>
   <form action="create-event" method="post">
      <table>
       <tr>
         <td>Event Name</td>
         <td><input type="text" name="name" maxlength="40" required/></td>
       </tr>
       <tr>
       <td>Starting Date</td>
       <td><input type="date" name="startdate" required/></td>
       </tr>
       <tr>
       <td>Ending Date</td>
       <td><input type="date" name="enddate" required/></td>
       </tr>
       <tr>
       <td>Time</td>
       <td><input type="text" name="time" required/></td>
       </tr>
       <tr>
       <td>Organisar Id</td>
       <td><input type="text" name="organiser" required/></td>
       </tr>
       <tr>
       <td>Description:</td>
       <td><textarea name="description" rows="10" cols="30" required></textArea></td>
       </tr>
       <tr>
       <td><input type="submit" value="create" /></td>
       </tr>
       </table>
   </form>
</body>
</html>