<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" type="text/css" href="/css/allProjectEmployee.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
    <div>
      <c:forEach var="employee" items="${project.employees}">
        <div class="divbox">
          <fieldset class="divfieldset">
            <center>
              <legend class="divfieldsetlegend">
                <i class="fa fa-user-circle-o"></i>
              </legend>
              <table cellpadding="4px">            
                <tr>
                  <td>Id</td>
                  <td>
                    <c:out value="${employee.id}" />
                  </td>
                </tr>
                <tr>
                  <td>Name</td>
                  <td>
                    <c:out value="${employee.name}" />
                  </td>
                </tr>
                <tr>
                  <td>Role</td>
                  <td>
                    <c:out value="${employee.role}" />
                  </td>
                </tr>
                <input type="hidden" name="employeeId" value= "${employee.id}" />
              </table>
            </center>
            <form action="removeEmployeeFromProject" method="get">
              <center>
                <input type="hidden" name="employeeId" value= "<c:out value='${employee.id}' />">
                <input type="hidden" name="projectId" value= "${project.projectId}" />
                <button type="submit" name="operation" value="Remove Employee" target="_self" class="button removebuttonbackground" >
                <i class="fa fa-trash" aria-hidden="true"></i>
                </button>
              </center>
            </form>
          </fieldset>
        </div>
      </c:forEach>
      <form class="form" action="addEmployeeToProjectRedirect" method="post">
        <div class="divbox">
          <input type="hidden" name="projectId" value= "${project.projectId}" />
          <button type="submit" name="operation" value="Add Employee Redirect" class="addbutton addbuttonbackground"><i class="fa fa-plus-square" ></i></button>
        </div>
      </form>
    </div>
  </body>
</html>
