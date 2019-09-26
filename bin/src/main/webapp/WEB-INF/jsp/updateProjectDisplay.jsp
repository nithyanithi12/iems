<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@page import="com.ideas2it.iems.model.Project" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/empcreate.css" >
  </head>
  <body>
    <form action="updateProject" method="post">
      <table id="createTable" align="center" cellpadding="20px">
        <tr>
          <td>Project Id</td>
          <td><input type="text" name="projectId" maxlength="30" value="${project.projectId}" readonly/></td>
        </tr>
        <td>Project Name</td>
        <td><input type="text" name="projectName" maxlength="30"value="${project.projectName}" /></td>
        </tr>
        <tr>
          <td>Project Descreption Name</td>
          <td><input type="text" name="projectDescription" maxlength="30" value="${project.projectDescription}" /></td>
        </tr>
        <td>Start Date</td>
        <td> <input type="date" name="startDate" maxlength="30" value="${project.startDate}"/></td>
        </tr>
        <tr>
          <td>Expected End Date</td>
          <td> <input type="date" name="expectedEndDate" maxlength="30" value="${project.expectedEndDate}"/></td>
        </tr>
        <tr>
          <td>Project Head Id</td>
          <td><input type="text" name="projectHeadId" maxlength="30" value="${project.projectHeadId}"/></td>
        </tr>
        <% Project project = (Project)request.getAttribute("project");
          if ((project.getClient()) != null) { %>
        <tr>
          <td>Client Id</td>
          <td> <input type="text" name="clientId" value="${client.id}" readonly></td>
        </tr>
        <% } %>
        <td colspan="2" align= "center" >
          <input type="submit"  value= "Update" class="button buttonbackground" >
          <input type="button"  value= "Cancel" class="button buttonbackground" onclick="location.href='displayAllProjectRedirect.jsp';">
        </td>
        </tr>
      </table>
    </form>
  </body>
</html>
