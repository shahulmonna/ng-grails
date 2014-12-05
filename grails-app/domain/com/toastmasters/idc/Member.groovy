package com.toastmasters.idc

class Member implements Serializable{
	static mapWith = "mongo"
	static hasMany = [roles:Role]
	static belongsTo = [club: Club]

	String name
	String emailId
	String contactNumber
	String imageUrl
	String memberId
	Date registered

	static constraints = {
		name maxSize: 100, blank: false
		emailId nullable: false, email: true
		contactNumber nullable: false
		memberId nullable: false
	}

	static mapping = {
		compoundIndex name:"2d", contactNumber:1
	}
}
