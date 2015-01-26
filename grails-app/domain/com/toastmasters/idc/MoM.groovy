package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

/**
 * Created by syedshahul on 25/12/14.*/

@ToString(includeNames = false, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
class MoM implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [event: Event]
}
