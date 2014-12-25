package com.toastmasters.idc

/**
 * Created by syedshahul on 16/12/14.*/
class ReportService {

	def generateAgenda(String eventNumber) {
		/*
		* 1. Club details(club name, number, officers details,
		* social network sites, etc.,)
		* 2. Meeting/Event details(date, time, roles and role players details)
		*
		* */
		def args = [template: "/pdf/agenda",
								model: [event: Event.findByEventNumber(eventNumber),
												userRoles:UserRole.findAll()]]
		return args;
	}
}
