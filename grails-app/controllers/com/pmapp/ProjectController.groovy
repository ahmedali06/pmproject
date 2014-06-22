package com.pmapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.json.JSONObject

class ProjectController implements Serializable{

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
    }

    def create() {
        respond new Project(params)
    }

    def save() {

        println("called save"+params.toString()+":"+request.JSON)
        def data=new JSONObject(request.JSON)
        def projectInstance=new Project()
        println("init Project")
        projectInstance.name=data.name
        projectInstance.description=data.description
        println("before save")
        def createdProject=projectInstance.save(flush: true,failOnError: true)
        println("after save")

        render(contentType: 'text/json') {[
                'status': createdProject ? "SUCCESS" : "FAIL"
        ]}
    }

    def edit(Project projectInstance) {
        respond projectInstance
    }

    def update(){

        println("called update"+params.toString()+":"+request.JSON)
        def data=new JSONObject(request.JSON)
        def projectInstance=Project.get(data.id)
        println("init Project")
        projectInstance.name=data.name
        projectInstance.description=data.description
        println("before save")
        def createdProject=projectInstance.save(flush: true,failOnError: true)
        println("after save")

        render(contentType: 'text/json') {[
                'updatedId':createdProject.id,
                'status': createdProject ? "SUCCESS" : "FAIL"
        ]}
    }


    def delete() {
        println("called delete"+params.id)
        if(params.id){
        def projectInstance=Project.get(params.id)
            def isDeleted=projectInstance.delete flush:true

            render(contentType: 'text/json') {[
                    'status': isDeleted ? "SUCCESS" : "FAIL"
            ]}
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
