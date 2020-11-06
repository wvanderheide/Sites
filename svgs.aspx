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

        <div class="p-lg">
            <div class="row">
                <div class="col-lg-3">
                    <div id="HeaderText"><span id="Logo">&#9819;</span>SVGs</div>
                </div>
                <div class="col-lg-9">
                    <br />
                    see 
            <br />
                    https://medium.com/@heyoka/scratch-made-svg-donut-pie-charts-in-html5-2c587e935d72
            <br />
                    https://www.tutorialspoint.com/html5/html5_svg.htm

            <br />
                    https://sergiocarracedo.es/2020/05/18/Creating-a-simple-donut-chart/

            <br />

                    <br />

                    <br />

                    <div class="row">
                        <div class="col-lg-4">
                            <div style="height: 700px">
                                <div style="height: 400px; width: 400px;">
                                    <svg width="100%" height="100%" style="border: 1px solid gray" viewBox="0 0 100 100">
                                        <circle fill="green" cx="50" cy="50" r="33" stroke-width="33" stroke="green"></circle>
                                    </svg>
                                </div>
                                Here we have a solid circle, which can be achieved either by setting the fill attribute of the circle tag to the same color as the stroke, as we have done here, or by leaving off the stroke attributes (stroke-width and stroke), and increasing the radius by one half of the stroke value to achieve the same circumference.
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <div style="height: 700px">
                                <div style="height: 400px; width: 400px;">
                                    <svg width="100%" height="100%" style="border: 1px solid gray" viewBox="0 0 100 100">
                                        <circle fill="transparent" cx="50" cy="50" r="33" stroke-width="33" stroke="green"></circle>
                                    </svg>
                                </div>
                                If stroke-width is 33px, half (aka 16.5px) will be drawn outside the circumference and other half(aka 16.5px) inside the 207.34511513692635 circumference.
                            </div>

                        </div>
                        <div class="col-lg-4">

                            <div style="height: 700px;">
                                <div style="height: 400px; width: 400px;">
                                    <svg width="100%" height="100%" style="border: 1px solid gray" viewBox="0 0 100 100">
                                        <circle fill="transparent" cx="50" cy="50" r="33" stroke-width="33" stroke="green" stroke-dasharray="155.50883635269477 51.83627878423159" stroke-dashoffset="51.83627878423159"></circle>
                                    </svg>
                                </div>
                                <div style="width: 400px; max-height: 250px; overflow-y: auto;">
                                    <!--position: absolute; top: 45px; left:0px;-->
                                    <ul>
                                        <li>Percent = the amount of the doughnut that is one color, ie let 75% be green.
                                        </li>
                                        <li>Circumference = 2*PI*R = 2(3.141592653589793)*33 = 207.34511513692635 pixels</li>
                                        <li>stroke-dasharray, is a presentation attribute defining the pattern of strokes and gaps used to paint the outline of the shape, defined the number of pixels to be strokes followed by the number of pixels to be gaps.  In this case we want the stoke (aka green part) of the doughnet to be 75%, and the rest of the doughnut (aka the gaps, which in this case is 25%) to be transparent.  However, the stroke-dasharray can not be set with percentages, so we need to calculate the number of pixels for strokes and gaps.</li>
                                        <li>Green Part = circumference * percent / 100 = 207.34511513692635 * 75 / 100 = <b>155.50883635269477</b> user units</li>
                                        <li>Transparent Part = circumference * (100 - percent) / 100 = 207.34511513692635 * (100 - 75) / 100 = <b>51.83627878423159</b> user units.  Likewise the Transparent Part = circumference - Green Part.</li>
                                        <li>Because we know [Green Part + Transparent Part = the Circumference] - as such 100 * [Green Part] / [Circumference] = 75%</li>
                                        <li>By default the stroke (aka green part) will be drawn starting at THREE O'clock and continue around in a clockwise direction for the length of the stroke as defined in the stroke-dasharray, in this case 155.50883635269477 pixels.</li>
                                        <li>stroke-dashoffset, is used to begin the stroke a given length (in pixels) away from  THREE O'clock.  In other words it causes the start of the dash array computation to be pulled by X pixels.  This number can be positive or negative. If positive the stroke will begin X pixels counter-clockwise from THREE O'clock, but if negative the stroke will being X pixels clockwise from THREE O'clock.</li>
                                        <li>Here we have begun the stroke at TWELVE O'clock be setting the stroke-dashoffset to a length (51.83627878423159) that is 25% of the circumference (207.34511513692635).</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4">
                            <div style="height: 400px; width: 400px; float: left">
                                <div style="height: 400px; width: 400px;">
                                    <svg width="100%" height="100%" viewBox="0 0 42 42" style="border: 1px solid gray" class="donut">
                                        <circle class="donut-hole" cx="21" cy="21" r="15.91549430918954" fill="#fff"></circle>
                                        <circle class="donut-ring" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="navy" stroke-width="3"></circle>


                                        <circle class="donut-segment" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="RoyalBlue" stroke-width="3" stroke-dasharray="80.3 19.7" stroke-dashoffset="25"></circle>
                                    </svg>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <div style="height: 400px; width: 400px;">
                                <svg width="100%" height="100%" viewBox="0 0 42 42" style="border: 1px solid gray" class="donut">
                                    <circle class="donut-hole" cx="21" cy="21" r="15.91549430918954" fill="#fff"></circle>
                                    <circle class="donut-ring" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="navy" stroke-width="3"></circle>
                                    <circle class="donut-segment" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="LightSkyBlue" stroke-width="3" stroke-dasharray="75 25" stroke-dashoffset="25"></circle>
                                </svg>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div style="height: 400px; width: 400px;">
                                <svg width="100%" height="100%" viewBox="0 0 42 42" style="border: 1px solid gray" class="donut">
                                    <circle class="donut-hole" cx="21" cy="21" r="15.91549430918954" fill="#fff"></circle>
                                    <circle class="donut-ring" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="navy" stroke-width="3"></circle>



                                    <circle class="donut-segment" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="RoyalBlue" stroke-width="3" stroke-dasharray="80.3 19.7" stroke-dashoffset="25"></circle>
                                    <circle class="donut-segment" cx="21" cy="21" r="15.91549430918954" fill="transparent" stroke="LightSkyBlue" stroke-width="3" stroke-dasharray="57.8 42.2" stroke-dashoffset="25"></circle>

                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div id="Footer">
        Design by <a href="mailto:Walter.Vanderheide@KlasResearch.com">Walter VanderHeide</a>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
