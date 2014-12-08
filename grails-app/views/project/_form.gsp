<%@ page import="com.toastmasters.idc.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'educationProgram', 'error')} ">
	<label for="educationProgram">
		<g:message code="project.educationProgram.label" default="Education Program" />
		
	</label>
	<g:select id="educationProgram" name="educationProgram.id" from="${com.toastmasters.idc.EducationProgram.list()}" optionValue="name" optionKey="id" required="" value="${projectInstance?.educationProgram?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${projectInstance?.name}" />

</div>

