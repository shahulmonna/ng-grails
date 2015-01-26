package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

/**
 * Created by syedshahul on 5/12/14.*/
@ToString(includeNames = false, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
class SpeechType implements Serializable{
	static mapWith = "mongo"

	String name; // prepared speech | table topics
	static constraints = {
	}
	static mapping = {
		index name:true
	}
}
