package com.toastmasters.idc

class EducationProgram implements Serializable{
	static mapWith = "mongo"
	String name;

    static constraints = {
    }
	static mapping = {
		index name:true
	}
}