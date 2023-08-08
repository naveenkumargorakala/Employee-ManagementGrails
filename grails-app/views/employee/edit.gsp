

<!DOCTYPE html>
<html>
<head>
    <title>Employee Information Form</title>
    <style>
    /* Basic styling for the form container */
    .form-container {
        width: 300px;
        margin: auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    /* Styling for form labels */
    label {
        display: block;
        margin-bottom: 5px;
    }

    /* Styling for form input fields */
    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    /* Styling for submit button */
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 3px;
        cursor: pointer;
    }

    /* Hover effect for submit button */
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Employee Information</h2>
    <g:form controller="employee" action="update">
        <input type="hidden" name="id" value="${employeeRef.id}" />
        <label for="name">First Name:</label>
        <g:textField name="name" value="${employeeRef.firstName}" /><br>
        <label for="name">Last Name:</label>
        <g:textField name="name" value="${employeeRef.lastName}" /><br>
        <label for="name">Designation:</label>
        <g:textField name="name" value="${employeeRef.designation}" /><br>
        <label for="name">Age:</label>
        <g:textField name="number" value="${employeeRef.age}" /><br>
        <g:submitButton name="Update" />
    </g:form>
</div>
</body>
</html>

