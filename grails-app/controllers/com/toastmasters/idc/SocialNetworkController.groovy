package com.toastmasters.idc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SocialNetworkController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SocialNetwork.list(params), model:[socialNetworkInstanceCount: SocialNetwork.count()]
    }

    def show(SocialNetwork socialNetworkInstance) {
        respond socialNetworkInstance
    }

    def create() {
        respond new SocialNetwork(params)
    }

    @Transactional
    def save(SocialNetwork socialNetworkInstance) {
        if (socialNetworkInstance == null) {
            notFound()
            return
        }

        if (socialNetworkInstance.hasErrors()) {
            respond socialNetworkInstance.errors, view:'create'
            return
        }

        socialNetworkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'socialNetwork.label', default: 'SocialNetwork'), socialNetworkInstance.id])
                redirect socialNetworkInstance
            }
            '*' { respond socialNetworkInstance, [status: CREATED] }
        }
    }

    def edit(SocialNetwork socialNetworkInstance) {
        respond socialNetworkInstance
    }

    @Transactional
    def update(SocialNetwork socialNetworkInstance) {
        if (socialNetworkInstance == null) {
            notFound()
            return
        }

        if (socialNetworkInstance.hasErrors()) {
            respond socialNetworkInstance.errors, view:'edit'
            return
        }

        socialNetworkInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'SocialNetwork.label', default: 'SocialNetwork'), socialNetworkInstance.id])
                redirect socialNetworkInstance
            }
            '*'{ respond socialNetworkInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SocialNetwork socialNetworkInstance) {

        if (socialNetworkInstance == null) {
            notFound()
            return
        }

        socialNetworkInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'SocialNetwork.label', default: 'SocialNetwork'), socialNetworkInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'socialNetwork.label', default: 'SocialNetwork'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
