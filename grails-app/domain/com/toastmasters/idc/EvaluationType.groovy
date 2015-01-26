package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@ToString(includeNames = false, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
class EvaluationType {
	static mapWith = "mongo"

  String name;
	String description;
	static constraints = {}
	static mapping = {
		index name:true
	}
}
