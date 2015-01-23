<%@ page import="com.toastmasters.idc.Evaluation" %>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'evaluationType', 'error')} ">
	<label for="evaluationType">
		<g:message code="evaluation.evaluation_type.label" default="Evaluationtype" />
		
	</label>
	
<ul class="one-to-many">
    <g:select id="evaluationType" name="evaluationType" from="${com.toastmasters.idc.Evaluation_Type.list()}" optionValue="name" optionKey="name" required="" class="many-to-one"/>
%{--<g:each in="${evaluationInstance?.evaluation_type?}" var="e">
    <li><g:link controller="evaluation_Type" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>--}%

</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'evaluator', 'error')} ">
	<label for="evaluator">
		<g:message code="evaluation.evaluator.label" default="Evaluator" />
		
	</label>

    <g:select id="evaluator" name="evaluator" from="${com.toastmasters.idc.Member.list()}" optionValue="name" optionKey="name" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'comments', 'error')} ">
    <label for="comments">
        <g:message code="evaluation.comments.label" default="Comments" />

    </label>
    <g:textArea name="comments" value="${evaluationInstance?.comments}" />

</div>
<g:hiddenField name="speech.id" value="${evaluationInstance?.speech?.id}"/>
%{--
<g:select id="speech" name="speech.id" from="${com.toastmasters.idc.Speech.list()}" optionKey="id" required="" value="${evaluationInstance?.speech?.id}" class="many-to-one"/>--}%
