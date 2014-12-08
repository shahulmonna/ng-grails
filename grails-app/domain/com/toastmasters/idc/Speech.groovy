package com.toastmasters.idc

/**
 * Created by syedshahul on 4/12/14.*/
class Speech implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [events: Event]

	String title;
	String speaker;
	String evaluator;
	String project;
	String speechType;
	String duration;
	String ahCounts;
	String comments;

	static constraints = {
	}
	static mapping = {
		compoundIndex speaker:"2d", speechType:1
	}
}
