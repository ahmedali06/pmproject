package com.pmapp

class Comment {

    String description
    String commentsBy
    Task task

    static belongsTo = [task:Task]
    static constraints = {
        description blank: false, nullable: false
        commentsBy blank: false, nullable: false
    }
}
