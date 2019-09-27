<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<html>
  <head>
    <title>Bigcine</title>
  </head> 
     
<body>
  <c:out value="${message}" />
         <div  align = "center">
            <form action="/" method="post">
                <input type="submit" value="Try Again">
            </form>         
         </div>  
</body>
</html>