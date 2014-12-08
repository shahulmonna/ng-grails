<%@ page import="com.toastmasters.idc.Speech" %>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'events', 'error')} ">
    <label for="events">
        <g:message code="speech.events.label" default="Event" />

    </label>
    <g:select id="events" name="events.id" from="${com.toastmasters.idc.Event.list()}" optionValue="eventNumber" optionKey="id" required="" value="${speechInstance?.events?.id}" class="many-to-one"/>

</div>


<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'speaker', 'error')} ">
    <label for="speaker">
        <g:message code="speech.speaker.label" default="Speaker" />

    </label>
    <g:if test="${members?.size()}">
        <select name="speaker" id="speaker">
            <g:each in="${members}" var="entry">
                <option value="${entry.name}">${entry.name}</option>
            </g:each>
        </select>
    </g:if>
    <g:else>
        <g:textField name="speaker" value="${speechInstance?.speaker}" />
    </g:else>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="speech.title.label" default="Title" />

    </label>
    <g:textField name="title" value="${speechInstance?.title}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'speechType', 'error')} ">
    <label for="speechType">
        <g:message code="speech.speechType.label" default="Speech Type" />

    </label>

    <g:if test="${speechTypes?.size()}">
        <select name="speechType" id="speechType">
            <g:each in="${speechTypes}" var="entry">
                <option value="${entry.name}">${entry.name}</option>
            </g:each>
        </select>
    </g:if>
    <g:else>
        <g:textField name="speechType" value="${speechInstance?.speechType}" />
    </g:else>

</div>


<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'project', 'error')} ">
    <label for="project">
        <g:message code="speech.project.label" default="Project" />

    </label>

    <g:if test="${members?.size()}">
        <select name="project" id="project">
            <g:each in="${projects}" var="entry">
                <option value="${entry.name}">${entry.name}</option>
            </g:each>
        </select>
    </g:if>
    <g:else>
        <g:textField name="project" value="${speechInstance?.project}" />
    </g:else>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'evaluator', 'error')} ">
	<label for="evaluator">
		<g:message code="speech.evaluator.label" default="Evaluator" />
		
	</label>

    <g:if test="${members?.size()}">
        <select name="evaluator" id="evaluator">
            <g:each in="${members}" var="entry">
                <option value="${entry.name}">${entry.name}</option>
            </g:each>
        </select>
    </g:if>
    <g:else>
        <g:textField name="evaluator" value="${speechInstance?.evaluator}" />
    </g:else>

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'duration', 'error')} ">
    <label for="duration">
        <g:message code="speech.duration.label" default="Duration" />

    </label>

        <g:textField name="duration" value="${speechInstance?.duration}" />

</div>

<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'ahCounts', 'error')} ">
    <label for="ahCounts">
        <g:message code="speech.ahCounts.label" default="Ah Counts" />

    </label>

    <g:textField name="ahCounts" value="${speechInstance?.ahCounts}" />

</div>


<div class="fieldcontain ${hasErrors(bean: speechInstance, field: 'comments', 'error')} ">
    <label for="comments">
        <g:message code="speech.comments.label" default="Comments" />

    </label>

    <g:textArea name="comments" value="${speechInstance?.comments}" />

</div>
