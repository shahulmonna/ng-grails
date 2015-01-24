<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
    <meta charset="utf-8"/>
    <title>TITMC Meeting # ${eventInstance.eventNumber}</title>

</head>

<body style="font-family: 'sans-serif;';">

<div style="display: table; width: 100%;padding-bottom: 15px;">
    <div style="display: table-row;">
        <div style="display: table-cell; width: 25%;">
            <img src="${createLink(uri: '/')}images/toastmasters-logo@2x.png"
                 alt="Toastmasters International" style="max-width: 90px;">
        </div>

        <div style="display: table-cell; width: 50%; text-align: center;position: absolute; top:35px;">
            <span style="font-size: 18px; font-weight: 800; color: #005591;">
                Tarento India Toastmasters Club</span>
            <br/>
            <span style="color:#005591;font-weight: 800;font-size: 18px;">
                #04329635
            </span>
        </div>

        <div style="display: table-cell; width: 25%;padding-right:10px;padding-top: 43px;">
            <img src="${createLink(uri: '/')}images/Acando_Tarento.png"
                    alt="Tarento Technologies" style="max-width: 150px;">
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
        <span style="color: #006C93; font-weight: bold;">
            President
        </span><br/>
        <span style="color: #033547; font-weight: bold;">
            Syed Shahul Hameed
        </span><br/>
        <span style="color: #006C93; font-weight: bold;">
            VP Education
        </span><br/>
        <span style="color: #033547; font-weight: bold;">
            Sudhanshu Singh
        </span><br/>
        <span style="color: #006C93; font-weight: bold;">
            VP Membership
        </span><br/>
        <span style="color: #033547; font-weight: bold;">
            Lokesh Sharma
        </span><br/>
        <span style="color: #006C93; font-weight: bold;">
            VP Public Relations
        </span><br/>
        <span style="color: #033547; font-weight: bold;">
            Chetan Sachdev
        </span><br/>
        <span style="color: #006C93; font-weight: bold;">
            Secretary
        </span><br/>
        <span style="color: #033547; font-weight: bold;">
            Senthil Kumar M
        </span><br/>
        <span style="color: #006C93; font-weight: bold; vertical-align:baseline;">
            Treasurer
        </span><br/>
        <span style="color: #033547; font-weight: bold;vertical-align:top;">
            Rakhi Sharma
        </span><br/>
        <span style="color: #006C93;font-weight: bold; vertical-align:baseline;">
            Sergeant-At-Arms
        </span><br/>
        <span style="color: #033547; font-weight: bold; vertical-align:top;">
            Soumyaranjan Panda
        </span><br/>
    </div>
    %{-- Meeting timings info--}%
    <div style="padding-top: 30px; font-size: 14px;">
        We meet every Wednesday of the week from ${eventInstance.timings}
    </div>
    %{-- Meeting location info--}%
    <div style="padding-top: 25px; font-size: 14px;">
        <span style="color: #006C93;font-weight: bold; vertical-align:baseline;">
            Location :
        </span><br/>
        ${eventInstance.location},
        <a target="_blank" href="https://goo.gl/maps/FmU6e">
            Tarento Technologies Pvt Ltd
        </a>
    </div>

    %{-- Social network sites info--}%
    <div style="padding-top: 20px; font-size: 14px;line-height: 2;">
        <span style="color: #006C93;font-weight: bold; vertical-align:baseline;">
            Social Networks :
        </span><br/>
        %{--Facebook group--}%
        <a target="_blank" href="https://www.facebook.com/groups/724248577661468/"
           style="border: 0; text-decoration: none; padding-top: 10px;">
            <img
                    src="http://memorialrheumatology.com/wp-content/uploads/2012/03/like_us_on_facebook.jpg" width="160" height="40" alt="FB"/>
        </a>
    <br/>
        %{-- Google plus--}%
        <a target="_blank" href="https://plus.google.com/u/1/communities/110163161705902211076"
           style="border: 0; text-decoration: none; padding-top: 15px;">

            <img
                    src="https://ssl.gstatic.com/s2/oz/images/logo/2x/googleplus_color_33-99ce54a16a32f6edc61a3e709eb61d31.png" width="140" height="40" alt="FB"/>
        </a>
    </div>
    %{-- About Toastmasters--}%
    <div style="padding-top: 25px; font-size: 14px;line-height: 1.5;">


        <a target="_blank" href="www.toastmasters.org"
           style="border: 0; text-decoration: none; padding-top: 30px;">
            <span style="color: #006C93;font-weight: bold; vertical-align:baseline;">
                Toastmasters International
            </span><br/>
        </a>
        <div style="padding-left: 5px; padding-right: 10px; font-size: 14px;
        text-align:
        justify;">

            We provide a supportive  and positive learning experience in which members are empowered to develop communication and leadership skills, resulting in greater  self-confidence and  personal growth.
        </div>
    </div>
    %{-- Left pane ends--}%
