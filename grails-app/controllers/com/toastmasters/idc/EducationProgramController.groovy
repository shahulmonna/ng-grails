package com.toastmasters.idc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EducationProgramController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EducationProgram.list(params), model:[educationProgramInstanceCount: EducationProgram.count()]
    }

    def show(EducationProgram educationProgramInstance) {
        respond educationProgramInstance
    }

    def create() {
        respond new EducationProgram(params)
    }

    @Transactional
    def save(EducationProgram educationProgramInstance) {
        if (educationProgramInstance == null) {
            notFound()
            return
        }

        if (educationProgramInstance.hasErrors()) {
            respond educationProgramInstance.errors, view:'create'
            return
        }

        educationProgramInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'educationProgram.label', default: 'EducationProgram'), educationProgramInstance.id])
                redirect educationProgramInstance
            }
            '*' { respond educationProgramInstance, [status: CREATED] }
        }
    }

    def edit(EducationProgram educationProgramInstance) {
        respond educationProgramInstance
    }

    @Transactional
    def update(EducationProgram educationProgramInstance) {
        if (educationProgramInstance == null) {
            notFound()
            return
        }

        if (educationProgramInstance.hasErrors()) {
            respond educationProgramInstance.errors, view:'edit'
            return
        }

        educationProgramInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EducationProgram.label', default: 'EducationProgram'), educationProgramInstance.id])
                redirect educationProgramInstance
            }
            '*'{ respond educationProgramInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EducationProgram educationProgramInstance) {

        if (educationProgramInstance == null) {
            notFound()
            return
        }

        educationProgramInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EducationProgram.label', default: 'EducationProgram'), educationProgramInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'educationProgram.label', default: 'EducationProgram'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
