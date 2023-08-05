package employeemanagement.com.example

class EmployeeController {

    EmployeeService EmployeeService
    

    def index() {
        def employeeList = Employee.list()
        [EmployeeList : employeeList]
    }
    def create() {
        [employeeRef = new Employee(params)]
    }

    def save(){
        def employeeRef = new Employee(params)
        if(employeeRef.save())
            redirect(action:"index")
        else
            render(view: "create",model: [employee:employeeRef])
    }
     def edit( Long id) {
         def employeeRef = Employee.get(id)
         [employeeRef:employeeRef]
     }

    def update() {
        def employeeRef = Employee.get(params.id)
        employeeRef.properties=params
        if(employeeRef.save()){
            redirect(action: "index")
        }
        else
            render(view: "edit",model: [employeeRef: employeeRef])
    }
    def delete(Long id) {
        def employeeRef= Employee.get(id)
        employeeRef.delete()
        redirect(action: "index")
    }

}

