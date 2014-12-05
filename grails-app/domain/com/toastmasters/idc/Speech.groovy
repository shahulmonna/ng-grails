package com.toastmasters.idc

/**
 * Created by syedshahul on 4/12/14.*/
class Speech implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [events: Event]
	static hasMany = [speechTypes:SpeechType]
	static embedded = ['speaker','evaluator','project']

	String title;
	Member speaker;
	Member evaluator;
	Project project;

	static constraints = {
	}
	static mapping = {
		index title:true
	}
}
