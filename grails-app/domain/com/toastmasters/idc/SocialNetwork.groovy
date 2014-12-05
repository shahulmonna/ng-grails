package com.toastmasters.idc

/**
 * Created by syedshahul on 5/12/14.*/
class SocialNetwork implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [club: Club]

	String name;
	String url;

	static constraints = {
	}
	static mapping = {
		index name:true
	}
}
