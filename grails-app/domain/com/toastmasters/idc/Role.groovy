package com.toastmasters.idc

/**
 * Created by syedshahul on 5/12/14.*/
class Role implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [member: Member]

	String name

  static constraints = {
	}

	static mapping = {
		index name:true
	}
}
