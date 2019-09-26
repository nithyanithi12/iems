<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> welcome to ideas2it</title>
    <link rel="stylesheet" type="text/css" href="/css/employeeDisplay.css" >
        <link rel="stylesheet" type="text/css" href="/css/displayDocument.css" >
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
  background-color: #9cafff;
  color: white;
  padding: 0px 0x;
  border: none;
  cursor: none;
  opacity: 0.0;
  position: fixed;
  bottom: 0x;
  right: 0;
  width: 0px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover {
  opacity: 1;
}
	.hide{
	  display:none;
	}
	.show{
	  display:block;
	}

</style>
  </head>
  <body>
      <div align="right">
              <form action="/show-solved-query" method="post">  
             <input type="hidden" name="id" value="${employee.id}">       
               <input type="submit" value="Solved Queries">        
             </form>
    </div>
    <div align="right">
             <form action="/show-employee-query" method="post">  
             <input type="hidden" name="id" value="${employee.id}">       
               <input type="submit" value="All Queries">        
             </form>
    </div>
  
      <table cellpadding="20px">
        <tr>
          <td><b>ID</b></td>
          <td>${employee.id}</td>
          <td><b>Salary</b></td>
          <td>${employee.salary}</td>
        </tr>
        <tr>
          <td><b>Name</b></td>
          <td>${employee.name}</td>
          <td><b>Date of Join</b></td>
          <td>${employee.doj}</td>
        </tr>
        <tr>
          <td><b>Gender</b></td>
          <td>${employee.gender}</td>
          <td><b>ICE Number</b></td>
          <td>${employee.iceNumber}</td>
        </tr>
        <tr>
          <td><b>Blood Group</b></td>
          <td>${employee.bloodGroup}</td>
            <td><b>Address </b></td>
            <td>
            </td>
        </tr>
        <tr>
          <td><b>Date of Birth</b></td>
          <td>${employee.dob}</td>
            <td><b>Door No</b></td>
            <td>
              ${employee.address.doorNo}
            </td>
        </tr>
         <tr>
          <td><b>Age</b></td>
          <td>${employee.age}</td>
            <td><b>Street</b></td>
            <td>
              ${employee.address.street}
            </td>
        </tr>
         <tr>
          <td><b>Experience</b></td>
            <td>${employee.experience}</td>
            <td><b>Locality</b></td>
            <td>
              ${employee.address.locality}
            </td>
        </tr>
        <tr>          
          <td><b>Mobile Number</b></td>
          <td>${employee.mobileNumber}</td>
            <td><b>City Name</b></td>
            <td>
              ${employee.address.city}
            </td>
        </tr>
        <tr>
          <td><b>E-Mail</b></td>
          <td>${employee.email}</td>
            <td><b>State Name</b></td>
            <td>
              ${employee.address.state}
            </td>
        </tr>
        <tr>
          <td><b>Role</b></td>
          <td>${employee.role}</td>
            <td><b>Pincode</b></td>
            <td>
              ${employee.address.pincode}
            </td>
        </tr>
      </table>
       <!--    <input type="button"  value= "Ok" class="button buttonbackground" onclick="location.href='displayAllEmployeeRedirect.jsp';">
   <img src="Ideas1.png" alt="Ideas2it logo" style="float:right;width:15%;height:15%;">  -->

 
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
              <tr>
                <td>Document Name</td>
                <td>
                  <c:out value="${document.documentName}" />
                </td>
              </tr>
              <td>Created Date</td>
              <td>
                <c:out value="${document.createdDate}" />
              </td>
              </tr>
            <center>
            <table cellpadding="3px">
           <tr>
          <td>
              <form action="/document-query" method="get">
                <input type="hidden" name="id" value= "${document.id}" />
                <button type="button" target="_self" class="button editbuttonbackground" onclick="openForm(${document.id})" >
                  <i class="fa fa-comment" ></i></button>            
              </form>
          </td>
          <td>
              <form action="/read-document" method="post">
                <input type="hidden" name="id" value= "${document.id}" />
                <button type="submit" target="_self" class="button viewbuttonBackground">
                  <i class="fa fa-eye"></i></button>            
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
         
         
         
         
         
           
    <!--Code For PopUp window Chat   -->


<div class="chat-popup" id="myForm">
  <form action="document-query" class="form-container">
    <h1>Query</h1>
    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type Your Detailed Message(Max 250 Characters)"
     name="message"  maxlength = "250" required></textarea>   
     
     <div id="docid">
       <c:out value = "${document.id}"  />
    <input type="hidden" name="id" id="abc"><br>
    </div>
    
    
    <input type="hidden" name="employeeId" value="${employee.id}">  
    <button type="submit" class="btn">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm(documentId) {
  document.getElementById("myForm").style.display = "block";
  document.getElementById("docid");
  document.getElementById("abc").value = documentId;
  }

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
function onButtonClick(){
	  document.getElementById('textInput').className="show";
	}
</script>
    <!--End of PopUp window Chat   -->

  </body>
</html>
