<%@ page import="com.toastmasters.idc.Club" %>



<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="club.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${clubInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'number', 'error')} ">
    <label for="number">
        <g:message code="club.number.label" default="Number" />

    </label>
    <g:textField name="number" value="${clubInstance?.number}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'type', 'error')} ">
    <label for="type">
        <g:message code="club.type.label" default="Type" />

    </label>
    <g:textField name="type" value="${clubInstance?.type}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="club.description.label" default="Description" />

    </label>
    <g:textField name="description" value="${clubInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'location', 'error')} ">
    <label for="location">
        <g:message code="club.location.label" default="Location" />

    </label>
    <g:textField name="location" value="${clubInstance?.location}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'meetingTimings', 'error')} ">
    <label for="meetingTimings">
        <g:message code="club.meetingTimings.label" default="Meeting Timings" />

    </label>
    <g:textField name="meetingTimings" value="${clubInstance?.meetingTimings}" />

</div>


<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'registered', 'error')} ">
    <label for="registered">
        <g:message code="club.registered.label" default="Registered" />

    </label>
    <g:datePicker name="registered" precision="day" value="${clubInstance?.registered}" />

</div>


<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'bannerImageUrl', 'error')} ">
	<label for="bannerImageUrl">
		<g:message code="club.bannerImageUrl.label" default="Banner Image Url" />
		
	</label>
	<g:textField name="bannerImageUrl" value="${clubInstance?.bannerImageUrl}" />

</div>


<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'locationUrl', 'error')} ">
	<label for="locationUrl">
		<g:message code="club.locationUrl.label" default="Location Url" />
		
	</label>
	<g:textField name="locationUrl" value="${clubInstance?.locationUrl}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'logoImageUrl', 'error')} ">
	<label for="logoImageUrl">
		<g:message code="club.logoImageUrl.label" default="Logo Image Url" />
		
	</label>
	<g:textField name="logoImageUrl" value="${clubInstance?.logoImageUrl}" />

</div>


<div class="fieldcontain ${hasErrors(bean: clubInstance, field: 'socialNetworks', 'error')} ">
	<label for="socialNetworks">
		<g:message code="club.socialNetworks.label" default="Social Networks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clubInstance?.socialNetworks?}" var="s">
    <li><g:link controller="socialNetwork" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="socialNetwork" action="create" params="['club.id': clubInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'socialNetwork.label', default: 'SocialNetwork')])}</g:link>
</li>
</ul>


</div>


