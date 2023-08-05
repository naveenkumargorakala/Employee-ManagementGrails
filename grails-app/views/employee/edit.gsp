<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/5/2023
  Time: 3:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Employee </title>
    <asset:link rel="" href="style.css"
</head>
<body>
    <h1>Edit Employee Details</h1>
    <g:form action="update">
        <g:hiddenField name="id" value ="${employeeRef?.id}"/>
        <label>First Name:</label>
        <g:textField name="firstName" value="${employeeRef?.firstName}"/><br>

        <label>First Name:</label>
        <g:textField name="lastName" value="${employeeRef?.lastName}"/><br>

        <label>First Name:</label>
        <g:textField name="Designation" value="${employeeRef?.designation}"/><br>

        <label>First Name:</label>
        <g:textField name="Age:" value="${employeeRef?.age}"/><br>

        <g:submitButton name="update"/>

    </g:form>

</body>
</html>