
<%@ page import="com.toastmasters.idc.SocialNetwork" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'socialNetwork.label', default: 'SocialNetwork')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-socialNetwork" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index-bkp')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-socialNetwork" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list socialNetwork">
			
				<g:if test="${socialNetworkInstance?.club}">
				<li class="fieldcontain">
					<span id="club-label" class="property-label"><g:message code="socialNetwork.club.label" default="Club" /></span>
					
						<span class="property-value"
                              aria-labelledby="club-label"><g:link
                                controller="club" action="show" id="${socialNetworkInstance?.club?.id}">${socialNetworkInstance?.club?.name}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${socialNetworkInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="socialNetwork.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${socialNetworkInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${socialNetworkInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="socialNetwork.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${socialNetworkInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:socialNetworkInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${socialNetworkInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
