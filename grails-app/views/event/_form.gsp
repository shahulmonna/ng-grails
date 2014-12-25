<%@ page import="com.toastmasters.idc.Event" %>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'club', 'error')} ">
    <label for="club">
        <g:message code="event.club.label" default="Club" />

    </label>
    <g:select id="club" name="club.id" from="${com.toastmasters.idc.Club.list()}" optionValue="name" optionKey="id" required="" value="${eventInstance?.club?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'emcee', 'error')} ">
	<label for="emcee">
		<g:message code="event.emcee.label" default="Emcee" />
		
	</label>

    <g:if test="${members?.size()}">
        <select name="emcee" id="emcee">
            <g:each in="${members}" var="entry">
                <option value="${entry.name}">${entry.name}</option>
            </g:each>
        </select>
    </g:if>
    <g:else>
        <g:textField name="emcee" value="${eventInstance?.emcee}" />
    </g:else>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventNumber', 'error')} ">
	<label for="eventNumber">
		<g:message code="event.eventNumber.label" default="Event Number" />
		
	</label>
	<g:textField name="eventNumber" value="${eventInstance?.eventNumber}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventOn', 'error')} ">
	<label for="eventOn">
		<g:message code="event.eventOn.label" default="Event On" />
		
	</label>
	<g:datePicker name="eventOn" precision="day" value="${eventInstance?.eventOn}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'timings', 'error')} ">
    <label for="timings">
        <g:message code="event.timings.label" default="Timings" />

    </label>
    <g:textField name="timings" value="${eventInstance?.timings}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'theme', 'error')} ">
    <label for="theme">
        <g:message code="event.theme.label" default="Theme" />

    </label>
    <g:textField name="theme" value="${eventInstance?.theme}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="event.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${eventInstance?.location}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'saa', 'error')} ">
    <label for="saa">
        <g:message code="event.saa.label" default="Saa" />

    </label>
    <g:textField name="saa" value="${eventInstance?.saa}" />

</div>


<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'president', 'error')} ">
	<label for="president">
		<g:message code="event.president.label" default="President" />
		
	</label>
	<g:textField name="president" value="${eventInstance?.president}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ttm', 'error')} ">
    <label for="ttm">
        <g:message code="event.ttm.label" default="Ttm" />

    </label>
    <g:textField name="ttm" value="${eventInstance?.ttm}" />

</div>

<g:if test="${showSpeeches}">
<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'speechs', 'error')} ">
	<label for="speechs">
		<g:message code="event.speechs.label" default="Speechs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.speechs?}" var="s">
    <li><g:link controller="speech" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="speech" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'speech.label', default: 'Speech')])}</g:link>
</li>
</ul>

</div>
</g:if>
<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'wordOfTheDay', 'error')} ">
	<label for="wordOfTheDay">
		<g:message code="event.wordOfTheDay.label" default="Word Of The Day" />
		
	</label>
	<g:textField name="wordOfTheDay" value="${eventInstance?.wordOfTheDay}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'descWordOfTheDay', 'error')} ">
    <label for="descWordOfTheDay">
        <g:message code="event.descWordOfTheDay.label"
                   default="Word Of The Day Description" />

    </label>
    <g:textArea name="descWordOfTheDay" value="${eventInstance?.descWordOfTheDay}" />

</div>


<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ge', 'error')} ">
    <label for="ge">
        <g:message code="event.ge.label" default="Ge" />

    </label>
    <g:textField name="ge" value="${eventInstance?.ge}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ahCounter', 'error')} ">
    <label for="ahCounter">
        <g:message code="event.ahCounter.label" default="Ah Counter" />

    </label>
    <g:textField name="ahCounter" value="${eventInstance?.ahCounter}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'timeManager', 'error')} ">
    <label for="timeManager">
        <g:message code="event.timeManager.label" default="Time Manager" />

    </label>
    <g:textField name="timeManager" value="${eventInstance?.timeManager}" />

</div>


<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'grammarian', 'error')} ">
    <label for="grammarian">
        <g:message code="event.grammarian.label" default="Grammarian" />

    </label>
    <g:textField name="grammarian" value="${eventInstance?.grammarian}" />

</div>


<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'parliamentarian', 'error')} ">
    <label for="parliamentarian">
        <g:message code="event.parliamentarian.label" default="Parliamentarian" />

    </label>
    <g:textField name="parliamentarian" value="${eventInstance?.parliamentarian}" />

</div>
