<%@ Page Language="c#" %>

<!DOCTYPE HTML>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style/SitesStyle1.css" type="text/css">
    <title>SVGs</title>
    <%

    %>
</head>
<body>
    <div id="MainBody">
        <!-- start class=p-lg div tag here -->
        <div class="p-lg">
            <div class="row">
                <div class="col-lg-3">
                    The &lt;svg&gt;
                    tag is used as a container for Scalable Vector Graphics.
                    <br />
                    <br />
                    The &lt;svg&gt; tag has a default width and height of width=300 height=150.  Collectively the width and height are called the viewport.  The term "viewport" is not a single attribute of the SVG tag, and is changed from the default by individually defining the width and height attributes of the tag. Note viewport values can be in pixels, or as percent, as in width=90% height=50%.

                    <br />
                    <br />
                    <b>viewBox is an attribute</b> of the SVG element in HTML. It is used to scale the SVG element that means we can set the coordinates as well as width and height. viewBoxdetermines the coordinate system and aspect ratio with min-x (typically set to 0) starting at the bottom left and increasing from left to right, and min-y (typically set to 0) starting at the top left, and increasing from top to bottom.  Think of it as Quadrant IV but with the y-axis in absolute value, <i>seems like the typical Quardrant I would have been more straight forward</i>.
                    <br />
                    <br />
                    Syntax:     viewBox = "min-x min-y width height"
                    <br />
                    <br />
                    Attribute Values:
                    <br />
                    min-x: It is used to set the horizontal axis. It is used to make the SVG move on a horizontal axis (i.e Left and Right).

                    <br />
                    min-y: It is used to set the vertical axis. It is used to make the SVG move on a vertical axis (i.e Up and Down). Set the value of min-y with a negative number. It will move the SVG on the bottom side.
                    <br />
                    min-x, and min-y control "panning" - Increase the min-x to pan right, decrease it to pan left.  Increase min-y to pan down, decrease it to pan up.
                    <br />
                    <br />
                    width: It is used to set the width of viewbox.
                    <br />
                    height: It is used to set the height of viewbox.
                    <br />
                    Make the viewBox dimensions, width and height, larger than those of the viewport to zoom out, and smaller to zoom in.
                    <br />
                    <br />
                    If the the viewBox coordinates span the same distance as the height and width (viewport) of the SVG tag, then the x, y scale should be in pixels. For example, &lt;svg height="20" width="20" viewBox="0 0 20 20"&gt; then each user unit is 1 pixel

                    <br />

                    <br />

                </div>
                <div class="col-lg-9">
                    <br />
                    <!-- Need a view model -->
                    My Learning Sources:
                    <br />
                    https://medium.com/@heyoka/scratch-made-svg-donut-pie-charts-in-html5-2c587e935d72
                    <br />
                    https://www.tutorialspoint.com/html5/html5_svg.htm
                    <br />
                    https://sergiocarracedo.es/2020/05/18/Creating-a-simple-donut-chart/
                    <br />
                    https://css-tricks.com/handmade-svg-bar-chart-featuring-svg-positioning-gotchas/
                    <br />
                    https://seesparkbox.com/foundry/how_to_code_an_SVG_pie_chart
                    <br />
                    Some less used but interesting ways to use SVG via Iframe, Object, and Embed tags, as well as Data URI, see videos 8 and 9 on https://css-tricks.com/lodge/svg/
                    <br />
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-lg-4">
                            <div style="height:700px">
                                <div style="height:400px; width:400px;">
                                    <svg width="100%" height="100%" style="border:1px solid gray" viewBox="0 0 100 100">
                                        <circle fill="green" cx="50" cy="50" r="33" stroke-width="33" stroke="green"></circle>
                                    </svg>
                                </div>
                                Here we have a solid circle, which can be achieved either by setting the fill attribute of the circle tag to the same color as the stroke, as we have done here, or by leaving off the stroke attributes (stroke-width and stroke), and increasing the radius by one half of the stroke value to achieve the same circumference.
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <div style="height:700px">
                                <div style="height:400px; width:400px;">
                                    <svg width="100%" height="100%" style="border:1px solid gray" viewBox="0 0 100 100">
                                        <circle fill="transparent" cx="50" cy="50" r="33" stroke-width="33" stroke="green"></circle>
                                    </svg>
                                </div>
                                If stroke-width is 33px, half (aka 16.5px) will be drawn outside the circumference and other half(aka 16.5px) inside the 207.34511513692635 circumference.
                            </div>

                        </div>
                        <div class="col-lg-4">

                            <div style="height: 700px;">
                                <div style="height:400px; width:400px;">
                                    <svg width="100%" height="100%" style="border:1px solid gray" viewBox="0 0 100 100">
                                        <circle fill="transparent" cx="50" cy="50" r="33" stroke-width="33" stroke="green" stroke-dasharray="155.50883635269477 51.83627878423159" stroke-dashoffset="51.83627878423159"></circle>
                                    </svg>
                                </div>
                                <div style="width: 400px; max-height: 250px; overflow-y: auto;">
                                    <!--position: absolute; top: 45px; left:0px;-->
                                    <ul>
                                        <li>
                                            Percent = the amount of the doughnut that is one color, ie let 75% be green.
                                        </li>
                                        <li>Circumference = 2*PI*R = 2(3.141592653589793)*33 = 207.34511513692635 user units</li>
                                        <li>stroke-dasharray, is a presentation attribute defining the pattern of strokes and gaps used to paint the outline of the shape, defined the number of user units to be strokes followed by the number of user units to be gaps.  In this case we want the stoke (aka green part) of the doughnet to be 75%, and the rest of the doughnut (aka the gaps, which in this case is 25%) to be transparent.  However, the stroke-dasharray can not be set with percentages, so we need to calculate the number of user units for strokes and gaps.</li>
                                        <li>Green Part = circumference * percent / 100 = 207.34511513692635 * 75 / 100 = <b>155.50883635269477</b> user units</li>
                                        <li> Transparent Part = circumference * (100 - percent) / 100 = 207.34511513692635 * (100 - 75) / 100 = <b>51.83627878423159</b> user units.  Likewise the Transparent Part = circumference - Green Part.</li>
                                        <li>Because we know [Green Part + Transparent Part = the Circumference] - as such 100 * [Green Part] / [Circumference] = 75%</li>
                                        <li>By default the stroke (aka green part) will be drawn starting at THREE O'clock and continue around in a clockwise direction for the length of the stroke as defined in the stroke-dasharray, in this case 155.50883635269477 user units.</li>
                                        <li>stroke-dashoffset, is used to begin the stroke a given length (in user units) away from  THREE O'clock.  In other words it causes the start of the dash array computation to be pulled by X user units.  This number can be positive or negative. If positive the stroke will begin X user units counter-clockwise from THREE O'clock, but if negative the stroke will being X user units clockwise from THREE O'clock.</li>
                                        <li>Here we have begun the stroke at TWELVE O'clock be setting the stroke-dashoffset to a length (51.83627878423159) that is 25% of the circumference (207.34511513692635).</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <div style="height:400px; width:400px; float:left">
                                <div style="height:400px; width:400px;">
                                    <svg width="100%" height="100%" viewBox="0 0 100 100" style="border:1px solid gray" class="donut">
                                        <circle class="donut-ring" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="navy"></circle>
                                        <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="RoyalBlue" stroke-dasharray="166.49812745495186 40.8469876819745" stroke-dashoffset="51.83627878423159"></circle>
                                    </svg>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <div style="height:400px; width:400px;">
                                <svg width="100%" height="100%" viewBox="0 0 100 100" style="border:1px solid gray" class="donut">
                                    <circle class="donut-ring" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="navy"></circle>
                                    <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="LightSkyBlue" stroke-dasharray="166.49812745495186 40.8469876819745" stroke-dashoffset="51.83627878423159"></circle>
                                </svg>
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <div style="height:400px; width:400px;">
                                <svg width="100%" height="100%" viewBox="0 0 100 100" style="border:1px solid gray" class="donut">
                                    <circle class="donut-ring" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="navy"></circle>
                                    <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="RoyalBlue" stroke-dasharray="166.49812745495186 40.8469876819745" stroke-dashoffset="51.83627878423159"></circle>
                                    <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="LightSkyBlue" stroke-dasharray="119.84547654914343 87.49963858778293" stroke-dashoffset="51.83627878423159"></circle>
                                    <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="white" stroke-dasharray="0.5 206.84511513692635" stroke-dashoffset="51.83627878423159"></circle>

                                    <!--Space between segments-->
                                    <g>
                                        <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="white" stroke-dasharray="0.5 206.84511513692635" stroke-dashoffset="139.3359173720145"></circle>


                                        <circle class="donut-segment" cx="50" cy="50" r="33" stroke-width="33" fill="transparent" stroke="white" stroke-dasharray="0.5 206.84511513692635" stroke-dashoffset="92.68326646620608"></circle>
                                    </g>

                                    <g class="chart-text">
                                        <text x="38%" y="51%" style="font-size:6px;font-family:Verdana;" class="chart-number">(n=289)</text>
                                    </g>
                                </svg>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div style="height:60px">&nbsp;</div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <svg fill="green">
                                    <polygon points="0,0 100,0 50,100" style="fill:yellow;stroke:black;stroke-width:2" />
                                </svg>

                                <svg height="210" width="500">
                                    <polygon points="100,10 40,198 190,78 10,78 160,198"
                                             style="fill:lime;stroke:lime;" />
                                </svg>
                                <br />
                                <br />
                                The polygon points attribute defines the list of points (pairs of x,y absolute coordinates) required to draw the polygon.
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <br><br>
                                <div style="width:600px; padding-top:20px">
                                    <svg viewBox='0 0 100 10' style="border: 0px solid black;">
                                        <!--width='100%' height='65px'-->
                                        <g class='bars'>
                                            <rect fill='#eee' width='90' height='6' x='0' y='2'></rect>;
                                            <rect fill='orange' width='45' height='6' x='0' y='2'></rect>
                                        </g>
                                        <rect fill='black' x='50' y='1' width='1' height='8'></rect> <!--transform="translate(-2, 50) -->
                                        <g>
                                            <text fill='#0074d9' x='55' y='6' font-size="4px">30</text>
                                            <text fill='#0074d9' x='59.3' y='4.5' font-size="2px">th</text>
                                        </g>
                                    </svg>
                                </div>

                                <br />
                                <br />
                                <div style="width:600px;">
                                    <svg viewBox='0 0 100 20' style="border: 0px solid black;">
                                        <g>
                                            <text fill='DarkGreen' x='97' y='6' font-size="5px" font-weight="bold">+</text>
                                            <text fill='orangeRed' x='1' y='6' font-size="5px" font-weight="bold">-</text>
                                        </g>

                                        <g class='bars'>
                                            <rect fill='DarkGreen' width='100' height='6' x='0' y='7'></rect>;
                                            <rect fill='LightGreen' width='75' height='6' x='0' y='7'></rect>
                                            <rect fill='orange' width='50' height='6' x='0' y='7'></rect>
                                            <rect fill='orangeRed' width='25' height='6' x='0' y='7'></rect>
                                        </g>

                                        <g>
                                            <polygon points="55,15 57,11 59,15" style="fill:white;" />
                                            <circle fill="gray" cx="57" cy="13.5" r="0.75"></circle>
                                            <polygon points="70,5 74,5 72,9" style="fill:white;" />
                                            <circle fill="navy" cx="72" cy="6.5" r="0.75"></circle>
                                        </g>

                                        <text fill='navy' x='70' y='5' font-size="3px" font-weight="bold">40</text>

                                        <g>
                                            <text fill='gray' x='0.25' y='17' font-size="3px" font-weight="bold">-100</text>
                                            <text fill='gray' x='49.5' y='17' font-size="3px" font-weight="bold">0</text>
                                            <text fill='gray' x='95' y='17' font-size="3px" font-weight="bold">100</text>

                                        </g>
                                    </svg>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end class=p-lg div tag here -->
    </div>
    <div id="Footer">
        Design by <a href="mailto:Walter.Vanderheide@KlasResearch.com">Walter VanderHeide</a>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
