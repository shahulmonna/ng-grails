package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@ToString(includeNames = false, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
class EducationProgram implements Serializable{
	static mapWith = "mongo"
	static hasMany = [projects:Project]
	String name;

    static constraints = {
    }
	static mapping = {
		index name:true
	}
}
