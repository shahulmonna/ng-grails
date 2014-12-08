package com.toastmasters.idc

/**
 * Created by syedshahul on 4/12/14.*/
class Club implements Serializable{
	static mapWith = "mongo"
	static hasMany = [socialNetworks:SocialNetwork,
										members:Member, events:Event]

	String name;
	String number;
	Date registered
	String type; //corporate | community
	String meetingTimings;
	String location;
	String locationUrl;
	String description;
	String bannerImageUrl;
	String logoImageUrl;

	static constraints = {
	}
	static mapping = {
		compoundIndex name:"2d", number:1
	}
}
