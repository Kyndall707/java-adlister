<%--
  Created by IntelliJ IDEA.
  User: kyndallsims
  Date: 2019-10-22
  Time: 09:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 
    String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
    String password = (request.getParameter("password") != null) ? request.getParameter("password") : "";


    if(username.equalsIgnoreCase("kyndall") && password.equalsIgnoreCase("snacks")){
        response.sendRedirect("/profile.jsp");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1><%= request.getParameter("username")%> <%= request.getParameter("password")%></h1>

    <form action="/login.jsp" method="post" >

        <label for="username"> Enter username </label>
        <input id="username" type="text" name="username" placeholder="username">

        <label for="password"> Enter Password </label>
        <input id="password" type="text" placeholder="Enter password" name="password">

        <button>Submit</button>

    </form>
</body>
</html>
