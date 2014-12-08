package com.toastmasters.idc

import org.apache.commons.lang.builder.HashCodeBuilder

/**
 * Created by syedshahul on 8/12/14.*/
class UserRole  implements Serializable {

	private static final long serialVersionUID = 1

	Member member
	Role role

	boolean equals(other) {
		if (!(other instanceof UserRole)) {
			return false
		}

		other.member?.id == member?.id &&
				other.role?.id == role?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (member) builder.append(member.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static UserRole get(long userId, long roleId) {
		UserRole.where {
			member == Member.load(userId) &&
					role == Role.load(roleId)
		}.get()
	}

	static boolean exists(long userId, long roleId) {
		UserRole.where {
			member == Member.load(userId) &&
					role == Role.load(roleId)
		}.count() > 0
	}

	static UserRole create(Member member, Role role, boolean flush = false) {
		def instance = new UserRole(member: member, role: role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Member member, Role r, boolean flush = false) {
		if (member == null || r == null) return false

		int rowCount = UserRole.where {
			member == Member.load(member.id) &&
					role == Role.load(r.id)
		}.deleteAll()

		if (flush) { UserRole.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(Member member, boolean flush = false) {
		if (member == null) return

		UserRole.where {
			member == Member.load(member.id)
		}.deleteAll()

		if (flush) { UserRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		UserRole.where {
			role == Role.load(r.id)
		}.deleteAll()

		if (flush) { UserRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, UserRole ur ->
			if (ur.member == null) return
			boolean existing = false
			UserRole.withNewSession {
				existing = UserRole.exists(ur.member.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['role', 'member']
		version false
	}
}

