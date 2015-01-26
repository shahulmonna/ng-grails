package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EducationProgramController extends RestfulController<EducationProgram> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	EducationProgramController() {
		super(EducationProgram)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EducationProgram.list(params), [status: OK]
    }

    @Transactional
    def save(EducationProgram educationProgramInstance) {
        if (educationProgramInstance == null) {
            render status: NOT_FOUND
            return
        }

        educationProgramInstance.validate()
        if (educationProgramInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        educationProgramInstance.save flush:true
        respond educationProgramInstance, [status: CREATED]
    }

    @Transactional
    def update(EducationProgram educationProgramInstance) {
        if (educationProgramInstance == null) {
            render status: NOT_FOUND
            return
        }

        educationProgramInstance.validate()
        if (educationProgramInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        educationProgramInstance.save flush:true
        respond educationProgramInstance, [status: OK]
    }

    @Transactional
    def delete(EducationProgram educationProgramInstance) {

        if (educationProgramInstance == null) {
            render status: NOT_FOUND
            return
        }

        educationProgramInstance.delete flush:true
        render status: NO_CONTENT
    }
}
