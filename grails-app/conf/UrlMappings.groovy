class UrlMappings {

	static mappings = {
		"/api/members"(resources:'member')


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
