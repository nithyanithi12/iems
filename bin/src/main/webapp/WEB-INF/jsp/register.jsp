<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
  <head>
    <title> welcome to ideas2it </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/css/register.css" >
    <script>
      function validateUser() {
        var password = document.getElementById("password").value;    
        var confirmPassword = document.getElementById("confirmPassword").value;
          if(password != confirmPassword) {
            document.getElementById("password").style.borderColor = "red";
            document.getElementById("confirmPassword").style.borderColor = "red";
            return false;
        }
      }
    </script>
  </head>
  <body>
      <form:form action="registerUser" id="registerForm" method="post" modelAttribute="user" onSubmit="return validateUser();">
        <fieldset class="fieldset">
          <legend class="fieldsetlegend">
            <i class="fa fa-user-circle-o"></i>
          </legend>
          <table cellpadding="10px" class="allemployee">
            <tr>
              <td>User Id</td>
              <td>
                <form:input path="id" />
              </td>
            </tr>
            <tr>
              <td>Name</td>
              <td>
                <form:input path="name" />
              </td>
            </tr>
            <tr>
              <td>Role</td>
              <td>
                <form:input path="role"   />
              </td>
            </tr>
            <tr>
              <td>Mobile</td>
              <td>
                <form:input path="mobileNumber"   />
              </td>
            </tr>
            <tr>
              <td>Email</td>
              <td>
                <form:input path="email"   />
              </td>
            </tr>
            <tr>
              <td>Password</td>
              <td>
                <form:password id="password" path="password"  />
              </td>
            </tr>
            <tr>
              <td>Confirm Password</td>
              <td>
                <input type="text" id="confirmPassword" name="confirmPassword"  />
              </td>
            </tr>
          </table>
          <center>
            <button type="reset" class="button resetbuttonbackground" >Reset</button>
            <button type="submit" class="button loginbuttonbackground" >Register</button>
            <input type="button" class="button resetbuttonbackground" value="Cancel" onclick="location.href='login.jsp';" />
          </center>
        </fieldset>
    </form:form>
  </body>
</html>
