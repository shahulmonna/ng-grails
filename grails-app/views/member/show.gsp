
<%@ page import="com.toastmasters.idc.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-member" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list member">
			
				<g:if test="${memberInstance?.club}">
				<li class="fieldcontain">
					<span id="club-label" class="property-label"><g:message code="member.club.label" default="Club" /></span>
					
						<span class="property-value"
                              aria-labelledby="club-label"><g:link
                                controller="club" action="show" id="${memberInstance?.club?.id}">${memberInstance?.club?.name}</g:link></span>
					
				</li>
				</g:if>


                <g:if test="${memberInstance?.name}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="member.name.label" default="Name" /></span>

                        <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${memberInstance}" field="name"/></span>

                    </li>
                </g:if>

                <g:if test="${memberInstance?.memberId}">
                    <li class="fieldcontain">
                        <span id="memberId-label" class="property-label"><g:message code="member.memberId.label" default="Member Id" /></span>

                        <span class="property-value" aria-labelledby="memberId-label"><g:fieldValue bean="${memberInstance}" field="memberId"/></span>

                    </li>
                </g:if>

                <g:if test="${memberInstance?.contactNumber}">
				<li class="fieldcontain">
					<span id="contactNumber-label" class="property-label"><g:message code="member.contactNumber.label" default="Contact Number" /></span>
					
						<span class="property-value" aria-labelledby="contactNumber-label"><g:fieldValue bean="${memberInstance}" field="contactNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.emailId}">
				<li class="fieldcontain">
					<span id="emailId-label" class="property-label"><g:message code="member.emailId.label" default="Email Id" /></span>
					
						<span class="property-value" aria-labelledby="emailId-label"><g:fieldValue bean="${memberInstance}" field="emailId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="member.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${memberInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>

				<g:if test="${memberInstance?.registered}">
				<li class="fieldcontain">
					<span id="registered-label" class="property-label"><g:message code="member.registered.label" default="Registered" /></span>
					
						<span class="property-value"
                              aria-labelledby="registered-label"><g:formatDate date="${memberInstance?.registered}" format="dd-MMM-yyyy"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
