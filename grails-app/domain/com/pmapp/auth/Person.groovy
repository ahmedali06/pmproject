package com.pmapp.auth

import com.pmapp.user.GenderEnum

class Person {

	transient springSecurityService

	String username
	String password
    String firstName
    String lastName
    String email
    GenderEnum gender
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false,nullable: true
        email blank: false, nullable: true
        password blank: false,size: 5..255
        firstName blank: true,nullable: true
        lastName blank: true,nullable: true
        gender blank: true,nullable: true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		PersonRole.findAllByPerson(this).collect { it.role } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
