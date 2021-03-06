package com.toastmasters.idc

import groovy.transform.ToString

/**
 * Created by syedshahul on 5/12/14.*/

@ToString
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
