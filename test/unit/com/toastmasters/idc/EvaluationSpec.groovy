package com.toastmasters.idc

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions*/
@TestFor(Evaluation)
class EvaluationSpec extends Specification {

	def setup() {
		mockDomain(Speech)
	}

	def cleanup() {}

	void "test something"() {
      when:
			def ev=new Evaluation(evaluator:'Sd',comments:'comments',
					speech:  mockDomain(Speech))
		ev.save();
		then:
		ev.evaluator=='Sd'
	}
}
