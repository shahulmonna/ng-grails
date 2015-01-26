package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClubController extends RestfulController<Club>{

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	ClubController(){
		super(Club)
	}
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Club.list(params), [status: OK]
    }

    @Transactional
    def save(Club clubInstance) {
        if (clubInstance == null) {
            render status: NOT_FOUND
            return
        }

        clubInstance.validate()
        if (clubInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        clubInstance.save flush:true
        respond clubInstance, [status: CREATED]
    }

    @Transactional
    def update(Club clubInstance) {
        if (clubInstance == null) {
            render status: NOT_FOUND
            return
        }

        clubInstance.validate()
        if (clubInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        clubInstance.save flush:true
        respond clubInstance, [status: OK]
    }

    @Transactional
    def delete(Club clubInstance) {

        if (clubInstance == null) {
            render status: NOT_FOUND
            return
        }

        clubInstance.delete flush:true
        render status: NO_CONTENT
    }
}
