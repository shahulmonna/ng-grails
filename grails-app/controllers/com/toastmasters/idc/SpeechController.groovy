package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpeechController extends RestfulController<Speech> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	SpeechController() {
		super(Speech)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Speech.list(params), [status: OK]
    }

    @Transactional
    def save(Speech speechInstance) {
        if (speechInstance == null) {
            render status: NOT_FOUND
            return
        }

        speechInstance.validate()
        if (speechInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        speechInstance.save flush:true
        respond speechInstance, [status: CREATED]
    }

    @Transactional
    def update(Speech speechInstance) {
        if (speechInstance == null) {
            render status: NOT_FOUND
            return
        }

        speechInstance.validate()
        if (speechInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        speechInstance.save flush:true
        respond speechInstance, [status: OK]
    }

    @Transactional
    def delete(Speech speechInstance) {

        if (speechInstance == null) {
            render status: NOT_FOUND
            return
        }

        speechInstance.delete flush:true
        render status: NO_CONTENT
    }
}
