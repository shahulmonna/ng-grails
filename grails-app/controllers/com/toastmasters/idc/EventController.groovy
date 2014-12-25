package com.toastmasters.idc

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT
import static org.springframework.http.HttpStatus.OK

@Transactional(readOnly = true)
class EventController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
def pdfRenderingService
	def reportService
	def renderAgenda(){
		/*def args =[template:"/pdf/agenda",model:[memberInstanceList:Member.list()],
							 controller:this]*/
		params.eventNumber=8;
		def args = reportService.generateAgenda(params.eventNumber as String)
		args << [controller:this];
		pdfRenderingService.render(args,response)
	}
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Event.list(params), model:[eventInstanceCount: Event.count()]
    }

    def show(Event eventInstance) {
        respond eventInstance
    }

    def create() {
			respond (new Event(params), model:[speechTypes:SpeechType.list(),
																					projects:Project.list(),
																					members: Member.list()])
    }

    @Transactional
    def save(Event eventInstance) {
        if (eventInstance == null) {
            notFound()
            return
        }

        if (eventInstance.hasErrors()) {
            respond eventInstance.errors, view:'create'
            return
        }

        eventInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'event.label', default: 'Event'), eventInstance.id])
                redirect eventInstance
            }
            '*' { respond eventInstance, [status: CREATED] }
        }
    }

    def edit(Event eventInstance) {
        respond eventInstance
    }

    @Transactional
    def update(Event eventInstance) {
        if (eventInstance == null) {
            notFound()
            return
        }

        if (eventInstance.hasErrors()) {
            respond eventInstance.errors, view:'edit'
            return
        }

        eventInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message',
										args: [message(code: 'event.label', default: 'Event'), eventInstance.id])
                redirect eventInstance
            }
            '*'{ respond eventInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Event eventInstance) {

        if (eventInstance == null) {
            notFound()
            return
        }

        eventInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message',
										args: [message(code: 'event.label', default: 'Event'), eventInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'event.label', default: 'Event'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
