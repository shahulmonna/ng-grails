<%@ page import="com.toastmasters.idc.EducationProgram" %>



<div class="fieldcontain ${hasErrors(bean: educationProgramInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="educationProgram.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${educationProgramInstance?.name}" />

</div>

