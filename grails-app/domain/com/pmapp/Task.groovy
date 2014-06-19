package com.pmapp

class Task {

    String title
    String description
    String status
    String priority
    String reportedBy
    String assignTo
    Project project

    static belongsTo = [project:Project]
    static hasMany = [comment:Comment]
    static constraints = {
        title blank: false, nullable: false
        description blank: false, nullable: false
        status blank: false, nullable: false
        priority blank: false, nullable: false
        reportedBy blank: false, nullable: false
        assignTo blank: false, nullable: false

    }
}
