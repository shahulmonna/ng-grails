package com.toastmasters.idc

class Evaluation implements Serializable{
	static mapWith = "mongo"

	static belongsTo = [speech: Speech]

	Member evaluator; // belongs to member
	EvaluationType evaluationType
	String comments;
	static constraints = {}
	static mapping = {
		index evaluator:true
	}
}
