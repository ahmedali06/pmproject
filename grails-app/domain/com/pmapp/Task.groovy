package com.pmapp
 import com.pmapp.task.StatusEnum
import com.pmapp.task.PriorityEnum
class Task {

    String title
    String description
    StatusEnum status
    PriorityEnum priority
    int reportedBy
    int assignTo
    Project project

    static belongsTo = [project:Project]
    static hasMany = [comments:Comment]
    static constraints = {
        title blank: false, nullable: false
        description blank: false, nullable: false
        status blank: false, nullable: false
        priority blank: false, nullable: false
        reportedBy blank: false, nullable: false
        assignTo blank: false, nullable: false

    }
}
