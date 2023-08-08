<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/5/2023
  Time: 3:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee Management</title>

</head>

<body>
    <div class="header">
        <h1 text-align="center">Welcome to Employee Management System</h1>
    </div>
<button class="button">
<a class="anchor" href="${createLink(controller: 'employee',action: 'create')}">Add Employee</a>
</button>
</body>
</html>

