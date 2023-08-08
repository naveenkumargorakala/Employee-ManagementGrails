package employeemanagement.com.example


class EmployeeController {

    def index() {
        def employeeList = Employee.list()
        [employeeList: employeeList]
    }

    //save contact details
    def save() {
        def employeeRef = new Employee(params)
        if (employeeRef.save())
            redirect(action: "show")
        else
            render(view: "create", model: [employeeRef: employeeRef])
    }

    def show() {
        def employeeList = Employee.list()
        [employeeList: employeeList]
    }

    def create() {
        [employeeRef: new Employee(params)]
    }


    //edit contact

    def edit(Long id) {
        def employeeRef = Employee.get(id)
        [employeeRef: employeeRef]
    }

    def update(Long id) {
        def employeeRef = Employee.get(id)

        if (employeeRef) {
            employeeRef.properties = params  // Update employee properties from form data
            if (employeeRef.save()) {
                flash.message = "Employee updated successfully."
                redirect(action: "show", id: id)
            } else {
                flash.error = "Failed to update employee."
                render(view: "edit", model: [employeeRef: employeeRef])
            }
        } else {
            flash.error = "Employee not found."
            redirect(action: "show")
        }
    }


    //delete contact
    def delete(Long id) {
        def employee = Employee.get(id)
        if (employee) {
            employee.delete()
            flash.message = "Employee deleted successfully"
        } else {
            flash.message = "Employee not found"
        }
        redirect(action: "show")
    }
}
