package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EvaluationController extends RestfulController<Evaluation> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	EvaluationController() {
		super(Evaluation)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Evaluation.list(params), [status: OK]
    }

    @Transactional
    def save(Evaluation evaluationInstance) {
        if (evaluationInstance == null) {
            render status: NOT_FOUND
            return
        }

        evaluationInstance.validate()
        if (evaluationInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        evaluationInstance.save flush:true
        respond evaluationInstance, [status: CREATED]
    }

    @Transactional
    def update(Evaluation evaluationInstance) {
        if (evaluationInstance == null) {
            render status: NOT_FOUND
            return
        }

        evaluationInstance.validate()
        if (evaluationInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        evaluationInstance.save flush:true
        respond evaluationInstance, [status: OK]
    }

    @Transactional
    def delete(Evaluation evaluationInstance) {

        if (evaluationInstance == null) {
            render status: NOT_FOUND
            return
        }

        evaluationInstance.delete flush:true
        render status: NO_CONTENT
    }
}
