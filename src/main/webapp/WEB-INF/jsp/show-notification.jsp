<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.ideas2it.iems.model.Query" %>
<html>
  <head>
    <title>iems</title>
        <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/show-notification.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>   
<body>
  <div align="right">
             <form action="show-all-document-queries" method="post">         
                         <input type="submit" value="View All Queries">        
             </form>
             </div>
  <h3>Employee Queries</h3>
  
 <div>
    <c:forEach items="${employees}" var="employee">
          <c:set var = "employeeId" scope = "session" value = "${employee.id}"/>     
        <c:forEach items="${employee.queries}" var="query" >
        <c:if test="${query.status}">
        <div class="divbox">
          <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
            </legend>
            <table cellpadding="5px" class="allemployee">
              <tr>
                <td>Employee Id</td>
                <td>
                  <c:out value="${employeeId}" />
                </td>
              </tr>
              <tr>
                <td>Document Id</td>
                <td>
                  <c:out value="${query.documentId}" />
                </td>
              </tr>
              <tr>
                <td>Query Id</td>
                <td>
                  <c:out value="${query.id}" />
                </td>
              </tr>
              <tr>
                <td>Query</td>
                <td>
                  <c:out value="${query.reason}" />
                </td>
              </tr>
            <center>
            <table cellpadding="3px">
           <tr>
            <td>
              <form action="changeQueryStatus" method="post">
                <input type="hidden" name="id" value= "${query.id}" />
                <button type="submit" target="_self" class="button removebuttonbackground" >
                  <i class="fa fa-trash" ></i>
                </button>              
              </form>
          </td>
          <td>
              <form action="/displayEmployeeToUpdate" method="post">
            <input type="hidden" name="id" value="${employeeId}" ><br>
            <button type="submit" target="_self" class="button viewbuttonBackground">
            <i class="fa fa-eye"></i>
            </button>            
             </form>
           </td>
           </tr>
           </table>
           </center>
            </table>
        </fieldset>
        </div>
        </c:if>
      </c:forEach>
     </c:forEach>
    </div>
    </body>
    </html>