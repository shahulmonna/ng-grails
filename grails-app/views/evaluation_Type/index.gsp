
<%@ page import="com.toastmasters.idc.Evaluation_Type" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evaluation_Type.label', default: 'Evaluation_Type')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evaluation_Type" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index-bkp')}">
                    <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evaluation_Type" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
                        <g:sortableColumn property="name" title="${message(code: 'evaluation_Type.name.label', default: 'Name')}" />
						<g:sortableColumn property="description" title="${message(code: 'evaluation_Type.description.label', default: 'Description')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${evaluation_TypeInstanceList}" status="i" var="evaluation_TypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${evaluation_TypeInstance.id}">${fieldValue(bean: evaluation_TypeInstance, field: "name")}</g:link></td>
						<td>${fieldValue(bean: evaluation_TypeInstance, field: "description")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${evaluation_TypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
