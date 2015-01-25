package com.toastmasters.idc

import groovy.transform.ToString

@ToString
class Event implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [club: Club]
	static hasMany = [speechs:Speech]

	String eventNumber;
	Date eventOn;
	String timings;
	String location;

	String theme;
	String wordOfTheDay;
	String descWordOfTheDay;
	Member saa;//sergant at arms
	Member emcee;
	Member ge; //general evaluator
	Member grammarian;
	Member parliamentarian;
	Member ahCounter;
	Member ttm; //table topic master
	Member timeManager;
	Member president;

    static constraints = {
			eventNumber nullable: false, unique:true
			eventOn eventOn: false
    }

	static mapping = {
		compoundIndex eventNumber:"2d", eventOn:1
	}
}
