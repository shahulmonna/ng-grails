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
	Member speaker;

	Project project; //map to education project
	SpeechType speechType;// map to speech type
	String duration;
	String ahCounts;


	static constraints = {
	}
	static mapping = {
		compoundIndex speaker:"2d", speechType:1
	}
}
