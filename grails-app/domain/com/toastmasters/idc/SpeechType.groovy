package com.toastmasters.idc

/**
 * Created by syedshahul on 5/12/14.*/
class SpeechType implements Serializable{
	static mapWith = "mongo"

	String name; // prepared speech | table topics
	static constraints = {
	}
	static mapping = {
		index name:true
	}
}