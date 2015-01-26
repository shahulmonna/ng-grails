class UrlMappings {

	static mappings = {
		"/api/clubs"(resources:'educationProgram')
		"/api/educationprograms"(resources:'educationProgram')
		"/api/evaluations"(resources:'evaluation')
		"/api/evaluationtypes"(resources:'evaluationType')
		"/api/events"(resources:'event')
		"/api/members"(resources:'member')
		"/api/projects"(resources:'project')
		"/api/socialnetworks"(resources:'socialNetwork')
		"/api/speechs"(resources:'speech')
		"/api/speechtypes"(resources:'speechTypes')




		name agenda: "/agenda-pdf/${meetingNo}" {
			controller = "event"
			action = "renderAgenda"
		}

		name agenda: "/agenda/${meetingNo}" {
			controller = "event"
			action = "agenda"
		}

		"/$controller/$action?/$id?(.$format)?" {
			constraints {
				// apply constraints here
			}
		}

		"/"(view: "/index")
		"/index-bkp"(view: "/index-bkp")
		"500"(controller: "error" ,action: index, view: "/error")

	}
}
