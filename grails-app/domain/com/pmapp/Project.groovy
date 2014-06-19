package com.pmapp

class Project {

    String name
    String description

    static hasMany = [task:Task]
    static constraints = {
        name blank: false, nullable: false
        description blank: false, nullable: false
    }
}
