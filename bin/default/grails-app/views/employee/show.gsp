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
                    <a href="${createLink(controller: 'employee',action: 'edit')}">Update</a>
                </td>

                %{--Table Actions --}%
                <td>
                    <div class="btn-group">
                        <g:link controller="employee" action="details" class="btn btn-secondary" id="${info.id}"><i class="fas fa-eye"></i></g:link>
                        <g:link controller="employee" action="edit" class="btn btn-secondary" id="${info.id}"><i class="fas fa-edit"></i></g:link>
                        <g:link controller="employee" action="delete" id="${info.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>
                    </div>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>

</div>
<button>
<a  href="${createLink(controller: 'employee',action: 'edit')}">Update</a>
</button>
</body>
</html>
