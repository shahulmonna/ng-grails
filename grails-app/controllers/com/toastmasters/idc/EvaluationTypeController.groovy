package com.toastmasters.idc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EvaluationTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EvaluationType.list(params), model:[evaluationTypeInstanceCount: EvaluationType.count()]
    }

    def show(EvaluationType evaluationTypeInstance) {
        respond evaluationTypeInstance
    }

    def create() {
        respond new EvaluationType(params)
    }

    @Transactional
    def save(EvaluationType evaluationTypeInstance) {
        if (evaluationTypeInstance == null) {
            notFound()
            return
        }

        if (evaluationTypeInstance.hasErrors()) {
            respond evaluationTypeInstance.errors, view:'create'
            return
        }

        evaluationTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'evaluationType.label', default: 'EvaluationType'), evaluationTypeInstance.id])
                redirect evaluationTypeInstance
            }
            '*' { respond evaluationTypeInstance, [status: CREATED] }
        }
    }

    def edit(EvaluationType evaluationTypeInstance) {
        respond evaluationTypeInstance
    }

    @Transactional
    def update(EvaluationType evaluationTypeInstance) {
        if (evaluationTypeInstance == null) {
            notFound()
            return
        }

        if (evaluationTypeInstance.hasErrors()) {
            respond evaluationTypeInstance.errors, view:'edit'
            return
        }

        evaluationTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EvaluationType.label', default: 'EvaluationType'), evaluationTypeInstance.id])
                redirect evaluationTypeInstance
            }
            '*'{ respond evaluationTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EvaluationType evaluationTypeInstance) {

        if (evaluationTypeInstance == null) {
            notFound()
            return
        }

        evaluationTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EvaluationType.label', default: 'EvaluationType'), evaluationTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'evaluationType.label', default: 'EvaluationType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
