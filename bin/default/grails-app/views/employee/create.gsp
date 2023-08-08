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
    <g:form  class="form" action="save">
        <label class="label">First Name:</label>
        <g:textField name="firstName" value="${employeeRef?.firstName}" placeholder="Please Enter First Name"/>
        <br>
        <label class="label">Last Name:</label>
        <g:textField name="lastName" value="${employeeRef?.lastName}" placeholder="Please Enter Last Name"/>
        <br>
        <label class="label">Designation:</label>
        <g:textField name="designation" value="${employeeRef?.designation}" placeholder="Please Enter Designation"/>
        <br>
        <label class="label">Age:</label>
        <g:textField name="age" value="${employeeRef?.age}" placeholder="please enter above 18"/><br>

        <g:submitButton name="save"/>
    </g:form>
</body>
</html>