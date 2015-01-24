package com.toastmasters.idc

import groovy.transform.ToString

@ToString
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
