
<%@ page import="com.toastmasters.idc.SocialNetwork" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'socialNetwork.label', default: 'SocialNetwork')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-socialNetwork" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-socialNetwork" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'socialNetwork.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'socialNetwork.url.label', default: 'Url')}" />
                        <th><g:message code="socialNetwork.club.label" default="Club" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${socialNetworkInstanceList}" status="i" var="socialNetworkInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${socialNetworkInstance.id}">${fieldValue(bean: socialNetworkInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: socialNetworkInstance, field: "url")}</td>
					
						<td>${fieldValue(bean: socialNetworkInstance, field: "club.name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${socialNetworkInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
