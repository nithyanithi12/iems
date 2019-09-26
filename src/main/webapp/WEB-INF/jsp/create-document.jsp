
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>Upload Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <form method="POST" action="/create-document" enctype="multipart/form-data" >
  <table>
        <tr><td>        
          <select name='documentName'>
          <option value="${selected}" selected>${selected}Select Document</option>
          <c:forEach items="${documentNames}" var="documentname">
          <c:if test="${documentname != selected}">
          <option value="${documentname.getDocumentName()}">${documentname.getDocumentName()}</option>
          </c:if>
          </c:forEach>
         </select>
        </td></tr>
        <tr><td>        
          <input type="file" name="documentContent" id="file" /> </td>  
                     <td>  <input type="hidden" name="id" value="${employee.getId()}" /> </td>
                    
        </tr>       
        <tr>
        <td colspan="2">
            <input type="submit" value="Upload" name="upload" id="upload" /> </td>
        </tr> 
        
   </table>  
</form>  
    </body>
</html>





