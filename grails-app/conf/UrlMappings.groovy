class UrlMappings {

	static mappings = {
		"/api/members"(resources:'member')


		name renderAgenda: "/renderAgenda" {
			controller = "event"
			action = "renderAgenda"
		}
		"/$controller/$action?/$id?(.$format)?" {
			constraints {
				// apply constraints here
			}
		}

		"/"(view: "/index")
		"500"(view: '/error')

	}
}
