package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpeechTypeController extends RestfulController<SpeechType> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	SpeechTypeController() {
		super(SpeechType)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SpeechType.list(params), [status: OK]
    }

    @Transactional
    def save(SpeechType speechTypeInstance) {
        if (speechTypeInstance == null) {
            render status: NOT_FOUND
            return
        }

        speechTypeInstance.validate()
        if (speechTypeInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        speechTypeInstance.save flush:true
        respond speechTypeInstance, [status: CREATED]
    }

    @Transactional
    def update(SpeechType speechTypeInstance) {
        if (speechTypeInstance == null) {
            render status: NOT_FOUND
            return
        }

        speechTypeInstance.validate()
        if (speechTypeInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        speechTypeInstance.save flush:true
        respond speechTypeInstance, [status: OK]
    }

    @Transactional
    def delete(SpeechType speechTypeInstance) {

        if (speechTypeInstance == null) {
            render status: NOT_FOUND
            return
        }

        speechTypeInstance.delete flush:true
        render status: NO_CONTENT
    }
}
