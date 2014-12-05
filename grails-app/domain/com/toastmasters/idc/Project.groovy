package com.toastmasters.idc

/**
 * Created by syedshahul on 4/12/14.*/
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
