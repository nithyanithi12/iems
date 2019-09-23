<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<html>
  <head>
    <title> welcome to ideas2it </title>
    <link href="/css/login.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
        <fieldset class="fieldset">
          <legend class="fieldsetlegend">
            <i class="fa fa-user-circle-o"></i>
          </legend>
            <form action="j_spring_security_check" method="post">
          <table cellpadding="20px" class="allemployee">
            <tr>
              <td>User Id</td>
              <td>
                <input type="text" name="username" required autofocus placeholder="ex:I00001" />
              </td>
            <tr>
            <tr>
              <td>Password</td>
              <td>
                <input type="password" name="password" required />
              </td>
            </tr>
          </table>
          <center>
            <button type="reset" class="button resetbuttonbackground" >Reset</button>
            <button type="submit" class="button loginbuttonbackground" >Login</button>
            </form>
          </center>
            <br>
       </form>
    <form action="requestToRegisterUser" method="post">
    <center>
      new user? <button type="submit" class="button registerbuttonbackground" >Register</button>
      </form>
       </center>
    </form>
        </fieldset>
  </body>
</html>
