package com.toastmasters.idc

class EvaluationType {
	static mapWith = "mongo"

  String name;
	String description;
	static constraints = {}
	static mapping = {
		index name:true
	}
}
