<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/empcreate.css" >
        <link rel="stylesheet" type="text/css" href="/css/employeeUpdateDisplay.css" >
    
    <script src="applicationScript.js"></script>
  </head>
  <body>
        <div align="right">
              <form action="/display-all-documents" method="post">  
             <input type="hidden" name="id" value="${employee.id}">       
               <input type="submit" value="All Documents">        
             </form>
        </div> 
    <form name="employeeCreateForm" action="setEmployeeDetails" method="post" onSubmit="return employeeInputValidation();">
      <table cellpadding="20px">
        <tr>
          <td>Name</td>
          <td><input type="text" name="name" maxlength="30" autofocus required value="${employee.name}" /></td>
          <td>E-mail</td>
          <td> <input type="email" name="email" maxlength="30" required value="${employee.email}"/></td>
            <td>Address </td>
        </tr>
        <tr>
          <td>Gender</td>
           <td>
            <c:choose>
              <c:when test="${employee.gender == 'Male'}">
                  <input type="radio" name="gender" value="Male" checked="checked"required />Male</input>
                  <input type="radio" name="gender" value="Female" required >Female</input>
              </c:when>
              <c:otherwise>
                  <input type="radio" name="gender" value="Male" required />Male</input>
                  <input type="radio" name="gender" value="Female" checked="checked" required >Female</input>
              </c:otherwise>
            </c:choose>
                </td>
          <td>Date of Join</td>
          <td> <input type="date" name="doj" maxlength="30" min="2008-01-01" max="2019-06-31" style="width:100%" value="${employee.doj}" required />
          </td>
                    <td>Door No</td>
          <td><input type="text" name="doorNo"  maxlength="10" value="${employee.address.doorNo}" required /></td>
          
        </tr>
        <tr>
          <td>Date of Birth</td>
          <td><input type="date" name="dob" maxlength="30"  min="1970-01-01" max="2001-01-01" width="100%" style="width:100%" value="${employee.dob}" required /></td>
          <td>Role</td>
            <td><select name="role" style="width: 100%;" required />
                <option selected hidden>${employee.role}</option>
                <option value="Employee">Employee</option>
                <option value="Admin">Admin</option>
                </select>
            </td>
           <td>City Name</td>
          <td><input type="text" name="city" maxlength="30" value="${employee.address.city}" required /></td>
        </tr>
        <tr>
          <td>Blood Group</td>
          <td>
            <select name="bloodGroup" style="width:100%;" required/>
              <option selected hidden>${employee.bloodGroup}</option>
              <option value="A+ve">A+</option>
              <option value="A-ve">A-</option>
              <option value="A1+ve">A1+</option>
              <option value="A1-ve">A1-</option>
              <option value="A1B+ve">A1B+</option>
              <option value="A1B-ve">A1B-</option>
              <option value="A2+ve">A2+</option>
              <option value="A2-ve">A2-</option>
              <option value="A2B+ve">A2B+</option>
              <option value="A2B-ve">A2B-</option>
              <option value="AB+ve">AB+</option>
              <option value="AB-ve">AB-</option>
              <option value="B+ve">B+</option>
              <option value="B-ve">B-</option>
              <option value="O+ve">O+</option>
              <option value="O-ve">O-</option>
            </select>
          </td>
          <td>Salary</td>
          <td> <input type="text" name="salary" maxlength="10" value="${employee.salary}" required /></td>
          <td>State Name</td>
          <td>
            <select name="state" maxlength="30" style="width:100%;" required>
              <option selected hidden>${employee.address.state}</option>
              <option value="Andhra Pradesh">Andhra Pradesh</option>
              <option value="Arunachal Pradesh">Arunachal Pradesh</option>
              <option value="Assam">Assam</option>
              <option value="Bihar">Bihar</option>
              <option value="Chhattisgarh">Chhattisgarh</option>
              <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
              <option value="Daman and Diu">Daman and Diu</option>
              <option value="Delhi">Delhi</option>
              <option value="Goa">Goa</option>
              <option value="Gujarat">Gujarat</option>
              <option value="Haryana">Haryana</option>
              <option value="Himachal Pradesh">Himachal Pradesh</option>
              <option value="Jammu and Kashmir">Jammu and Kashmir</option>
              <option value="Jharkhand">Jharkhand</option>
              <option value="Karnataka">Karnataka</option>
              <option value="Kerala">Kerala</option>
              <option value="Madhya Pradesh">Madhya Pradesh</option>
              <option value="Maharashtra">Maharashtra</option>
              <option value="Manipur">Manipur</option>
              <option value="Meghalaya">Meghalaya</option>
              <option value="Mizoram">Mizoram</option>
              <option value="Nagaland">Nagaland</option>
              <option value="Orissa">Orissa</option>
              <option value="Puducherry">Puducherry</option>
              <option value="Punjab">Punjab</option>
              <option value="Rajasthan">Rajasthan</option>
              <option value="Sikkim">Sikkim</option>
              <option value="Tamil Nadu">Tamil Nadu</option>
              <option value="Telangana">Telangana</option>
              <option value="Tripura">Tripura</option>
              <option value="Uttar Pradesh">Uttar Pradesh</option>
              <option value="Uttarakhand">Uttarakhand</option>
              <option value="West Bengal">West Bengal</option>
            </select>
          </td>
        <tr>
          <td>Mobile Number</td>
          <td> <input type="tel" name="mobileNumber" maxlength="15" value="${employee.mobileNumber}" required /></td>
          <td>ICE Number</td>
          <td> <input type="tel" name="iceNumber" maxlength="15" value="${employee.iceNumber}" required /></td>
          <td>Pincode</td>
          <td> <input type="text" name="pincode" maxlength="30" value="${employee.address.pincode}" required /></td>
        </tr>    
      </table>
    </form> 
    <form method="POST" action="/create-document" enctype="multipart/form-data" >
      <table>
       <tr>
         <td>        
           <select name='documentName' required>
           <option value="${selected}" selected>${selected}Upload New Document</option>
           <c:forEach items="${documentNames}" var="documentname">
           <c:if test="${documentname != selected}"> 
             <option value="${documentname.getDocumentName()}">${documentname.getDocumentName()}</option>
             </c:if>
           </c:forEach>
          </select>
         </td>
       </tr>
       <tr>
         <td>        
           <input type="file" name="documentContent" id="file" accept="application/pdf" required/> 
         </td>  
         <td>  
           <input type="hidden" name="id" value="${employee.getId()}" /> 
         </td>
       </tr>                                 
       <tr>
         <td colspan="2">
           <input type="submit" value="Upload" name="upload" id="upload" /> 
         </td>    
         </form>      
      </tr>
      <td>
       <form action="add-document-name" method="get">
         <input type="text" name="documentName" required><br>
         <input type="hidden" name="id" value="${employee.getId()}" /> 
         <input type="submit" value="Add Document Name">
       </form> 
       </td> 
     
     </table>  
        
     
    <div>
      <c:forEach var="document" items="${documents}">
        <c:if test="${document.status}">
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
            <center>
            <table cellpadding="3px">
           <tr>
          <td>
          <form action="/update-document" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${document.id}"><br>
            <input type="file" name="documentContent" id="file" accept="application/pdf" required /> 
            <input type="hidden" name="employeeId" value="${employee.getId()}" />      
            <input type="submit" value="Update" name="upload" id="upload"/>
           </tr>  
         </form>
          </td>
          <td>
              <form action="/delete-document" method="post">
                <input type="hidden" name="id" value= "${document.id}" />
                <input type="hidden" name="employeeId" value="${employee.getId()}" />      
                <input type="submit" target="_self" value="Delete"/>
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
    </div>        
  </body>
</html>