
<%@ page import="com.toastmasters.idc.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index-bkp')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="event.eventNumber.label" default="Event Number" /></th>

						<th><g:message code="event.club.label" default="Club" /></th>
					
						<th><g:message code="event.emcee.label" default="Emcee" /></th>

						<g:sortableColumn property="eventOn" title="${message(code: 'event.eventOn.label', default: 'Event On')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "eventNumber")}</g:link></td>
					
						<td>${fieldValue(bean: eventInstance,
                                field: "club.name")}</td>
					
						<td>${fieldValue(bean: eventInstance,
                                field: "emcee.name")}</td>

						<td><g:formatDate date="${eventInstance.eventOn}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
