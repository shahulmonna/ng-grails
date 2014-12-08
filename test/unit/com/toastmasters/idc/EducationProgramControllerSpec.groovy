package com.toastmasters.idc



import grails.test.mixin.*
import spock.lang.*

@TestFor(EducationProgramController)
@Mock(EducationProgram)
class EducationProgramControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.educationProgramInstanceList
            model.educationProgramInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.educationProgramInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def educationProgram = new EducationProgram()
            educationProgram.validate()
            controller.save(educationProgram)

        then:"The create view is rendered again with the correct model"
            model.educationProgramInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            educationProgram = new EducationProgram(params)

            controller.save(educationProgram)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/educationProgram/show/1'
            controller.flash.message != null
            EducationProgram.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def educationProgram = new EducationProgram(params)
            controller.show(educationProgram)

        then:"A model is populated containing the domain instance"
            model.educationProgramInstance == educationProgram
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def educationProgram = new EducationProgram(params)
            controller.edit(educationProgram)

        then:"A model is populated containing the domain instance"
            model.educationProgramInstance == educationProgram
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/educationProgram/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def educationProgram = new EducationProgram()
            educationProgram.validate()
            controller.update(educationProgram)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.educationProgramInstance == educationProgram

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            educationProgram = new EducationProgram(params).save(flush: true)
            controller.update(educationProgram)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/educationProgram/show/$educationProgram.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/educationProgram/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def educationProgram = new EducationProgram(params).save(flush: true)

        then:"It exists"
            EducationProgram.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(educationProgram)

        then:"The instance is deleted"
            EducationProgram.count() == 0
            response.redirectedUrl == '/educationProgram/index'
            flash.message != null
    }
}
