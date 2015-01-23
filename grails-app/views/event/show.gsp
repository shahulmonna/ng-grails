
<%@ page import="com.toastmasters.idc.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index-bkp')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
                <g:if test="${eventInstance?.club}">
                    <li class="fieldcontain">
                        <span id="club-label" class="property-label"><g:message code="event.club.label" default="Club" /></span>

                        <span class="property-value"
                              aria-labelledby="club-label"><g:link
                                controller="club" action="show" id="${eventInstance?.club?.id}">${eventInstance?.club?.name}</g:link></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.eventNumber}">
                    <li class="fieldcontain">
                        <span id="eventNumber-label" class="property-label"><g:message code="event.eventNumber.label" default="Event Number" /></span>

                        <span class="property-value" aria-labelledby="eventNumber-label"><g:fieldValue bean="${eventInstance}" field="eventNumber"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.eventOn}">
                    <li class="fieldcontain">
                        <span id="eventOn-label" class="property-label"><g:message code="event.eventOn.label" default="Event On" /></span>

                        <span class="property-value"
                              aria-labelledby="eventOn-label"><g:formatDate
                                date="${eventInstance?.eventOn}"
                                format="dd-MMM-yyy"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.timings}">
                    <li class="fieldcontain">
                        <span id="timings-label" class="property-label"><g:message code="event.timings.label" default="Timings" /></span>

                        <span class="property-value" aria-labelledby="timings-label"><g:fieldValue bean="${eventInstance}" field="timings"/></span>

                    </li>
                </g:if>


                <g:if test="${eventInstance?.location}">
                    <li class="fieldcontain">
                        <span id="location-label" class="property-label"><g:message code="event.location.label" default="Location" /></span>

                        <span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${eventInstance}" field="location"/></span>

                    </li>
                </g:if>


                <g:if test="${eventInstance?.theme}">
                    <li class="fieldcontain">
                        <span id="theme-label" class="property-label"><g:message code="event.theme.label" default="Theme" /></span>

                        <span class="property-value" aria-labelledby="theme-label"><g:fieldValue bean="${eventInstance}" field="theme"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.wordOfTheDay}">
                    <li class="fieldcontain">
                        <span id="wordOfTheDay-label" class="property-label"><g:message code="event.wordOfTheDay.label" default="Word Of The Day" /></span>

                        <span class="property-value" aria-labelledby="wordOfTheDay-label"><g:fieldValue bean="${eventInstance}" field="wordOfTheDay"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.saa}">
                    <li class="fieldcontain">
                        <span id="saa-label" class="property-label"><g:message code="event.saa.label" default="Saa" /></span>

                        <span class="property-value" aria-labelledby="saa-label"><g:fieldValue bean="${eventInstance}" field="saa"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.president}">
                    <li class="fieldcontain">
                        <span id="president-label" class="property-label"><g:message code="event.president.label" default="President" /></span>

                        <span class="property-value" aria-labelledby="president-label"><g:fieldValue bean="${eventInstance}" field="president"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.emcee}">
                    <li class="fieldcontain">
                        <span id="emcee-label" class="property-label"><g:message code="event.emcee.label" default="Emcee" /></span>

                        <span class="property-value" aria-labelledby="emcee-label"><g:fieldValue bean="${eventInstance}" field="emcee"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.ttm}">
                    <li class="fieldcontain">
                        <span id="ttm-label" class="property-label"><g:message code="event.ttm.label" default="Ttm" /></span>

                        <span class="property-value" aria-labelledby="ttm-label"><g:fieldValue bean="${eventInstance}" field="ttm"/></span>

                    </li>
                </g:if>

                <g:if test="${eventInstance?.ge}">
                    <li class="fieldcontain">
                        <span id="ge-label" class="property-label"><g:message code="event.ge.label" default="Ge" /></span>

                        <span class="property-value" aria-labelledby="ge-label"><g:fieldValue bean="${eventInstance}" field="ge"/></span>

                    </li>
                </g:if>

				<g:if test="${eventInstance?.ahCounter}">
				<li class="fieldcontain">
					<span id="ahCounter-label" class="property-label"><g:message code="event.ahCounter.label" default="Ah Counter" /></span>
					
						<span class="property-value" aria-labelledby="ahCounter-label"><g:fieldValue bean="${eventInstance}" field="ahCounter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.grammarian}">
				<li class="fieldcontain">
					<span id="grammarian-label" class="property-label"><g:message code="event.grammarian.label" default="Grammarian" /></span>
					
						<span class="property-value" aria-labelledby="grammarian-label"><g:fieldValue bean="${eventInstance}" field="grammarian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.parliamentarian}">
				<li class="fieldcontain">
					<span id="parliamentarian-label" class="property-label"><g:message code="event.parliamentarian.label" default="Parliamentarian" /></span>
					
						<span class="property-value" aria-labelledby="parliamentarian-label"><g:fieldValue bean="${eventInstance}" field="parliamentarian"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.speechs}">
				<li class="fieldcontain">
					<span id="speechs-label" class="property-label"><g:message code="event.speechs.label" default="Speechs" /></span>
					
						<g:each in="${eventInstance.speechs}" var="s">
						<span class="property-value" aria-labelledby="speechs-label"><g:link controller="speech" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>

				<g:if test="${eventInstance?.timeManager}">
				<li class="fieldcontain">
					<span id="timeManager-label" class="property-label"><g:message code="event.timeManager.label" default="Time Manager" /></span>

						<span class="property-value" aria-labelledby="timeManager-label"><g:fieldValue bean="${eventInstance}" field="timeManager"/></span>

				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
