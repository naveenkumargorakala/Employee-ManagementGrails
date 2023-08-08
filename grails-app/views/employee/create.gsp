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
    </div>
    </body>
    </html>
