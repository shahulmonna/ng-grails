<%@ page import="com.toastmasters.idc.Evaluation_Type" %>

<div class="fieldcontain ${hasErrors(bean: evaluation_TypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="evaluation_Type.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${evaluation_TypeInstance?.name}" />

</div>
<div class="fieldcontain ${hasErrors(bean: evaluation_TypeInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="evaluation_Type.description.label" default="Description" />

    </label>
    <g:textArea name="description" value="${evaluation_TypeInstance?.description}" />

</div>

