package employeemanagement.com.example

class Employee {

    String firstName;
    String lastName;
    String designation;
    String age;

    static constraints = {
        firstName blank: false
        lastName blank: false
        designation nullable: true
    }
}
