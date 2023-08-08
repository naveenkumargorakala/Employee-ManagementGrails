<g:form controller="employee" action="update">
    <input type="hidden" name="id" value="${employeeRef.id}" />
    <label for="name">First Name:</label>
    <g:textField name="name" value="${employeeRef.firstName}" />
    <label for="name">Last Name:</label>
    <g:textField name="name" value="${employeeRef.lastName}" />
    <label for="name">First Name:</label>
    <g:textField name="name" value="${employeeRef.designation}" />
    <label for="name">Age:</label>
    <g:textField name="number" value="${employeeRef.age}" />
    <g:submitButton name="Update" />
</g:form>