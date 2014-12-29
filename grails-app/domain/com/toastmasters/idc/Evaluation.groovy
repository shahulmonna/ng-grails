package com.toastmasters.idc

class Evaluation implements Serializable{
	static mapWith = "mongo"

	static belongsTo = [speech: Speech]
	String evaluator;
	String comments;
	static constraints = {}
	static mapping = {
		index evaluator:true
	}
}
