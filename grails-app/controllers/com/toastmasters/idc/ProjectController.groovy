package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjectController extends RestfulController<Project>{

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	ProjectController() {
		super(Project)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Project.list(params), [status: OK]
    }

    @Transactional
    def save(Project projectInstance) {
        if (projectInstance == null) {
            render status: NOT_FOUND
            return
        }

        projectInstance.validate()
        if (projectInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        projectInstance.save flush:true
        respond projectInstance, [status: CREATED]
    }

    @Transactional
    def update(Project projectInstance) {
        if (projectInstance == null) {
            render status: NOT_FOUND
            return
        }

        projectInstance.validate()
        if (projectInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        projectInstance.save flush:true
        respond projectInstance, [status: OK]
    }

    @Transactional
    def delete(Project projectInstance) {

        if (projectInstance == null) {
            render status: NOT_FOUND
            return
        }

        projectInstance.delete flush:true
        render status: NO_CONTENT
    }
}
