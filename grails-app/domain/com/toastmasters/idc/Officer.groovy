package com.toastmasters.idc

/**
 * Created by syedshahul on 5/12/14.*/
class Officer implements Serializable{
	static mapWith = "mongo"

	static belongsTo = [club: Club]
	static embedded = ['member','role']

	Member member;
	Role role;
	static constraints = {
	}

}
