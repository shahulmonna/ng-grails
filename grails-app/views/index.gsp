<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en-gb" class="no-js">
<!--<![endif]-->
<head>
    <meta name="layout" content="ng-layout">

</head>

<body>
<g:render template="/header"/>
<div id="#top"></div>
<g:render template="/home"/>
<g:render template="/aboutus"/>
<div style="margin: 23px; border: 2px; border-color: #005591; border-style: solid;width: 300px;height: 250px;box-sizing: content-box;" id="storitz_widget_parent"></div>
<script type="text/javascript" src="http://api.storitz.com/widget-test/widget_js?pid=WESTSIDERENTALS" id="storitz_script"></script>
<g:render template="/services"/>
<g:render template="/clients"/>
<g:render template="/portfolio"/>
%{--<g:render template="/plans"/>--}%
<g:render template="/team"/>
<g:render template="/contactus"/>
<g:render template="/maps"/>
<g:render template="/footer"/>

<a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i></a>

<!--[if lte IE 8]><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><![endif]-->
<script src="js/plugins/modernizr.js"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/plugins/isotope/isotope.pkgd.min.js" type="text/javascript"></script>
<script src="js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="js/jquery.nav.js" type="text/javascript"></script>
<script src="js/jquery.cslider.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>
<script src="js/owl-carousel/owl.carousel.js"></script>


</body>
</html>
