package com.toastmasters.idc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpeechTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SpeechType.list(params), model:[speechTypeInstanceCount: SpeechType.count()]
    }

    def show(SpeechType speechTypeInstance) {
        respond speechTypeInstance
    }

    def create() {
        respond new SpeechType(params)
    }

    @Transactional
    def save(SpeechType speechTypeInstance) {
        if (speechTypeInstance == null) {
            notFound()
            return
        }

        if (speechTypeInstance.hasErrors()) {
            respond speechTypeInstance.errors, view:'create'
            return
        }

        speechTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', 
										args: [message(code: 'speechtype.label', default: 'Speech Type'), speechTypeInstance.id])
                redirect speechTypeInstance
            }
            '*' { respond speechTypeInstance, [status: CREATED] }
        }
    }

    def edit(SpeechType speechTypeInstance) {
        respond speechTypeInstance
    }

    @Transactional
    def update(SpeechType speechTypeInstance) {
        if (speechTypeInstance == null) {
            notFound()
            return
        }

        if (speechTypeInstance.hasErrors()) {
            respond speechTypeInstance.errors, view:'edit'
            return
        }

        speechTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'speechtype.label', default: 'Speech Type'), speechTypeInstance.id])
                redirect speechTypeInstance
            }
            '*'{ respond speechTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(SpeechType speechTypeInstance) {

        if (speechTypeInstance == null) {
            notFound()
            return
        }

        speechTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'speechtype.label', default: 'Speech Type'), speechTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'speechtype.label', default: 'Speech Type'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
