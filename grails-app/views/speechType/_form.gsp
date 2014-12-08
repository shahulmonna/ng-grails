<%@ page import="com.toastmasters.idc.SpeechType" %>



<div class="fieldcontain ${hasErrors(bean: speechTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="speechType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${speechTypeInstance?.name}" />

</div>

