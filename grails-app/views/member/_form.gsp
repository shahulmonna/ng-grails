<%@ page import="com.toastmasters.idc.Member" %>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberId', 'error')} ">
    <label for="memberId">
        <g:message code="member.memberId.label" default="Member Id" />

    </label>
    <g:textField name="memberId" value="${memberInstance?.memberId}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="member.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${memberInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'contactNumber', 'error')} ">
	<label for="contactNumber">
		<g:message code="member.contactNumber.label" default="Contact Number" />
		
	</label>
	<g:textField name="contactNumber" value="${memberInstance?.contactNumber}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'emailId', 'error')} ">
	<label for="emailId">
		<g:message code="member.emailId.label" default="Email Id" />
		
	</label>
	<g:textField name="emailId" value="${memberInstance?.emailId}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="member.imageUrl.label" default="Image Url" />
		
	</label>
	<g:textField name="imageUrl" value="${memberInstance?.imageUrl}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'registered', 'error')} ">
	<label for="registered">
		<g:message code="member.registered.label" default="Registered" />
		
	</label>
	<g:datePicker name="registered" precision="day" value="${memberInstance?.registered}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="member.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${memberInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'club', 'error')} ">
    <label for="club">
        <g:message code="member.club.label" default="Club" />

    </label>
    <g:select id="club" name="club.id" from="${com.toastmasters.idc.Club.list()}" optionValue="name" optionKey="id" required="" value="${memberInstance?.club?.id}" class="many-to-one"/>

</div>
