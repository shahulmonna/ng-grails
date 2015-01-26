package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MemberController extends RestfulController<Member> {

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	MemberController() {
		super(Member)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Member.list(params), [status: OK]
    }

    @Transactional
    def save(Member memberInstance) {
        if (memberInstance == null) {
            render status: NOT_FOUND
            return
        }

        memberInstance.validate()
        if (memberInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        memberInstance.save flush:true
        respond memberInstance, [status: CREATED]
    }

    @Transactional
    def update(Member memberInstance) {
        if (memberInstance == null) {
            render status: NOT_FOUND
            return
        }

        memberInstance.validate()
        if (memberInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        memberInstance.save flush:true
        respond memberInstance, [status: OK]
    }

    @Transactional
    def delete(Member memberInstance) {

        if (memberInstance == null) {
            render status: NOT_FOUND
            return
        }

        memberInstance.delete flush:true
        render status: NO_CONTENT
    }
}
