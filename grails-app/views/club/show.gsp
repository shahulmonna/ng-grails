
<%@ page import="com.toastmasters.idc.Club" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'club.label', default: 'Club')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-club" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-club" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list club">

                <g:if test="${clubInstance?.name}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="club.name.label" default="Name" /></span>

                        <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${clubInstance}" field="name"/></span>

                    </li>
                </g:if>

                <g:if test="${clubInstance?.number}">
                    <li class="fieldcontain">
                        <span id="number-label" class="property-label"><g:message code="club.number.label" default="Number" /></span>

                        <span class="property-value" aria-labelledby="number-label"><g:fieldValue bean="${clubInstance}" field="number"/></span>

                    </li>
                </g:if>


                <g:if test="${clubInstance?.description}">
                    <li class="fieldcontain">
                        <span id="description-label" class="property-label"><g:message code="club.description.label" default="Description" /></span>

                        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${clubInstance}" field="description"/></span>

                    </li>
                </g:if>

                <g:if test="${clubInstance?.meetingTimings}">
                    <li class="fieldcontain">
                        <span id="meetingTimings-label" class="property-label"><g:message code="club.meetingTimings.label" default="Meeting Timings" /></span>

                        <span class="property-value" aria-labelledby="meetingTimings-label"><g:fieldValue bean="${clubInstance}" field="meetingTimings"/></span>

                    </li>
                </g:if>

                <g:if test="${clubInstance?.type}">
                    <li class="fieldcontain">
                        <span id="type-label" class="property-label"><g:message code="club.type.label" default="Type" /></span>

                        <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${clubInstance}" field="type"/></span>

                    </li>
                </g:if>

                <g:if test="${clubInstance?.registered}">
                    <li class="fieldcontain">
                        <span id="registered-label" class="property-label"><g:message code="club.registered.label" default="Registered" /></span>

                        <span class="property-value" aria-labelledby="registered-label"><g:formatDate date="${clubInstance?.registered}" /></span>

                    </li>
                </g:if>

				<g:if test="${clubInstance?.bannerImageUrl}">
				<li class="fieldcontain">
					<span id="bannerImageUrl-label" class="property-label"><g:message code="club.bannerImageUrl.label" default="Banner Image Url" /></span>
					
						<span class="property-value" aria-labelledby="bannerImageUrl-label"><g:fieldValue bean="${clubInstance}" field="bannerImageUrl"/></span>
					
				</li>
				</g:if>

				<g:if test="${clubInstance?.events}">
				<li class="fieldcontain">
					<span id="events-label" class="property-label"><g:message code="club.events.label" default="Events" /></span>

						<span class="property-value"
                              aria-labelledby="events-label"><g:link
                                controller="event" action="index">${clubInstance.events.size()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clubInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="club.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${clubInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clubInstance?.locationUrl}">
				<li class="fieldcontain">
					<span id="locationUrl-label" class="property-label"><g:message code="club.locationUrl.label" default="Location Url" /></span>
					
						<span class="property-value" aria-labelledby="locationUrl-label"><g:fieldValue bean="${clubInstance}" field="locationUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clubInstance?.logoImageUrl}">
				<li class="fieldcontain">
					<span id="logoImageUrl-label" class="property-label"><g:message code="club.logoImageUrl.label" default="Logo Image Url" /></span>
					
						<span class="property-value" aria-labelledby="logoImageUrl-label"><g:fieldValue bean="${clubInstance}" field="logoImageUrl"/></span>
					
				</li>
				</g:if>
			

				<g:if test="${clubInstance?.members}">
				<li class="fieldcontain">
					<span id="members-label" class="property-label"><g:message code="club.members.label" default="Members" /></span>
					

						<span class="property-value"
                              aria-labelledby="members-label"><g:link
                                controller="member" action="index">${clubInstance?.members?.size()}</g:link></span>

					
				</li>
				</g:if>
			

			

				<g:if test="${clubInstance?.socialNetworks}">
				<li class="fieldcontain">
					<span id="socialNetworks-label" class="property-label"><g:message code="club.socialNetworks.label" default="Social Networks" /></span>

						<span class="property-value"
                              aria-labelledby="socialNetworks-label"><g:link
                                controller="socialNetwork" action="index">${clubInstance.socialNetworks?.size()}</g:link></span>
					
				</li>
				</g:if>


            </ol>
			<g:form url="[resource:clubInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clubInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
