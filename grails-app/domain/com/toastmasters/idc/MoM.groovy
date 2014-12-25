package com.toastmasters.idc

import groovy.transform.ToString

/**
 * Created by syedshahul on 25/12/14.*/

@ToString
class MoM implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [event: Event]
}