</div>

<div style="display: table-cell; width: 70%;">
%{-- Right pane starts--}%
<div style="text-align: center; vertical-align: middle;">
    %{-- Meeting date and timings--}%
    <span style="color: #006C93;font-weight: bold;">Meeting #:
    </span>
    <span
            style="color: #033547; font-weight: bold;">${eventInstance.eventNumber}</span><br/>
    <span style="color: #006C93;font-weight: bold;">Date :
    </span>
    <span style="color: #033547; font-weight: bold;">
        <g:formatDate date="${eventInstance.eventOn}" format="dd-MMM-yyy"/>;
    </span>
    <span style="color: #006C93;font-weight: bold;">Time :
    </span>
    <span style="color: #033547; font-weight: bold;">
        ${eventInstance.timings}
    </span>
</div>

%{-- Agenda contents--}%


<div style="font-size:14px; display: table;padding-top: 10px;text-align: left; border-spacing: 10px;border-collapse: separate;">
<div style="display: table-row;">
    <div style="display: table-cell; width: 10%; text-align:
    center;">
        4:30
    </div>
    <div style="display: table-cell; width: 60%; text-align:
    left; padding-left: 5px;">
        <span style="font-weight: 600;">Sergeant at arms to
        start the meeting</span>
    </div>
    <div style="display: table-cell; width: 30%; text-align:
    left; padding-left: 5px;">
        ${eventInstance.saa}
    </div>
</div>

<div style="display: table-row; ">
    <div style="display: table-cell; width: 10%; text-align:
    center">
        4:35
    </div>
    <div style="display: table-cell; width: 60%;
    text-align: left; padding-left: 5px;">
        <span style="font-weight: 600;">President Calls Meeting
        to Order</span><br/>
        Welcome Guests
    </div>
    <div style="display: table-cell; width: 30%; text-align:
    left; padding-left: 5px;">
        ${eventInstance.president}
    </div>
</div>


<div style="display: table-row; ">
    <div style="display: table-cell; width: 10%; text-align:
    center">
        4:40
    </div>
    <div style="display: table-cell; width: 60%;
    text-align: left; padding-left: 5px;">
        <span style="font-weight: 600;">President Introduces the
            <br/>Toastmaster of the Day</span>
    </div>
    <div style="display: table-cell; width: 30%; text-align:
    left; padding-left: 5px;">
        ${eventInstance.emcee}
    </div>
</div>
<div style="display: table-row-group; ">
    <div style="display: table-row; ">
        <div style="display: table-cell; width: 10%; text-align:
        center">
            4:43
        </div>
        <div style="display: table-cell; width: 60%;
        text-align: left; padding-left: 5px;">
            <span style="font-weight: 600;">Toastmaster Introduces
            the</span><br/>
            General Evaluator<br/>
            Ah Counter<br/>
            Timer<br/>
            Grammarian

        </div>
        <div style="display: table-cell; width: 30%; text-align:
        left; padding-left: 5px;"><br/>
            ${eventInstance.ge}<br/>
            ${eventInstance.ahCounter}<br/>
            ${eventInstance.timeManager}<br/>
            ${eventInstance.grammarian}

        </div>
    </div>

</div>


