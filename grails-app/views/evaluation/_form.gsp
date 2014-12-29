<%@ page import="com.toastmasters.idc.Evaluation" %>



<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="evaluation.comments.label" default="Comments" />
		
	</label>
	<g:textArea name="comments" value="${evaluationInstance?.comments}" />

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'evaluator', 'error')} ">
	<label for="evaluator">
		<g:message code="evaluation.evaluator.label" default="Evaluator" />
		
	</label>
	<g:textField name="evaluator" value="${evaluationInstance?.evaluator}" />

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'speech', 'error')} ">
	<label for="speech">
		<g:message code="evaluation.speech.label" default="Speech" />
		
	</label>
	<g:select id="speech" name="speech.id" from="${com.toastmasters.idc.Speech.list()}" optionKey="id" optionValue="speaker" required="" value="${evaluationInstance?.speech?.id}" class="many-to-one"/>

</div>

