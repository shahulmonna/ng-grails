package com.toastmasters.idc

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

/**
 * Created by syedshahul on 5/12/14.*/

class Role implements Serializable{
	static mapWith = "mongo"

	String name

  static constraints = {
		name blank: false, unique: true
	}

	static mapping = {
		index name:true
		cache true
	}
}
