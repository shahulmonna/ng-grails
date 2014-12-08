
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

                        <g:sortableColumn property="speaker" title="${message(code: 'speech.speaker.label', default: 'Speaker')}" />
                        <g:sortableColumn property="evaluator" title="${message(code: 'speech.evaluator.label', default: 'Evaluator')}" />
						<g:sortableColumn property="speechType" title="${message(code: 'speech.speechType.label', default: 'Speech Type')}" />
                        <g:sortableColumn property="speechType" title="${message(code: 'speech.events.label', default: 'Event #')}" />
                        <g:sortableColumn property="speechType" title="${message(code: 'speech.date.label', default: 'Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${speechInstanceList}" status="i" var="speechInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${speechInstance.id}">${fieldValue(bean: speechInstance, field: "speaker")}</g:link></td>

                        <td>${fieldValue(bean: speechInstance,
                                field: "evaluator")}</td>
					
						<td>${fieldValue(bean: speechInstance, field: "speechType")}</td>
                        <td>${fieldValue(bean: speechInstance, field:
                                "events.id")}</td>
						<td>
                            <g:formatDate
                                    date="${speechInstance?.events.eventOn}"
                                    format="dd-MMM-yyy"/>
                        </td>
					
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
