<!DOCTYPE html>
<html>
<head>
    <title><g:if
            env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="main">
    <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>

<body>
<g:if env="development">
   %{--<g:renderException exception="${exception}"/>--}%
    <g:if test="${exception}">
        <div>


            Error details: ${exception.className}
        </div>
        <p style="padding: 10px 0 20px 10px; min-height: calc(100vh - 180px)">
            <g:each in="${exception.errorMessages}">${it.encodeAsHTML()}</g:each>
        </p>
    </g:if>
</g:if>
<g:else>
    <ul class="errors">
        <li>An error has occurred</li>
    </ul>
</g:else>
</body>
</html>
