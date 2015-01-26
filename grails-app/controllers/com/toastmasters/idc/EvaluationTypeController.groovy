package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EvaluationTypeController extends RestfulController<EvaluationType> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	EvaluationTypeController() {
		super(EvaluationType)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EvaluationType.list(params), [status: OK]
    }

    @Transactional
    def save(EvaluationType evaluationTypeInstance) {
        if (evaluationTypeInstance == null) {
            render status: NOT_FOUND
            return
        }

        evaluationTypeInstance.validate()
        if (evaluationTypeInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        evaluationTypeInstance.save flush:true
        respond evaluationTypeInstance, [status: CREATED]
    }

    @Transactional
    def update(EvaluationType evaluationTypeInstance) {
        if (evaluationTypeInstance == null) {
            render status: NOT_FOUND
            return
        }

        evaluationTypeInstance.validate()
        if (evaluationTypeInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        evaluationTypeInstance.save flush:true
        respond evaluationTypeInstance, [status: OK]
    }

    @Transactional
    def delete(EvaluationType evaluationTypeInstance) {

        if (evaluationTypeInstance == null) {
            render status: NOT_FOUND
            return
        }

        evaluationTypeInstance.delete flush:true
        render status: NO_CONTENT
    }
}
