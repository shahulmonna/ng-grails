package com.toastmasters.idc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class Evaluation_TypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Evaluation_Type.list(params), model:[evaluation_TypeInstanceCount: Evaluation_Type.count()]
    }

    def show(Evaluation_Type evaluation_TypeInstance) {
        respond evaluation_TypeInstance
    }

    def create() {
        respond new Evaluation_Type(params)
    }

    @Transactional
    def save(Evaluation_Type evaluation_TypeInstance) {
        if (evaluation_TypeInstance == null) {
            notFound()
            return
        }

        if (evaluation_TypeInstance.hasErrors()) {
            respond evaluation_TypeInstance.errors, view:'create'
            return
        }

        evaluation_TypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'evaluation_Type.label', default: 'Evaluation_Type'), evaluation_TypeInstance.id])
                redirect evaluation_TypeInstance
            }
            '*' { respond evaluation_TypeInstance, [status: CREATED] }
        }
    }

    def edit(Evaluation_Type evaluation_TypeInstance) {
        respond evaluation_TypeInstance
    }

    @Transactional
    def update(Evaluation_Type evaluation_TypeInstance) {
        if (evaluation_TypeInstance == null) {
            notFound()
            return
        }

        if (evaluation_TypeInstance.hasErrors()) {
            respond evaluation_TypeInstance.errors, view:'edit'
            return
        }

        evaluation_TypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Evaluation_Type.label', default: 'Evaluation_Type'), evaluation_TypeInstance.id])
                redirect evaluation_TypeInstance
            }
            '*'{ respond evaluation_TypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Evaluation_Type evaluation_TypeInstance) {

        if (evaluation_TypeInstance == null) {
            notFound()
            return
        }

        evaluation_TypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Evaluation_Type.label', default: 'Evaluation_Type'), evaluation_TypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'evaluation_Type.label', default: 'Evaluation_Type'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
