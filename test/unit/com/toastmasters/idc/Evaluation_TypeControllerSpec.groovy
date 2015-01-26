package com.toastmasters.idc



import grails.test.mixin.*
import spock.lang.*

@TestFor(Evaluation_TypeController)
@Mock(EvaluationType)
class Evaluation_TypeControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.evaluation_TypeInstanceList
            model.evaluation_TypeInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.evaluation_TypeInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def evaluation_Type = new EvaluationType()
            evaluation_Type.validate()
            controller.save(evaluation_Type)

        then:"The create view is rendered again with the correct model"
            model.evaluation_TypeInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            evaluation_Type = new EvaluationType(params)

            controller.save(evaluation_Type)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/evaluation_Type/show/1'
            controller.flash.message != null
            EvaluationType.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def evaluation_Type = new EvaluationType(params)
            controller.show(evaluation_Type)

        then:"A model is populated containing the domain instance"
            model.evaluation_TypeInstance == evaluation_Type
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def evaluation_Type = new EvaluationType(params)
            controller.edit(evaluation_Type)

        then:"A model is populated containing the domain instance"
            model.evaluation_TypeInstance == evaluation_Type
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/evaluation_Type/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def evaluation_Type = new EvaluationType()
            evaluation_Type.validate()
            controller.update(evaluation_Type)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.evaluation_TypeInstance == evaluation_Type

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            evaluation_Type = new EvaluationType(params).save(flush: true)
            controller.update(evaluation_Type)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/evaluation_Type/show/$evaluation_Type.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/evaluation_Type/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def evaluation_Type = new EvaluationType(params).save(flush: true)

        then:"It exists"
            EvaluationType.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(evaluation_Type)

        then:"The instance is deleted"
            EvaluationType.count() == 0
            response.redirectedUrl == '/evaluation_Type/index'
            flash.message != null
    }
}