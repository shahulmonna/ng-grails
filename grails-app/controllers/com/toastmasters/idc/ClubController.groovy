package com.toastmasters.idc


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClubController {
    def reportService;
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        respond Club.list(params), model:[clubInstanceCount: Club.count()]
    }

    def show(Club clubInstance) {
        respond clubInstance
    }

    def create() {
        respond new Club(params)
    }

    @Transactional
    def save(Club clubInstance) {
        if (clubInstance == null) {
            notFound()
            return
        }

        if (clubInstance.hasErrors()) {
            respond clubInstance.errors, view:'create'
            return
        }

        clubInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'club.label', default: 'Club'), clubInstance.id])
                redirect clubInstance
            }
            '*' { respond clubInstance, [status: CREATED] }
        }
    }

    def edit(Club clubInstance) {
        respond clubInstance
    }

    @Transactional
    def update(Club clubInstance) {
        if (clubInstance == null) {
            notFound()
            return
        }

        if (clubInstance.hasErrors()) {
            respond clubInstance.errors, view:'edit'
            return
        }

        clubInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message',
										args: [message(code: 'club.label', default: 'Club'), clubInstance.id])
                redirect clubInstance
            }
            '*'{ respond clubInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Club clubInstance) {

        if (clubInstance == null) {
            notFound()
            return
        }

        clubInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message',
										args: [message(code: 'club.label', default: 'Club'), clubInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'club.label', default: 'Club'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
