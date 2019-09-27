<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="/css/display-all-documents.css" >
    
    <script src="applicationScript.js"></script>
     <h3>All Documents</h3>
  </head>
  <body>    
    <div>
      <c:forEach var="document" items="${documents}">
        <div class="divbox">
          <fieldset class="divfieldset">
            <legend class="divfieldsetlegend">
            </legend>
            <table cellpadding="5px" class="allemployee">
              <tr>
                <td>Id</td>
                <td>
                  <c:out value="${document.id}" />
                </td> 
              <tr>
                <td>Document Name</td>
                <td>
                  <c:out value="${document.documentName}" />
                </td>
              </tr>
              <tr>
              <td>Created Date</td>
              <td>
                <c:out value="${document.createdDate}" />
              </td>
              </tr>
              <tr>
              <td>Updated Date</td>
              <td>
                <c:out value="${document.lastModifiedDate}" />
              </td>
              </tr>
             <tr>
             <c:if test="${document.status}">
              <td>Valid Document</td>
              </c:if>
             <c:if test="${not document.status}">
              <td>InValid Document</td>
              </c:if>
              </tr>
            <center>
            <table cellpadding="3px">
           <tr>
           <td>
              <form action="/read-document" method="post">
                <input type="hidden" name="id" value= "${document.id}" />
                <input type="submit" target="_self" value="View"/>
             </form>
           </td>
           </tr>
           </table>
           </center>
            </table>
        </fieldset>
        </div>
      </c:forEach>
    </div>        
  </body>
</html>