<div style="display: table-row-group;">
    <div style="display: table-row; ">
        <div style="display: table-cell; width: 10%; text-align:
        center">
            4:55
        </div>
        <div style="display: table-cell; width: 60%;
        text-align: left; padding-left: 5px;">
            <span style="font-weight: 600;">Toastmaster
            Introduces Evaluators and Speakers</span>
        </div>
        <div style="display: table-cell; width: 30%; text-align:
        left; padding-left: 5px;">

        </div>
    </div>




</div>


</div>

<g:if test="${eventInstance.speechs}">
    <div style="font-size:12px;display: table;padding-top: 2px;text-align: left;border-collapse:collapse; margin-left: 5px;line-height: 1.5;">
        <div style="display: table-row;border: 1px solid #006C93;">
            <div style="display: table-cell; width: 30%;text-align:center;font-weight: bold;border-collapse:collapse;border: 1px solid #006C93;">
                Speaker
            </div>
            <div style="display: table-cell; width: 40%;text-align:center;padding-left: 2px; font-weight: bold;border-collapse:collapse;border: 1px solid #006C93;">
                Project and Speech Title
            </div>
            <div style="display: table-cell; width: 30%;text-align:center;padding-left: 2px; font-weight: bold;border-collapse:collapse;border: 1px solid #006C93;">
                Evaluator
            </div>
        </div>
        <g:each in="${eventInstance.speechs}" var="speech" status="i">
            <div style="display: table-row;border: 1px solid #006C93;">
                <div style="display: table-cell;text-align:justify;padding-left: 5px;border-collapse:collapse;border: 1px solid #006C93;">
                    ${speech.speaker}
                </div>
                <div style="display: table-cell;text-align:left;padding-left: 5px;border-collapse:collapse;border: 1px solid #006C93;">
                    ${speech.project}, ${speech.title}
                </div>
                <div style="display: table-cell;text-align:justify;padding-left: 5px;border-collapse:collapse;border: 1px solid #006C93;">
                    ${speech.evaluations.evaluator[0]}
                </div>
            </div>
        </g:each>
    </div>
</g:if>

            <div style="font-size:14px; display: table;padding-top: 10px;text-align: left; border-spacing: 10px;border-collapse: separate;">
        <g:if test="${eventInstance.ttm}">


                <div style="display: table-row; ">
                    <div style="display: table-cell;text-align: left; padding-left: 5px;">
                        <span style="font-weight: 600;">Toastmaster
                        Introduces Table Topics Master</span><br/>
                        Conduct Table Topics Session<br/>
                        Returns control to the Toastmaster
                    </div>
                    <div style="display: table-cell;text-align:left; padding-left: 5px;">
                        ${eventInstance.ttm}
                    </div>
                </div>
        </g:if>

        <g:if test="${eventInstance.ge}">

                <div style="display: table-row; ">

                    <div style="display: table-cell;text-align: left; padding-left: 5px;">
                        <span style="font-weight: 600;">Toastmaster
                        Introduces the General Evaluator</span>
                        <br/>
                        General Evaluator calls for reports from his
                        team and provides his/her evaluations.<br/>
                        Returns control to the Toastmaster

                    </div>
                    <div style="display: table-cell;text-align:left; padding-left: 5px;">
                        ${eventInstance.ge}
                    </div>
                </div>
        </g:if>
        <div style="display: table-row; ">

            <div style="display: table-cell;text-align: left; padding-left: 5px;">
                <span style="font-weight: 600;">Toastmaster makes
                closing notes</span>
                <br/>
                Returns control to the President

            </div>

        </div>
            </div>

                <div style="font-size:14px; display: table;padding-top: 10px;text-align: left; border-spacing: 10px;border-collapse: separate;">
        <div style="display: table-row; ">
            <div style="display: table-cell; width: 10%; text-align:
            center">
                6:00
            </div>
            <div style="display: table-cell; width: 90%;
            text-align: left; padding-left: 5px;">
                <span style="font-weight: 600;">President Presents
                Awards</span>

                <br/>
                And Makes Closing Remarks and Adjourn.
                <br/>General Meeting Begins.

            </div>

        </div>
    </div>

%{-- Right pane ends--}%
</div>
</div>
</div>

</body>
</html>