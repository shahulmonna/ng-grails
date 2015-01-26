package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import org.restapidoc.annotation.RestApiObject
import org.restapidoc.annotation.RestApiObjectField

@ToString(includeNames = true, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
@RestApiObject(name = "event", description = "A Event/Meeting of Toastmasters")
class Event implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [club: Club]
	static hasMany = [speechs:Speech]
	@RestApiObjectField(description = "Meeting Number")
	String eventNumber;
	@RestApiObjectField(description = "Meeting Date")
	Date eventOn;
	@RestApiObjectField(description = "Meeting Timeing")
	String timings;
	@RestApiObjectField(description = "Location of the meeting")
	String location;
	@RestApiObjectField(description = "The Theme of the meeting")
	String theme;
	@RestApiObjectField(description = "Word of the day")
	String wordOfTheDay;
	@RestApiObjectField(description = "Details of the Word of the day")
	String descWordOfTheDay;
	@RestApiObjectField(description = "Sergant at Arms of the meeting")
	Member saa;//sergant at arms
	@RestApiObjectField(description = "Emcee/Master of Ceremony/Toastmaster of the day")
	Member emcee;
	@RestApiObjectField(description = "General Evaluator")
	Member ge; //general evaluator
	@RestApiObjectField(description = "Grammarian",mandatory=false)
	Member grammarian;
	@RestApiObjectField(description = "Parliamentarian of the meeting",mandatory=false)
	Member parliamentarian;
	@RestApiObjectField(description = "Ah Counter")
	Member ahCounter;
	@RestApiObjectField(description = "Table Topics Master")
	Member ttm; //table topic master
	@RestApiObjectField(description = "Timer")
	Member timeManager;
	@RestApiObjectField(description = "Presiding Officer/President")
	Member president;

    static constraints = {
			eventNumber nullable: false, unique:true
			eventOn eventOn: false
    }

	static mapping = {
		compoundIndex eventNumber:"2d", eventOn:1
	}
}
