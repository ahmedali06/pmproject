package com.pmapp

import com.pmapp.user.GenderEnum
import com.pmapp.auth.Person
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.web.json.JSONObject

class PersonController implements Serializable{
    static responseFormats = ['json', 'xml']
    static allowedMethods = ['save':'POST']
    def index() { }

    def save() {

        println("called save"+params.toString()+":"+request.JSON)
        def data=new JSONObject(request.JSON)
        def person=new Person()
//        println("init person")
        person.firstName=data.firstname
        person.lastName=data.lastname
        person.password=data.password
        person.email=data.emailaddress
        person.username=data.emailaddress
        person.gender=GenderEnum.valueOf(data.gender)
        person.enabled=true
//        println("before save")
        def createdPerson=person.save(flush: true,failOnError: true)
//        println("after save")
        println(createdPerson)
        render(contentType: 'text/json') {[
                'status': createdPerson ? "SUCCESS" : "FAIL"
        ]}
    }
    @Secured(['ROLE_ADMIN'])
    def testcal(){
        render "called from secure"
    }
    @Secured(['permitAll'])
    def newtestcal(){
        render "called from public"
    }

}
