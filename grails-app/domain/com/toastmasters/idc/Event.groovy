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
	String saa;//sergant at arms
	String emcee;
	String ge; //general evaluator
	String grammarian;
	String parliamentarian;
	String ahCounter;
	String ttm; //table topic master
	String timeManager;
	String president;

    static constraints = {
    }

	static mapping = {
		compoundIndex eventNumber:"2d", eventOn:1
	}
}
