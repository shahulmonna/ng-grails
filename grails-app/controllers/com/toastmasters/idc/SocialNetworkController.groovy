package com.toastmasters.idc

import grails.rest.RestfulController

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SocialNetworkController extends RestfulController<SocialNetwork>{

    static responseFormats = ['json', 'xml']
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	SocialNetworkController() {
		super(SocialNetwork)
	}

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond SocialNetwork.list(params), [status: OK]
    }

    @Transactional
    def save(SocialNetwork socialNetworkInstance) {
        if (socialNetworkInstance == null) {
            render status: NOT_FOUND
            return
        }

        socialNetworkInstance.validate()
        if (socialNetworkInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        socialNetworkInstance.save flush:true
        respond socialNetworkInstance, [status: CREATED]
    }

    @Transactional
    def update(SocialNetwork socialNetworkInstance) {
        if (socialNetworkInstance == null) {
            render status: NOT_FOUND
            return
        }

        socialNetworkInstance.validate()
        if (socialNetworkInstance.hasErrors()) {
            render status: NOT_ACCEPTABLE
            return
        }

        socialNetworkInstance.save flush:true
        respond socialNetworkInstance, [status: OK]
    }

    @Transactional
    def delete(SocialNetwork socialNetworkInstance) {

        if (socialNetworkInstance == null) {
            render status: NOT_FOUND
            return
        }

        socialNetworkInstance.delete flush:true
        render status: NO_CONTENT
    }
}
