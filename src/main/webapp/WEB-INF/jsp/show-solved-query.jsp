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
  <h3>My Queries</h3> 
 <div>
        <c:forEach items="${queries}" var="query" >
        <c:if test="${query.status} == false">
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
                <td>Solved Date</td>
                <td>
                  <c:out value="${query.lastModifiedDate}" />
                </td>
              </tr>
            </table>
        </fieldset>
        </div>
        </c:if>
             </c:forEach>
    </div>
    </body>
    </html>