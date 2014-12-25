package com.toastmasters.idc

import groovy.transform.ToString

/**
 * Created by syedshahul on 4/12/14.*/

@ToString
class Project implements Serializable{
	static mapWith = "mongo"

	static belongsTo = [educationProgram: EducationProgram]

	String name;

	static constraints = {
	}
	static mapping = {
		index name:true
	}
}
