
<%@ page import="com.toastmasters.idc.Speech" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'speech.label', default: 'Speech')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-speech" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-speech" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list speech">
			
				<g:if test="${speechInstance?.ahCounts}">
				<li class="fieldcontain">
					<span id="ahCounts-label" class="property-label"><g:message code="speech.ahCounts.label" default="Ah Counts" /></span>
					
						<span class="property-value" aria-labelledby="ahCounts-label"><g:fieldValue bean="${speechInstance}" field="ahCounts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="speech.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${speechInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.evaluations}">
				<li class="fieldcontain">
					<span id="evaluations-label" class="property-label"><g:message code="speech.evaluations.label" default="Evaluations" /></span>
					
						<g:each in="${speechInstance.evaluations}" var="e">
						<span class="property-value" aria-labelledby="evaluations-label"><g:link controller="evaluation" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.events}">
				<li class="fieldcontain">
					<span id="events-label" class="property-label"><g:message code="speech.events.label" default="Event" /></span>
					
						<span class="property-value" aria-labelledby="events-label"><g:link controller="event" action="show" id="${speechInstance?.events?.id}">${speechInstance?.events?.eventNumber}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="speech.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:fieldValue bean="${speechInstance}" field="project"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.speaker}">
				<li class="fieldcontain">
					<span id="speaker-label" class="property-label"><g:message code="speech.speaker.label" default="Speaker" /></span>
					
						<span class="property-value" aria-labelledby="speaker-label"><g:fieldValue bean="${speechInstance}" field="speaker"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.speechType}">
				<li class="fieldcontain">
					<span id="speechType-label" class="property-label"><g:message code="speech.speechType.label" default="Speech Type" /></span>
					
						<span class="property-value" aria-labelledby="speechType-label"><g:fieldValue bean="${speechInstance}" field="speechType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${speechInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="speech.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${speechInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:speechInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${speechInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
