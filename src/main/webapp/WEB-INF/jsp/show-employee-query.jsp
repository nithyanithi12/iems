<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.ideas2it.iems.model.Query" %>
<html>
  <head>
    <title>iems</title>
        <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/show-employee-query.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>   
<body>
  <h3>My Queries</h3> 
 <div>
        <c:forEach items="${queries}" var="query" >
        <div class="divbox">
          <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
            </legend>
            <table cellpadding="5px" class="allemployee">
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
              <tr>
                <td>Created Date</td>
                <td>
                  <c:out value="${query.createdDate}" />
                </td>
              </tr>
              <tr>                         
               <c:if test="${query.status}">
                   <td>Query Not Yet Solved</td>
               </c:if>
                                 
               <c:if test="${not query.status}">
                   <td>Query Solved</td>
               </c:if>         
              </tr>
            </table>
        </fieldset>
        </div>
             </c:forEach>
    </div>
    </body>
    </html>