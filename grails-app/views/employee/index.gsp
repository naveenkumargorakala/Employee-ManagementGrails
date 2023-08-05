<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/5/2023
  Time: 3:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee List</title>
</head>

<body>
    <h1>Employee list</h1>
    <ul>
        <g:each in="${employeeList}" var="employeeRef">
            <li>${employeeRef.firsName}${employeeRef.lastName}</li>
        </g:each>
    </ul>
<a href="${createLink(controller: 'employee',action: 'create')}">Add Employee</a>
</body>
</html>