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
@RestApi(name = "Club Services", description = "Methods for managing Club")
class ClubController extends RestfulController<Club>{

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	ClubController(){
		super(Club)
	}
	@RestApiMethod(description="Get Clubs",listing = true)
	@RestApiParams(params=[
			@RestApiParam(name="max", type="int", paramType = RestApiParamType.PATH,
					description = "max limit")
	])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Club.list(params), [status: OK]
    }

	@RestApiMethod(description="Get a Club")
	@RestApiParams(params=[
			@RestApiParam(name="number", type="String", paramType = RestApiParamType.PATH,
					description = "Club Number")
	])
	def show() {
		respond Club.findByNumber(params.number), [status: OK]
	}

	@Transactional
	@RestApiMethod(description="Create Club")
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
		@RestApiMethod(description="Update Club")
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
		@RestApiMethod(description="Delete Club")
    def delete(Club clubInstance) {

        if (clubInstance == null) {
            render status: NOT_FOUND
            return
        }

        clubInstance.delete flush:true
        render status: NO_CONTENT
    }
}
