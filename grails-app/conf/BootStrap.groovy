import com.pmapp.auth.Person
import com.pmapp.auth.PersonRole
import com.pmapp.auth.Role
import com.pmapp.user.*
class BootStrap {
    def springSecurityService
    def init = { servletContext ->
        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def adminUser = Person.findByUsername('ahmed') ?: new Person( username: 'ahmed', password: 'ahmed', enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) { PersonRole.create adminUser, adminRole }
    }
    def destroy = {
    }
}
