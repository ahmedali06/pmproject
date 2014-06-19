package com.pmapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.json.JSONObject

//@Transactional(readOnly = true)
class ProjectController implements Serializable{

//    static namespace = 'blogV1'
    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE",show:"GET"]

    def index(Integer max) {
        println("called index")
        params.max = 100;//Math.min(max ?: 10, 100)
        respond Project.list(params), model:[projectInstanceCount: Project.count()]
    }

    def show() {
        if(params.id){
            respond Project.get(params.id)
        }
//        respond projectInstance
    }

    def create() {
        respond new Project(params)
    }

    def save() {

        println("called save"+params.toString()+":"+request.JSON)
        def data=new JSONObject(request.JSON)
        def project=new Project()
        println("init Project")
        project.name=data.name
        project.description=data.description
        println("before save")
        def createdProject=project.save(flush: true,failOnError: true)
        println("after save")

        render(contentType: 'text/json') {[
                'results': createdProject,
                'status': createdProject ? "Success" : "Not Success"
        ]}
    }
//    @Transactional
//    def save(Project projectInstance) {
//        if (projectInstance == null) {
//            notFound()
//            return
//        }
//
//        if (projectInstance.hasErrors()) {
//            respond projectInstance.errors, view:'create'
//            return
//        }
//
//        projectInstance.save flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
//                redirect projectInstance
//            }
//            '*' { respond projectInstance, [status: CREATED] }
//        }
//    }

    def edit(Project projectInstance) {
        respond projectInstance
    }

    def update(){
        println("called update"+params.toString()+":"+request.JSON)
        def data=new JSONObject(request.JSON)
        def project=Project.get(data.project_id)
        println("init Project")
        project.name=data.name
        project.description=data.description
        println("before save")
        def createdProject=project.save(flush: true,failOnError: true)
        println("after save")

        render(contentType: 'text/json') {[
                'results': createdProject,
                'status': createdProject ? "Success" : "Not Success"
        ]}
    }
//    @Transactional
//    def update(Project projectInstance) {
//        if (projectInstance == null) {
//            notFound()
//            return
//        }
//
//        if (projectInstance.hasErrors()) {
//            respond projectInstance.errors, view:'edit'
//            return
//        }
//
//        projectInstance.save flush:true
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.updated.message', args: [message(code: 'Project.label', default: 'Project'), projectInstance.id])
//                redirect projectInstance
//            }
//            '*'{ respond projectInstance, [status: OK] }
//        }
//    }

    @Transactional
    def delete(Project projectInstance) {

        if (projectInstance == null) {
            notFound()
            return
        }

        projectInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Project.label', default: 'Project'), projectInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
