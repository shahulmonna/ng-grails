<%@ page import="com.toastmasters.idc.Evaluation" %>


<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'evaluationType', 'error')} ">
    <label for="evaluationType">
        <g:message code="evaluation.evaluationType.label" default="Evaluation Type" />

    </label>
    <g:select id="evaluationType" name="evaluationType.id" from="${com.toastmasters.idc.EvaluationType.list()}" optionValue="name" optionKey="id" required="" value="${evaluationInstance?.evaluationType?.id}" class="many-to-one"/>

</div>

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
	<g:select id="evaluator" name="evaluator.id" from="${com.toastmasters.idc.Member.list()}" optionValue="name" optionKey="id" required="" value="${evaluationInstance?.evaluator?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'speech', 'error')} ">
	<label for="speech">
		<g:message code="evaluation.speech.label" default="Speech" />
		
	</label>

    <g:select id="speech" name='speech.id' value="${evaluationInstance?.speech?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Speech.list()}'
              optionKey="id"
              optionValue="${{it.speaker?.name}}"></g:select>

</div>

