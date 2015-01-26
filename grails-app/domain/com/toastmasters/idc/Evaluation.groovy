package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@ToString(includeNames = false, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
class Evaluation implements Serializable{
	static mapWith = "mongo"

	static belongsTo = [speech: Speech]

	Member evaluator; // belongs to member
	EvaluationType evaluationType
	String comments;
	static constraints = {}
	static mapping = {
		index evaluator:true
	}
}
