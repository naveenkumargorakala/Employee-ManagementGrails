package employeemanagement.com.example


class EmployeeController {

    def index() {
        def employeeList = Employee.list()
        [EmployeeList : employeeList]
    }

    //save contact details
    def save(){
        def employeeRef = new Employee(params)
        if(employeeRef.save())
            redirect( action: "index")
        else
            render(view: "create",model: [employeeRef:employeeRef])
    }

    def create() {
        [ employeeRef : new Employee(params)]
    }


    //edit contact
    def edit( Long id) {
         def employeeRef = Employee.get(id)
         [employeeRef:employeeRef]
     }

    //update contact
    def update() {
        def employeeRef = Employee.get(params.id)
        employeeRef.properties=params
        if(employeeRef.save()){
            redirect(action: "index")
        }
        else
            render(view: "edit",model: [employeeRef: employeeRef])
    }

    //delete contact
    def delete(Long id) {
        def employeeRef= Employee.get(id)
        employeeRef.delete()
        redirect(action: "index")
    }

}

