/**
 * Created by syedshahul on 14/12/14.
 */
var QueryString = (function (a) {
    if (a == "") return {};
    var b = {};
    for (var i = 0; i < a.length; ++i) {
        var p = a[i].split('=');
        if (p.length != 2) continue;
        b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
    }
    return b;
})(window.location.search.substr(1).split('&'));

// setup for google analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-57645958-1']);
_gaq.push(['_trackPageview']);
/*
 _trackEvent(category, action, opt_label, opt_value, opt_noninteraction)
 _gaq.push(['_trackEvent', 'Videos', 'Play', 'Gone With the Wind']);
 */

