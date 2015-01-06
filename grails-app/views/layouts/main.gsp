<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
          type="image/x-icon">
    <link rel="apple-touch-icon"
          href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114"
          href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <!-- Web Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:700,400,300' rel='stylesheet' type='text/css'>

    <asset:stylesheet src="application.css"/>

    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body>
<header>
    <div style="display: table; width: 100%; height: 150px;" id="grailsLogo" role="banner">
        <div style="display: table-row;">
            <div style="display: table-cell; width: 20%; vertical-align: middle;">
                <a href="http://toastmasters.org">

                    <img src="/images/toastmasters-logo@2x.png"
                         alt="Toastmasters"  style="max-width:100px;"/>
                </a>
            </div>

            <div style="display: table-cell; width: 60%; text-align: center; vertical-align: middle;">
                <span style="font-size: 24px; font-weight: 700; color: #EFEFEF;">Tarento
                India Toastmasters
                Club</span><br/>
                <span style="font-size: 24px; font-weight: 700; color: #EFEFEF;">
                #04329635</span><br/>
            </div>
            <div style="display: table-cell; width: 20%; vertical-align: middle;">
                <a href="http://idc.tarento.com">

                    <img src="/images/Acando_Tarento.png" alt="Tarento"
                         style="max-width:130px;"/>
                </a>
            </div>
        </div>
    </div>

</header>

<g:layoutBody/>
<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;"><g:message
        code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
