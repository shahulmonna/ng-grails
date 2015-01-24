<%@ page import="com.toastmasters.idc.EducationProgram" %>



<div class="fieldcontain ${hasErrors(bean: educationProgramInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="educationProgram.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${educationProgramInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: educationProgramInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="educationProgram.projects.label" default="Projects" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${educationProgramInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.name?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['educationProgram.id': educationProgramInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>


</div>

