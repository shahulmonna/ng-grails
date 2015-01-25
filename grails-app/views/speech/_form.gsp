<%@ page import="com.toastmasters.idc.Speech" %>



<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'ahCounts', 'error')} ">
	<label for="ahCounts">
		<g:message code="speech.ahCounts.label" default="Ah Counts" />
		
	</label>
	<g:textField name="ahCounts" value="${speechInstance?.ahCounts}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'duration', 'error')} ">
	<label for="duration">
		<g:message code="speech.duration.label" default="Duration" />
		
	</label>
	<g:textField name="duration" value="${speechInstance?.duration}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'evaluations', 'error')} ">
	<label for="evaluations">
		<g:message code="speech.evaluations.label" default="Evaluations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${speechInstance?.evaluations?}" var="e">
    <li><g:link controller="evaluation" action="show" id="${e.id}">${e?.evaluationType.name?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="evaluation" action="create" params="['speech.id': speechInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'evaluation.label', default: 'Evaluation')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="speech.events.label" default="Events" />
		
	</label>
	<g:select id="events" name="events.id" from="${com.toastmasters.idc.Event.list()}" optionValue="eventNumber" optionKey="id" required="" value="${speechInstance?.events?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'project', 'error')} ">
	<label for="project">
		<g:message code="speech.project.label" default="Project" />
		
	</label>
	<g:select id="project" name="project.id" from="${com.toastmasters.idc.Project.list()}" optionValue="name" optionKey="id" required="" value="${speechInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'speaker', 'error')} ">
	<label for="speaker">
		<g:message code="speech.speaker.label" default="Speaker" />
		
	</label>

    <g:select id="speaker" name="speaker.id" from="${com.toastmasters.idc.Member.list()}" optionValue="name" optionKey="id" required="" value="${speechInstance?.speaker?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'speechType', 'error')} ">
	<label for="speechType">
		<g:message code="speech.speechType.label" default="Speech Type" />
		
	</label>
	<g:select id="speechType" name="speechType.id" from="${com.toastmasters.idc.SpeechType.list()}" optionValue="name" optionKey="id" required="" value="${speechInstance?.speechType?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="speech.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${speechInstance?.title}" />

</div>

