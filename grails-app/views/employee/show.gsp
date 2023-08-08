<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/7/2023
  Time: 11:45 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Employees List</title>
    <asset:stylesheet src="style.css"/>
</head>

<body>
<h1>Employee list</h1>
<div class="card-body">
    <table class="table table-bordered">
        <thead class="thead-dark">
        <tr>
            <g:sortableColumn property="firstName" title="${g.message(code: "first.name")}"/>
            <g:sortableColumn property="lastName" title="${g.message(code: "last.name")}"/>
            <g:sortableColumn property="designation" title="${g.message(code: "designation")}"/>
            <g:sortableColumn property="age" title="${g.message(code: "age")}"/>
            <th class="action-row"><g:message code="action"/></th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${employeeList}" var="info">
            <tr>
                <td>${info?.firstName}</td>
                <td>${info?.lastName}</td>
                <td>${info?.designation}</td>
                <td>${info?.age}</td>
                <td>
                    <g:link controller="employee" action="edit"  id="${info.id}">Update</g:link>
                    <g:link controller="employee" action="delete" id="${info.id}" ><i class="fas fa-trash"></i>Delete</g:link>

%{--                    <a href = "${createLink(controller: 'employee',action: 'delete',id: "${info.id}")}">Delete</a>--}%
%{--                    <g:link controller="employee" action="update" class="btn btn-secondary" id="${info.id}"><i class="fas fa-eye"></i></g:link>--}%

                </td>

                %{--Table Actions --}%

            </tr>
        </g:each>
        </tbody>
    </table>

</div>
<button class="button">
    <a class="anchor" href="${createLink(controller: 'employee',action: 'create')}">Add Employee</a>
</button>
</body>
</html>
