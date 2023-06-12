<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="ScriptLib.jsp" %>

<style>

header .header{
  background-color: #fff;
  height: 45px;
}
header a img{
  width: 134px;
margin-top: 4px;
}
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.login-page .form .login{
  margin-top: -31px;
margin-bottom: 26px;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  height: 440px;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 30px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  border-radius: 7px;
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  border-radius: 7px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background-color: #328f8a;
  
  width: 50%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
  border-radius: 7px;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}

.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}

body {
  background-color: lightgrey;
  
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
</head>
<body>

<%@ include file="Header.jsp" %>

<div class="container text-data" style="max-width:100%;">
<h1>Login Page</h1>
</div>
 
<div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3 style="font-size: x-large;">Login</h3>
          </div>
        </div>
        <form class="login-form"; style="font-size: small;" >
          <label style="float: left;">User Name</label>
          <input type="text" placeholder="Enter Username"/>
          <br><br>
          <label style="float: left;">Email</label>
          <input type="email" placeholder="Enter Email"/>
          <br><br>
          <label style="float: left;">Password</label>
          <input type="password" placeholder="Enter Password"/>
          <br><br>
          <button type="submit" name="login">LOGIN</button> 
        </form>
      </div>
</div>
    
<div style="max-width:100%;/* padding:25% 0 0 0 */">
<%@ include file="Footer.jsp" %>
</div>
</body>
</html>