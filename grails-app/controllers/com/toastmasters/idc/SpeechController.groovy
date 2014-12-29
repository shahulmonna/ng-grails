package com.toastmasters.idc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpeechController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Speech.list(params), model:[speechInstanceCount: Speech.count()]
    }

    def show(Speech speechInstance) {
        respond speechInstance
    }

    def create() {
        respond new Speech(params)
    }

    @Transactional
    def save(Speech speechInstance) {
        if (speechInstance == null) {
            notFound()
            return
        }

        if (speechInstance.hasErrors()) {
            respond speechInstance.errors, view:'create'
            return
        }

        speechInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'speech.label', default: 'Speech'), speechInstance.id])
                redirect speechInstance
            }
            '*' { respond speechInstance, [status: CREATED] }
        }
    }

    def edit(Speech speechInstance) {
        respond speechInstance
    }

    @Transactional
    def update(Speech speechInstance) {
        if (speechInstance == null) {
            notFound()
            return
        }

        if (speechInstance.hasErrors()) {
            respond speechInstance.errors, view:'edit'
            return
        }

        speechInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Speech.label', default: 'Speech'), speechInstance.id])
                redirect speechInstance
            }
            '*'{ respond speechInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Speech speechInstance) {

        if (speechInstance == null) {
            notFound()
            return
        }

        speechInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Speech.label', default: 'Speech'), speechInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'speech.label', default: 'Speech'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
