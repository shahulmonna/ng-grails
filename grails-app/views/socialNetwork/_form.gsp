<%@ page import="com.toastmasters.idc.SocialNetwork" %>



<div class="fieldcontain ${hasErrors(bean: socialNetworkInstance, field: 'club', 'error')} ">
	<label for="club">
		<g:message code="socialNetwork.club.label" default="Club" />
		
	</label>
	<g:select id="club" name="club.id" from="${com.toastmasters.idc.Club.list()}" optionValue="name" optionKey="id" required="" value="${socialNetworkInstance?.club?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: socialNetworkInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="socialNetwork.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${socialNetworkInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: socialNetworkInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="socialNetwork.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${socialNetworkInstance?.url}" />

</div>

