package com.toastmasters.idc

class Member {
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

	}
}
