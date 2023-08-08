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
        if (flash.redirectParams) {
            [employeeRef: flash.redirectParams]
        }
        def employeeRef = Employee.get(id)
        [employeeRef: employeeRef]
    }

    //update contact
    def update(Long id) {

        def employeeRef = Employee.get(id)
        if (employeeRef) {
            [employeeRef: employeeRef]
        } else {
            flash.error = "Employee not found."
            redirect(action: "list")
        }
    }


    //delete contact
    def delete(Long id) {
        def employeeRef = Employee.get(id)
        employeeRef.delete()
        redirect(action: "show")
    }
}
