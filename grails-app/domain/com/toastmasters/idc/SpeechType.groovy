package com.toastmasters.idc

import groovy.transform.ToString

/**
 * Created by syedshahul on 5/12/14.*/
@ToString
class SpeechType implements Serializable{
	static mapWith = "mongo"

	String name; // prepared speech | table topics
	static constraints = {
	}
	static mapping = {
		index name:true
	}
}
