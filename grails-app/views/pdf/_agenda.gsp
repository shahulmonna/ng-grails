<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
    <meta charset="utf-8"/>
  <title></title>

</head>
<body style="font-family: 'sans-serif;'; height: 860px;">

<div style="display: table; width: 100%; background:
url('https://achieverstoastmasters.files.wordpress.com/2011/11/cropped-blueandyellowclubbanner.jpg') center no-repeat; background-size: contain; height: 150px;">
    <div style="display: table-row;">
        <div style="display: table-cell; width: 17%;">

        </div>
        <div style="display: table-cell; width: 63%; text-align: center;">
<span style="font-size: 24px; font-weight: 600; color: white;">
    Tarento India Toastmasters Club</span>
            <br/>
            <span
                    style="color:#f5f5f5;font-weight: 600;font-size: 20px;">#04329635
            </span>
        </div>
        <div style="display: table-cell; width: 20%; padding-right:10px;
        padding-top: 43px;">
        <div style="
        background:
        url('http://tarento.com/wp-content/themes/tarento/images/Acando_Tarento_203x68.png') center no-repeat; background-size: contain; height: 68px;">

        </div>
        </div>
    </div>
</div>

<div style="display: table; width: 100%;">
    <div style="display: table-row;">
        <div style="display: table-cell; border-right: thin
        solid teal;
        width: 30%;">
            %{-- Left pane starts--}%
            %{-- officers details--}%
            <div style="line-height: 1.5;">
            <span style="color: #006C93; font-weight: bold;">President</span><br/>
            <span style="color: #033547; font-weight: bold;">Syed
            Shahul Hameed</span><br/>
            <span style="color: #006C93; font-weight: bold;">VP
            Education</span><br/>
            <span style="color: #033547; font-weight: bold;">Sudhanshu Singh
            </span><br/>
            <span style="color: #006C93; font-weight: bold;">VP Membership</span><br/>
            <span style="color: #033547; font-weight: bold;">Lokesh Sharma
            </span><br/>
            <span style="color: #006C93; font-weight: bold;">VP Public Relations</span><br/>
            <span style="color: #033547; font-weight: bold;">Chetan Sachdev</span><br/>
            <span style="color: #006C93; font-weight: bold;">Secretary</span><br/>
            <span style="color: #033547; font-weight: bold;">Senthil Kumar M
            </span><br/>
            <span style="color: #006C93; font-weight: bold;vertical-align:
            baseline;">Treasurer</span><br/>
                <span style="color: #033547; font-weight: bold;vertical-align:
                top;">Rakhi Sharma</span><br/>
            <span style="color: #006C93;font-weight: bold; vertical-align:
            baseline;">Sergeant-At-Arms
            </span><br/>
            <span style="color: #033547; font-weight: bold; vertical-align:
            top;">Soumyaranjan
            Panda</span><br/>
        </div>
            %{-- Meeting timings info--}%
            <div style="padding-top: 30px; font-size: 14px;">
            We meet every Wednesday of the week from ${event.timings}
        </div>
            %{-- Meeting location info--}%
            <div style="padding-top: 5px; font-size: 14px;">
            ${event.location}, <a target="_blank"
                                 href="https://goo.gl/maps/FmU6e">Tarento
                Technologies
                Pvt
                Ltd</a>
            </div>
            %{-- Left pane ends--}%
        </div>
        <div style="display: table-cell; width: 69%;">
            %{-- Right pane starts--}%
            <div style="text-align: center; vertical-align: middle;">
            %{-- Meeting date and timings--}%
            <span style="color: #006C93;font-weight: bold;">Meeting #:
            </span>
            <span
                    style="color: #033547; font-weight: bold;">${event.eventNumber} </span><br/>
            <span style="color: #006C93;font-weight: bold;">Date :
            </span>
            <span style="color: #033547; font-weight: bold;">
                <g:formatDate date="${event.eventOn}" format="dd-MMM-yyy"/>;
            </span>
            <span style="color: #006C93;font-weight: bold;">Time :
            </span>
            <span style="color: #033547; font-weight: bold;">
                ${event.timings}
            </span>
            </div>
            %{-- Right pane ends--}%
        </div>
    </div>
</div>


</body>
</html>