<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Participants</h1>
    <table>
    	<tr bgcolor="#f3f3f3">
            <th>Employee Id</th>
             <th>Registered Date</th>
            <th>Action</th>
        </tr>
         <c:forEach var="employee" items="${employees}">
           <tr>
           <td>${employee.employeeId}</td>
           <td>${employee.registerDate}</td>
           <td>${employee.action}</td>
         </c:forEach>
        </tr>
   </table>

</body>
</html>
