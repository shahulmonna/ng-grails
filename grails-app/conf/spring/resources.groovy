import com.toastmasters.idc.Club
import com.toastmasters.idc.EducationProgram
import com.toastmasters.idc.Evaluation
import com.toastmasters.idc.EvaluationType
import com.toastmasters.idc.Event
import com.toastmasters.idc.Member
import com.toastmasters.idc.Project
import com.toastmasters.idc.SocialNetwork
import com.toastmasters.idc.Speech
import com.toastmasters.idc.SpeechType

import grails.rest.render.json.JsonCollectionRenderer
import grails.rest.render.json.JsonRenderer
import grails.rest.render.xml.XmlCollectionRenderer
import grails.rest.render.xml.XmlRenderer

// Place your Spring DSL code here
beans = {
	clubXmlRenderer(XmlRenderer, Club) {
		excludes = ['class', 'dateCreated']
	}
	clubJSONRenderer(JsonRenderer, Club) {
		excludes = ['class', 'dateCreated']
	}

	educationProgramXmlRenderer(XmlRenderer, EducationProgram) {
		excludes = ['class', 'dateCreated']
	}
	educationProgramJSONRenderer(JsonRenderer, EducationProgram) {
		excludes = ['class', 'dateCreated']
	}

	evaluationXmlRenderer(XmlRenderer, Evaluation) {
		excludes = ['class', 'dateCreated']
	}
	evaluationJSONRenderer(JsonRenderer, Evaluation) {
		excludes = ['class', 'dateCreated']
	}

	evaluationTypeProgramXmlRenderer(XmlRenderer, EvaluationType) {
		excludes = ['class', 'dateCreated']
	}
	evaluationTypeProgramJSONRenderer(JsonRenderer, EvaluationType) {
		excludes = ['class', 'dateCreated']
	}

	eventXmlRenderer(XmlRenderer, Event) {
		excludes = ['class', 'dateCreated']
	}
	eventJSONRenderer(JsonRenderer, Event) {
		excludes = ['class', 'dateCreated']
	}

	memberXmlRenderer(XmlRenderer, Member) {
		excludes = ['class', 'dateCreated']
	}
	memberJSONRenderer(JsonRenderer, Member) {
		excludes = ['class', 'dateCreated']
	}

	projectXmlRenderer(XmlRenderer, Project) {
		excludes = ['class', 'dateCreated']
	}
	projectJSONRenderer(JsonRenderer, Project) {
		excludes = ['class', 'dateCreated']
	}

	socialNetworkXmlRenderer(XmlRenderer, SocialNetwork) {
		excludes = ['class', 'dateCreated']
	}
	socialNetworkJSONRenderer(JsonRenderer, SocialNetwork) {
		excludes = ['class', 'dateCreated']
	}

	speechXmlRenderer(XmlRenderer, Speech) {
		excludes = ['class', 'dateCreated']
	}
	speechJSONRenderer(JsonRenderer, Speech) {
		excludes = ['class', 'dateCreated']
	}

	speechTypeXmlRenderer(XmlRenderer, SpeechType) {
		excludes = ['class', 'dateCreated']
	}
	speechTypeJSONRenderer(JsonRenderer, SpeechType) {
		excludes = ['class', 'dateCreated']
	}

}
