class UrlMappings {

	static mappings = {
		"/api/members"(resources:'member')


		name agenda: "/agenda/${meetingNo}" {
			controller = "event"
			action = "renderAgenda"
		}
		"/$controller/$action?/$id?(.$format)?" {
			constraints {
				// apply constraints here
			}
		}

		"/"(view: "/index")
		"500"(controller: "error" ,action: index, view: "/error")

	}
}
