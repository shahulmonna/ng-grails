<%@ page import="com.toastmasters.idc.UserRole" %>



<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'member', 'error')} ">
	<label for="member">
		<g:message code="userRole.member.label" default="Member" />
		
	</label>
	<g:select id="member" name="member.id" from="${com.toastmasters.idc.Member.list()}" optionValue="name" optionKey="id" required="" value="${userRoleInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="userRole.role.label" default="Role" />
		
	</label>
	<g:select id="role" name="role.id" from="${com.toastmasters.idc.Role.list()}" optionValue="name" optionKey="id" required="" value="${userRoleInstance?.role?.id}" class="many-to-one"/>

</div>

