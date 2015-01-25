<%@ page import="com.toastmasters.idc.Event" %>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ahCounter', 'error')} ">
	<label for="ahCounter">
		<g:message code="event.ahCounter.label" default="Ah Counter" />
		
	</label>

    <g:select id="ahCounter" name='ahCounter.id' value="${eventInstance?.ahCounter?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'club', 'error')} ">
	<label for="club">
		<g:message code="event.club.label" default="Club" />
		
	</label>
	<g:select id="club" name="club.id" from="${com.toastmasters.idc.Club.list()}" optionValue="name" optionKey="id" required="" value="${eventInstance?.club?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'descWordOfTheDay', 'error')} ">
	<label for="descWordOfTheDay">
		<g:message code="event.descWordOfTheDay.label" default="Desc Word Of The Day" />
		
	</label>
	<g:textField name="descWordOfTheDay" value="${eventInstance?.descWordOfTheDay}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'emcee', 'error')} ">
	<label for="emcee">
		<g:message code="event.emcee.label" default="Emcee" />
		
	</label>
    <g:select id="emcee" name='emcee.id' value="${eventInstance?.emcee?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
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

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ge', 'error')} ">
	<label for="ge">
		<g:message code="event.ge.label" default="Ge" />
		
	</label>

    <g:select id="ge" name='ge.id' value="${eventInstance?.ge?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'grammarian', 'error')} ">
	<label for="grammarian">
		<g:message code="event.grammarian.label" default="Grammarian" />
		
	</label>

    <g:select id="grammarian" name='grammarian.id' value="${eventInstance?.grammarian?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="event.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${eventInstance?.location}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'parliamentarian', 'error')} ">
	<label for="parliamentarian">
		<g:message code="event.parliamentarian.label" default="Parliamentarian" />
		
	</label>

    <g:select id="parliamentarian" name='parliamentarian.id' value="${eventInstance?.parliamentarian?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'president', 'error')} ">
	<label for="president">
		<g:message code="event.president.label" default="President" />
		
	</label>

    <g:select id="president" name='president.id' value="${eventInstance?.president?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'saa', 'error')} ">
	<label for="saa">
		<g:message code="event.saa.label" default="Saa" />
		
	</label>
    <g:select id="saa" name='saa.id' value="${eventInstance?.saa?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'speechs', 'error')} ">
	<label for="speechs">
		<g:message code="event.speechs.label" default="Speechs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.speechs?}" var="s">
    <li><g:link controller="speech" action="show" id="${s.id}">${s?.speaker?.name?.encodeAsHTML()}, ${s?.project?.name?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="speech" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'speech.label', default: 'Speech')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'theme', 'error')} ">
	<label for="theme">
		<g:message code="event.theme.label" default="Theme" />
		
	</label>
	<g:textField name="theme" value="${eventInstance?.theme}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'timeManager', 'error')} ">
	<label for="timeManager">
		<g:message code="event.timeManager.label" default="Time Manager" />
		
	</label>

    <g:select id="timeManager" name='timeManager.id' value="${eventInstance?.timeManager?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'timings', 'error')} ">
	<label for="timings">
		<g:message code="event.timings.label" default="Timings" />
		
	</label>
	<g:textField name="timings" value="${eventInstance?.timings}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'ttm', 'error')} ">
	<label for="ttm">
		<g:message code="event.ttm.label" default="Ttm" />
		
	</label>
    <g:select id="ttm" name='ttm.id' value="${eventInstance?.ttm?.id}"
              noSelection="${['':'Select One...']}"
              from='${com.toastmasters.idc.Member.list()}'
              optionKey="id" optionValue="name" required=""></g:select>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'wordOfTheDay', 'error')} ">
	<label for="wordOfTheDay">
		<g:message code="event.wordOfTheDay.label" default="Word Of The Day" />
		
	</label>
	<g:textField name="wordOfTheDay" value="${eventInstance?.wordOfTheDay}" />

</div>

