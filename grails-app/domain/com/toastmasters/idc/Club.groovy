package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import org.restapidoc.annotation.RestApiObject
import org.restapidoc.annotation.RestApiObjectField

/**
 * Created by syedshahul on 4/12/14.*/

@ToString(includeNames = true, includeFields = true,
		excludes = 'dateCreated,lastUpdated,metaClass')
@EqualsAndHashCode
@RestApiObject(name = "club", description = "A Club of Toastmasters")
class Club implements Serializable{
	static mapWith = "mongo"
	static hasMany = [socialNetworks:SocialNetwork,
										members:Member, events:Event]

	@RestApiObjectField(description = "Name of the Club")
	String name;
	@RestApiObjectField(description = "Club Number")
	String number;
	@RestApiObjectField(description = "Date registered with Toastmasters International")
	Date registered
	@RestApiObjectField(description = "Club type(Corporate|Community)")
	String type; //corporate | community
	@RestApiObjectField(description = "Club meeting time")
	String meetingTimings;
	@RestApiObjectField(description = "Meeting Location")
	String location;
	@RestApiObjectField(description = "GMap location URL of the club")
	String locationUrl;
	@RestApiObjectField(description = "Details about the club")
	String description;
	@RestApiObjectField(description = "Banner image URL", mandatory = false)
	String bannerImageUrl;
	@RestApiObjectField(description = "Logo image URL", mandatory = false)
	String logoImageUrl;

	static constraints = {
	}
	static mapping = {
		compoundIndex name:"2d", number:1
	}
}
