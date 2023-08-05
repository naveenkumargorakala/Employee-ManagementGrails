package employeemanagement

class UrlMappings {

    static mappings = {
        "/"(controller: "employee") {
            action= [GET:"index",POST:"save"]
        }

        "/employee/create"(controller: "employee",action: "create")
        "/employee/$id//edit"(controller: "employee",action: "edit")
        "/employee/$id/delete"(controller: "employee", action: "delete")
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
