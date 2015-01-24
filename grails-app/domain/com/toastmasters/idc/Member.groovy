package com.toastmasters.idc

import groovy.transform.ToString

@ToString
class Member implements Serializable{
	static mapWith = "mongo"
	static belongsTo = [club: Club]

	String name
	String emailId
	String contactNumber
	String imageUrl
	
	String memberId
	String status
	Date registered


	static constraints = {
		name maxSize: 100, blank: false,size: 2..50
		emailId nullable: false, email: true,unique:true
		contactNumber nullable: false
		memberId nullable: false
	}

	static mapping = {
		compoundIndex name:"2d", contactNumber:1
	}
}
