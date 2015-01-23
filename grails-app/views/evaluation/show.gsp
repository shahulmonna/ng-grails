
<%@ page import="com.toastmasters.idc.Evaluation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evaluation.label', default: 'Evaluation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evaluation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/index-bkp')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evaluation" class="content scaffold-show" role="main">

            <h1><g:message code="default.show.label" args="[entityName]" /></h1>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evaluation">
                <g:if test="${evaluationInstance?.speech}">
                    <li class="fieldcontain">
                        <span id="speech-label" class="property-label"><g:message code="evaluation.speech.label" default="Speech" /></span>

                        <span class="property-value"
                              aria-labelledby="speech-label"><g:link
                                controller="speech" action="show" id="${evaluationInstance?.speech?.id}">${evaluationInstance?.speech?.speaker?.encodeAsHTML()} : ${evaluationInstance?.speech?.project?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

                <g:if test="${evaluationInstance?.evaluationType}">
                    <li class="fieldcontain">
                        <span id="evaluation_type-label" class="property-label"><g:message code="evaluation.evaluation_type.label" default="Evaluationtype" /></span>
                        <span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${evaluationInstance}" field="evaluationType"/></span>
                    </li>
                </g:if>

                <g:if test="${evaluationInstance?.evaluator}">
                    <li class="fieldcontain">
                        <span id="evaluator-label" class="property-label"><g:message code="evaluation.evaluator.label" default="Evaluator" /></span>

                        <span class="property-value" aria-labelledby="evaluator-label"><g:fieldValue bean="${evaluationInstance}" field="evaluator"/></span>

                    </li>
                </g:if>

                <g:if test="${evaluationInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="evaluation.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${evaluationInstance}" field="comments"/></span>
					
				</li>
				</g:if>



			
			</ol>
			<g:form url="[resource:evaluationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${evaluationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
