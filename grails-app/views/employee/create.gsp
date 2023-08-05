    <%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/5/2023
  Time: 3:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Employee</title>
</head>

<body>
    <h1>Enter Employee Details</h1>
    <g:form action="save">
        <label>First Name:</label>
        <g:textField name="firstName"/><br>
        <label>Last Name:</label>
        <g:textField name="lastName"/><br>
        <label>Designation:</label>
        <g:textField name="designation"/><br>
        <label>Age:</label>
        <g:textField name="age"/><br>

        <g:submitButton name="save"/>
    </g:form>
</body>
</html>