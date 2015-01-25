<%@ page import="com.toastmasters.idc.EvaluationType" %>

<div class="fieldcontain ${hasErrors(bean: evaluationTypeInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="evaluationType.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${evaluationTypeInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="evaluationType.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${evaluationTypeInstance?.description}" />

</div>



