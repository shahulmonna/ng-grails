
<%@ page import="com.toastmasters.idc.Speech" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'speech.label', default: 'Speech')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-speech" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-speech" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ahCounts" title="${message(code: 'speech.ahCounts.label', default: 'Ah Counts')}" />
					
						<g:sortableColumn property="duration" title="${message(code: 'speech.duration.label', default: 'Duration')}" />
					
						<th><g:message code="speech.events.label" default="Event" /></th>
					
						<g:sortableColumn property="project" title="${message(code: 'speech.project.label', default: 'Project')}" />
					
						<g:sortableColumn property="speaker" title="${message(code: 'speech.speaker.label', default: 'Speaker')}" />
					
						<g:sortableColumn property="speechType" title="${message(code: 'speech.speechType.label', default: 'Speech Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${speechInstanceList}" status="i" var="speechInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${speechInstance.id}">${fieldValue(bean: speechInstance, field: "ahCounts")}</g:link></td>
					
						<td>${fieldValue(bean: speechInstance, field: "duration")}</td>
					
						<td>${fieldValue(bean: speechInstance, field:
                                "events.eventNumber")}</td>
					
						<td>${fieldValue(bean: speechInstance, field: "project")}</td>
					
						<td>${fieldValue(bean: speechInstance, field: "speaker")}</td>
					
						<td>${fieldValue(bean: speechInstance, field: "speechType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${speechInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
