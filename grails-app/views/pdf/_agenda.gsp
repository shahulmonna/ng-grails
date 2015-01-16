<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
    <meta charset="utf-8"/>
    <title></title>

</head>

<body style="font-family: 'sans-serif;'; height: 860px; width: 100%;">

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
                We meet every Wednesday of the week from ${event.timings}
            </div>
            %{-- Meeting location info--}%
            <div style="padding-top: 25px; font-size: 14px;">
            <span style="color: #006C93;font-weight: bold; vertical-align:baseline;">
                Location :
            </span><br/>
                ${event.location},
                <a target="_blank" href="https://goo.gl/maps/FmU6e">
                    Tarento Technologies Pvt Ltd
                </a>
            </div>

            %{-- Social network sites info--}%
            <div style="padding-top: 20px; font-size: 14px;line-height: 1.5;">
                <span style="color: #006C93;font-weight: bold; vertical-align:baseline;">
                    Social Networks :
                </span><br/>
%{--Facebook group--}%
                <a target="_blank" href="https://www.facebook.com/groups/724248577661468/"
                   style="border: 0; text-decoration: none; padding-top: 10px;">
<img
        src="http://memorialrheumatology.com/wp-content/uploads/2012/03/like_us_on_facebook.jpg" width="160" height="40" alt="FB"/>
                </a>
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
                        style="color: #033547; font-weight: bold;">${event.eventNumber}</span><br/>
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

            %{-- Agenda contents--}%
            <div style="font-size11px; display: table;
        width: 100%;padding-top: 10px; text-align: left; border-spacing: 10px;border-collapse: separate;">
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
                        ${event.saa}
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
                    ${event.president}
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
                    ${event.emcee}
                </div>
            </div>
            <div style="display: table-row-group; ">
                <div style="display: table-row; ">
                    <div style="display: table-cell; width: 10%; text-align:
                    center">
                        4:40
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
                        ${event.ge}<br/>
                        ${event.ahCounter}<br/>
                        ${event.timeManager}<br/>
                        ${event.grammarian}

                    </div>
                </div>

</div>


            <div style="display: table-row-group;">
                <div style="display: table-row; ">
                    <div style="display: table-cell; width: 10%; text-align:
                    center">
                        4:50
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

                <g:each in="${event.speechs}" var="speech" status="i">

                    <div style="display: table-row; ">
                        <div style="display: table-cell; width: 10%; text-align:center">

                        </div>
                        <div style="display: table-cell; width: 60%;
                        text-align: left; padding-left: 5px;">
                            <span style="font-weight: 600;">Speaker
                            ${i+1}: </span>
                            <span>${speech.speaker}</span>
                            <br/>
                            <g:if test="${speech.title}">
                                <span>Title : </span> <span>${speech.title}</span>
                                <br/>
                            </g:if>
                            <g:if test="${speech.project}">
                                <span>Project : </span>
                                <span>${speech.project}</span>
                            </g:if>

                        </div>

                        <div style="display: table-cell; width: 30%; text-align:left; padding-left: 5px;">
                    <g:if test="${speech.evaluations.evaluator}">
                            <span style="font-weight: 600;">Evaluator ${i+1}</span> <br/>${speech.evaluations.evaluator[0]}
                    </g:if>
                        </div>
                    </div>
                </g:each>

            </div>

            <g:if test="${event.ttm}">
            <div style="display: table-row-group;">

                <div style="display: table-row; ">
                    <div style="display: table-cell; width: 10%; text-align:
                    center">

                    </div>
                    <div style="display: table-cell; width: 60%;
                    text-align: left; padding-left: 5px;">
                        <span style="font-weight: 600;">Toastmaster
                        Introduces Table Topics Master</span><br/>
                        Conduct Table Topics Session<br/>
                        Returns control to the Toastmaster
                    </div>
                    <div style="display: table-cell; width: 30%; text-align:
                    left; padding-left: 5px;">
    ${event.ttm}
                    </div>
                </div>
                </div>
            </g:if>

        <g:if test="${event.ge}">
            <div style="display: table-row-group;">

                <div style="display: table-row; ">
                    <div style="display: table-cell; width: 10%; text-align:
                    center">

                    </div>
                    <div style="display: table-cell; width: 60%;
                    text-align: left; padding-left: 5px;">
                        <span style="font-weight: 600;">Toastmaster
                        Introduces the General Evaluator</span>
                        <br/>
                        General Evaluator calls for reports from his
                        team and provides his/her evaluations.<br/>
                        Returns control to the Toastmaster

                    </div>
                    <div style="display: table-cell; width: 30%; text-align:
                    left; padding-left: 5px;">
            ${event.ge}
                    </div>
                </div>
            </div>
        </g:if>
                <div style="display: table-row; ">
                    <div style="display: table-cell; width: 10%; text-align:
                    center">

                    </div>
                    <div style="display: table-cell; width: 90%;
                    text-align: left; padding-left: 5px;">
                        <span style="font-weight: 600;">Toastmaster makes
                        closing notes</span>
                        <br/>
                        Returns control to the President

                    </div>

                </div>

                <div style="display: table-row; ">
                    <div style="display: table-cell; width: 10%; text-align:
                    center">
5:50
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