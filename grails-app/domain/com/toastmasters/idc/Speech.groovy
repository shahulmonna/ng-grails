package com.toastmasters.idc

import groovy.transform.ToString

/**
 * Created by syedshahul on 4/12/14.*/
@ToString
class Speech implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [events: Event]
	static hasMany = [evaluations:Evaluation]
	String title;
	String speaker;

	String project;
	String speechType;
	String duration;
	String ahCounts;


	static constraints = {
	}
	static mapping = {
		compoundIndex speaker:"2d", speechType:1
	}
}
