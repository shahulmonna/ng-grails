package com.toastmasters.idc

import grails.rest.RestfulController
import org.restapidoc.annotation.RestApi
import org.restapidoc.annotation.RestApiMethod
import org.restapidoc.annotation.RestApiParam
import org.restapidoc.annotation.RestApiParams
import org.restapidoc.pojo.RestApiParamType

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@RestApi(name = "Event Services", description = "Methods for managing Events")
class EventController extends RestfulController<Event> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	EventController(){
		super(Event)
	}

	@RestApiMethod(description="Get Events",listing = true)
	@RestApiParams(params=[
			@RestApiParam(name="max", type="int", paramType = RestApiParamType.PATH,
					description = "max limit")
	])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Event.list(params), [status: OK]
    }


	@RestApiMethod(description="Get a Event")
	@RestApiParams(params=[
			@RestApiParam(name="id", type="int", paramType = RestApiParamType.PATH,
					description = "Event Number")
	])
	def show() {
		respond Event.findByEventNumber(params.id), [status: OK]
	}

	@Transactional
		@RestApiMethod(description="Create Event")
    def save(Event eventInstance) {
        if (eventInstance == null) {
            render status: NOT_FOUND
            return
        }

        eventInstance.validate()
        if (eventInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        eventInstance.save flush:true
        respond eventInstance, [status: CREATED]
    }

    @Transactional
		@RestApiMethod(description="Update Event")
    def update(Event eventInstance) {
        if (eventInstance == null) {
            render status: NOT_FOUND
            return
        }

        eventInstance.validate()
        if (eventInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        eventInstance.save flush:true
        respond eventInstance, [status: OK]
    }

    @Transactional
		@RestApiMethod(description="Delete Event")
    def delete(Event eventInstance) {

        if (eventInstance == null) {
            render status: NOT_FOUND
            return
        }

        eventInstance.delete flush:true
        render status: NO_CONTENT
    }
}
