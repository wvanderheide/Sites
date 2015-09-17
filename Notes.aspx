<!DOCTYPE html>
<html>

<%@ Page Language="c#" %>

<head>
    <% 
        String ID = string.Empty;

        if (Request.QueryString["id"] != null)
            ID = Request.QueryString["id"];

        Response.Write(@" <link rel=""stylesheet"" href=""style/SitesStyle" + ID + @".css"" type=""text/css"">" + "\r\n");        
    %>
    <title>Notes
        <%= ID %></title>

    <script type="text/javascript" src="js/jquery-1.4.1.min.js"></script>

    <script type="text/javascript" src="js/jquery.throbber.min.js"></script>

    <script type="text/javascript">
        var Count_ajaxSend = 0;
        var Count_ajaxComplete = 0;
        var Count_ajaxSuccess = 0;

        function ToggleNotShown() {
            switch (document.getElementById("Checkbox5").checked) {
                case true:
                    $(".NotShown").removeClass("NotShown").addClass("Shown")
                    $("#buttonPPT").removeClass("Shown").addClass("NotShown")
                    break;
                case false:
                    $(".Shown").removeClass("Shown").addClass("NotShown")
                    $("#buttonPPT").removeClass("NotShown").addClass("Shown")
                    break;
            }
        }

        function draw() {
            var canvas = document.getElementById("canvas");
            if (canvas.getContext) {
                var ctx = canvas.getContext("2d");

                ctx.fillStyle = "rgb(200,0,0)";
                ctx.fillRect(10, 10, 55, 50);
                ctx.fillStyle = "rgba(0, 0, 200, 0.5)";
                ctx.fillRect(30, 30, 55, 50);

            }
        }


        //################################################################################################
        //#   Learning JSON Section STARTS
        //################################################################################################   
        //ARRAYS Way 1: (traditional way)
        var continents = new Array();
        continents[0] = "Europe";
        continents[1] = "Asia";
        continents[2] = "Australia";
        continents[3] = "Antarctica";
        continents[4] = "North America";
        continents[5] = "South America";
        continents[6] = "Africa";

        //alert(continents[0] + " is one of the " + continents.length + " continents.");

        //ARRAYS Way 2: (via literal notation)
        var continents2 = ["Europe", "Asia", "Australia", "Antarctica", "North America", "South America", "Africa"];

        //alert(continents2[0] + " is one of the " + continents2.length + " continents of continents 2 array.");

        //Defining an object in JavaScript Way 1:
        var mailingAddress = {};
        mailingAddress.Address = "123 Anywhere St.";
        mailingAddress.City = "Springfield";
        mailingAddress.PostalCode = "TOK OKO";

        //alert("The package will be shipped to postal code " + mailingAddress.PostalCode);

        //Way 2: (via object literal notation)
        var mailingAddress2 = {
            "Address": "123 Anywhere St.",
            "City": "Springfield",
            "PostalCode": "TOK OKO"
        };
        //alert("The package will be shipped to postal code " + mailingAddress2.PostalCode);


        //To convert a JavaScript object into a JSON string, pass the object into the JSON.stringify() method
        //window.JSON is part of JavaScript since ECMAScript 5.0 was released in December 2009, see http://en.wikipedia.org/wiki/ECMAScript
        var jsonString = window.JSON.stringify(mailingAddress);
        // alert(jsonString);
        //To convert a JSON string into a JavaScript object, you simply pass the JSON into the JSON.parse() method, like this:
        var jsObject = JSON.parse(jsonString); //instead of parse you could use OLD SCHOOL eval but if the JSON string is EVIL then you could be in trouble.
        // alert(jsObject.City);

        //In jQuery there is the parseJSON() method
        //$.parseJSON(jsonString);



        //array elements and object member values can themselves, in turn, use object and array literals
        //Below we define the contact object with 3 properties (name, PermissionToCall,PhoneNumbers).
        // PhoneNumbers in turn consists of an array of unnamed object that has two properties (Location, Number)
        var contact = {
            "Name": "John Doe",
            "PermissionToCall": false,
            "PhoneNumbers": [
           {
               "Location": "Home",
               "Number": "555-555-1234"
           },
           {
               "Location": "Work",
               "Number": "555-555-9999 Ext. 123" //comment
           }
            ]
        };
        if (contact.PermissionToCall) {
            alert("Call " + contact.Name + " at " + contact.PhoneNumbers[1].Number);
        }
        var x = JSON.stringify(contact);
        // alert(x);

        //################################################################################################
        //#   Learning JSON Section ends
        //################################################################################################



        $(document).ready(function () {
            /*
            $("ul >li:first").next().hover(function() { $(this).addClass("blue") }, function() { $(this).removeClass("blue") }); //Child Selector (“parent > child”)
            $("ul:first li").each(function(i) { $(this).append(" Bam! " + i) }); 
            $("li").not(":has(span)").css("text-decoration", "line-through");         
            $("a[href*='weblogs']").css("border", "solid 5px yellow"); // '*=' is a Predicate Selectors for "contains", see predicate notes below
            $("a[target]").css("background", "green");  
            $("legend, li:first").css("border", "solid 5px yellow");    // format all the legend and the first li  
            $("li").eq(10).css("border", "solid 5px yellow"); //eq is like items[i] in dot.net - it reduces the set of matched elements to the one at the specified index
            $("li:contains(the)").css("background-color", "red");  //Select all elements that contain the specified text.
            */

            //################################################################################################
            //#   format the HTML area
            //##############################################################################################
            var $input = $("div form input"); //when you assign a jQuery array to a var you should preface it with $ (as we did here).
            $input.offset({ left: 150 });

            // var $span = $("div form span");
            //  $span.offset({ left: 40 });

            //################################################################################################
            //#   Call the draw method to draw on the HTML 5 canvas element
            //################################################################################################
            draw();

            //################################################################################################
            //#   Use jQuery to make all offsite links open in a new window
            //################################################################################################
            $(document).ready(function () {
                $("a").filter(function () {
                    return this.hostname && this.hostname !== location.hostname;
                }).attr('target', '_blank');
            });


            //################################################################################################
            //#   Add a new method called check to the jQuery Library
            //################################################################################################
            jQuery.fn.check = function (mode) {
                // if mode is undefined, use 'on' as default

                return this.each(function () {
                    switch (mode) {
                        case 'uncheck':
                            this.checked = false;
                            break;
                        case 'toggle':
                            this.checked = !this.checked;
                            break;
                        default:
                            this.checked = true;
                            break;
                    }
                });
            };
            // call the new method that was added to jQuery
            $("input:checkbox").check('check');
            ToggleNotShown();



            $("#buttonPPT").click(function () {
                $(".NotShown:first").removeClass("NotShown").addClass("Shown");
            });

            // $("div small").ajaxSend(function(e, xhr, opt) { Count_ajaxSend++; alert("Requesting " + opt.url + ".\n\nCount_ajaxSend = " + Count_ajaxSend); });
            // $("div small").ajaxComplete(function() { Count_ajaxComplete++; alert("ajax Complete x = " + Count_ajaxComplete); });
            // $("div small").ajaxSuccess(function() { Count_ajaxSuccess++; alert("ajax Success x = " + Count_ajaxSuccess); });

            //############################################
            //jQuery for $.ajax()
            //############################################
            $("#button1").click(function () {
                $("#button1").hide();
                $.ajax({
                    url: "docs/Text.txt", success: function (urlContent) {
                        var x = "<hr />";
                        $("div small").text(x + urlContent);
                        $("#button1").slideDown('slow');
                    }
                });
            });

            //############################################
            //jQuery for $.getScript()
            //############################################
            $("#button2").click(function () { $.getScript("js/alert.txt"); });

            //############################################
            //jQuery for $.load()
            //############################################
            $("#button3").click(function () { $("#divBtn3").load("js/alert.txt"); });
            $("#ViewJQuery").click(function () { $("#ViewJQuery").load("http://code.jquery.com/jquery-1.6.2.js"); });

            //############################################
            //jQuery for $.get() Example
            //############################################
            $("#divGet").click(function () {
                //http://localhost/WebService1/Service1.asmx/Squared?x=3
                $.get("http://jquery.bassistance.de/starterkit/rate.php?rating=2", function (data) {

                    //$("#divGet").html($("count", data).text()); //-- shorthand
                    $(data).find('ratings').each(function () {
                        $("#divGet").html($(this).find("count").text() + "<br />");
                    });
                });
            }); //end of click

            $("#divGet2").click(function () {
                alert("Note this is slow - 5 sec delay");
                $.get("http://localhost/WebService1/Service1.asmx/Squared?x=3", function (xml, s) { $("#divGet2").html('3*3 = ' + $("int", xml).text()); alert("status = " + s); }, "xml"); //end get
            }); //end of click

            //############################################
            //jQuery for post example 1
            //############################################
            $("#placeHolder1").append("<span>Click</span> this to see a message: ");
            $("#placeHolder1 span").css("cursor", "pointer").css("text-decoration", "underline");
            $("#placeHolder1 span").click(function () {
                $.post("/WebService1/Service1.asmx/HelloWorld", function (data) { $("#placeHolder1").text($("string", data).text()); });
            });   //end click function

            //Add jQuery UI
            // $("#placeHolder1").throbber({ parent: "#placeHolder1" });


            //############################################
            //jQuery for post example 2
            //############################################
            $("#placeHolder2").append("Please rate: ");

            for (var i = 1; i <= 5; i++) {
                $("#placeHolder2").append("<a href='#'>" + i + "</a> ");
            }

            $("#placeHolder2 a").click(function (e) {
                e.preventDefault();

                $.post("/WebService1/Service1.asmx/Average", { x: $(this).html() }, function (data) { Process(data) });
            });    //end click function

            //Add jQuery UI    
            $("#placeHolder2 a").throbber({ parent: "#placeHolder2" });
        });

        function Process(xml) {
            $("#placeHolder2").html("Thanks for the <b>" + $("int", xml).text() + "</b> rating.");
        }
    </script>

</head>
<body>
    <!-- Definition List
    <dl>
        <dt>one</dt>
        <dd>
            - 1 sub item</dd>
        <dd>
            - 2 sub item</dd>
        <dt>two</dt>
        <dd>
            - sub item</dd>
    </dl> -->
    <div id="MainBody">
        <div id="HeaderText"><span id="Logo">&#9819;</span>Notes</div>
        <div id="Nav">
            <a href="Sites.aspx?id=<%= ID %>">Sites</a> |
            <a href="Notes.aspx?id=<%= ID %>">Notes</a> |
            <a href="http://jira.klasresearch.com:8080/secure/Dashboard.jspa">JIRA</a> | 
        <a href="http://www.amp-what.com/unicode/search/%2F%26%5Cw%2F">HTML Codes</a>
        </div>
        <div style="clear: both"></div>
        <div id="col1">
            <fieldset>
                <legend>Visual Studio Hot Keys</legend>
                <div style="padding: 5px">
                    <ul>
                        <li>Line Wrap:  Ctrl E + W</li>
                        <li>Book Marks Window:  Ctrl K + W</li>
                        <li>Task List (see ToDo):  Ctrl \ + T</li>
                    </ul>
                </div>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
        </div>

        <div id="col1Spacer">
        </div>

        <div id="col2">
            <fieldset>
                <legend>Git Commands</legend>
                <div style="padding: 5px">
                    Local repo consists of: Working dir  --> Index (staging area)  --> Head (Local Repo [the local ".git" dir]) --> Remote Repo (gitHub)
                    <br />
                    you can have a "stash" below Working dir.
                    <br />
                    <ul>
                        <li>git status</li>
                        <li>git checkout -- &lt;filename&gt;<br />
                            <i>this replaces the changes in your working tree with the last content in HEAD</i></li>
                        <li>git reset --hard and git clean -fd<br />
                            <i>To revert uncommitted changes issue this two commands (The first one will revert existing files modified since last commit, and the second one will remove all files added since last commit.)</i></li>
                    </ul>
                    <br />
                    <a href="http://rogerdudler.github.io/git-guide/">Git Basics</a> | 
                    <a href="img/MgaV9.png">pic</a>
                </div>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
        </div>

        <div id="col1Spacer">
        </div>

        <div id="col2">
            <fieldset>
                <legend>LINQ</legend>
                <div style="padding: 5px">
                    <ul>
                        <li><a href="docs/Linq Notes.txt" target="_blank">LINQ Notes</a></li>
                    </ul>
                </div>
            </fieldset>
        </div>
        <div style="clear: both">
        </div>

        <!--
            #################################################################################################################
            #################################################################################################################
                    JQuery Notes Start Here
            #################################################################################################################
            #################################################################################################################
            -->
        <fieldset class="AutoHeight AutoWidth">
            <legend>jQuery Notes</legend>
            <input id="Checkbox5" type="checkbox" onclick="ToggleNotShown()" />
            Show All
                <details>
                    <summary>Expand...</summary>
                    <ul>
                        <li>jQuery is a library that makes it quicker and easier to build feature-rich JavaScript
                        webpages and web apps. Often with jQuery you can write a single line of code to
                        achieve what would have taken 10+ lines of regular JavaScript code.</li>
                        <li><span class="NotShown">jQuery is itself written in JavaScript.</span></li>
                        <li><span class="NotShown">August 26th, 2006 First stable version of jQuery: jQuery
                        1.0</span></li>
                        <li><span class="NotShown">Current Release as of July 11, 2011 is v1.6.2</span></li>
                        <li><span class="NotShown">If you don't want to store the jQuery library on your own
                        computer, you can use the hosted jQuery library from Google, Microsoft, or jQuery
                        CDN (content delivery network)<br />
                            Google:<input type="text" id="scriptsrc" style="width: 700px;" value="<script src=&quot;//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js&quot; type=&quot;text/javascript&quot;></script>" />
                            <br />
                            Microsoft:<input type="text" id="Text1" style="width: 700px;" value="<script src=&quot;http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.6.2.min.js&quot; type=&quot;text/javascript&quot;></script>" />
                            <br />
                            jQuery:<input type="text" id="Text2" style="width: 700px;" value="<script src=&quot;http://code.jquery.com/jquery-1.6.2.min.js&quot; type=&quot;text/javascript&quot;></script>" />
                            <br />
                            <br />
                            <div id="ViewJQuery" style="cursor: pointer; background-color: #eeeeee; border: dotted 1px black; width: 200px">
                                View jQuery Library
                            </div>
                        </span></li>
                        <li><span class="NotShown">The jQuery() function. <i>The key to it all!</i> This function
                        has many uses, including selecting elements, creating elements, and running other
                        functions.</span></li>
                        <li><span class="NotShown">"$()" is short-hand for the jQuery() function</span></li>
                        <li><span class="NotShown">The jQuery() function is most commonly called by passing
                        in either a selector or a callback.</span></li>
                        <li><span class="NotShown">A <em>callback</em> is a function that is passed as an argument
                        to another function and is executed after its parent function has completed.</span></li>
                        <li><span class="NotShown">$( selector [, context ] )uses the selector string to select
                        1 or more elements in the page to work with. The jQuery() function (see shorthand
                        above) — searches through the DOM for any elements that match the provided selector
                        and creates a new "jQuery" object that references these elements.</span></li>
                        <li><span class="NotShown">A selector can be any CSS selector, as well as various jQuery-specific
                        selectors, see a list at <a href="http://www.w3schools.com/jquery/jquery_ref_selectors.asp">w3schools</a>.</span></li>
                        <li><span class="NotShown">The optional context argument lets you limit the search to
                        children of a specific DOM node, instead of the entire page. By default, selectors
                        perform their searches within the DOM starting at the document root. However, the
                        "context" can be given for the search by using the optional second parameter to
                        the $() function. For example, to do a search within an event handler, the search
                        can be restricted like so: $('div.foo').click(function() { $('span', this).addClass('bar');});
                        When the search for the span selector is restricted to the context of "this", only
                        spans within the clicked element will get the additional class.</span></li>
                        <li><span class="NotShown">$( callback ) lets you set a callback function to be run
                        once the Web page has finished loading. This ensures that your code doesn't run
                        until all the elements within the page are available to the code, and it also lets
                        you begin running your code before all the external resources, such as images, have
                        fully loaded. Usually, <i>callback</i> will be your main function that kicks off
                        your script.</span></li>
                        <li><span class="NotShown">"$(function(){})" is short-hand for "$(document).ready(function(){})"
                        - to avoid using this just put your &lt;script&gt; block at the bottom of the page
                        just above &lt;/html&gt;</span></li>
                        <li><span class="NotShown">The function that is defined inside the "ready" parentheses
                        above, is a callback function.</span></li>
                        <li><span class="NotShown">Selectors that begin with ":" are called psuedo selectors.
                        For example ":first".</span></li>
                        <li><span class="NotShown">Predicate Selectors: '^=' is Start With, '$=' is Ends With, '*=' is Contains. As in $("a[href*='weblogs']").css("border", "solid 5px yellow")</span></li>
                        <li><span class="NotShown">A callback function defined within a method call is called an anonymous function.  
                        For example: $("ul:first li").each(function(i) { $(this).append(" Bam! " + i) }); </span></li>
                        <li>When assigning a jQuery array to a var best practices says to preface it with <b>$</b>.
                            For example: var $input = $("div form input");</li>
                        <li><span class="NotShown"><a href="http://api.jquery.com">jQuery API</a></span></li>
                        <li><span class="NotShown"><a href="http://www.w3schools.com/jquery/jquery_ref_events.asp">jQuery Event Methods</a></span></li>
                        <li><span class="NotShown"><a href="http://www.w3schools.com/jquery/jquery_quiz.asp">Quiz</a></span></li>
                    </ul>
                    <br />
                    <br />
                    <span class="NotShown">jQuery is great for:</span>
                    <ul>
                        <li><span class="NotShown">Adding animated effects to elements. jQuery lets you easily
                        add effects such as fading in/out, sliding in/out, and expanding/contracting.</span></li>
                        <li><span class="NotShown">Manipulating the DOM. You can easily add, remove, and reorder
                        content in the Web page using just a couple of lines of code.</span></li>
                        <li><span class="NotShown">Creating image slideshows. You can use jQuery effects to
                        build nice animated slideshows (lightboxes).</span></li>
                        <li><span class="NotShown">Making drop-down menus. jQuery makes it easy to create multi-level
                        dropdowns with animations.</span></li>
                        <li><span class="NotShown">Creating drag-and-drop interfaces. Use jQuery to build a
                        page with elements that can be repositioned or reordered simply by dragging and
                        dropping.</span></li>
                        <li><span class="NotShown">Adding power to forms. With jQuery you can easily add complex
                        client-side form validation, create auto-complete Ajax text fields that pull data
                        from a server-side database, and so on.</span></li>
                        <li><span class="NotShown">jQuery UI - see <a href="http://jqueryui.com">http://jqueryui.com</a>
                            - jQuery UI provides abstractions for low-level interaction and animation, advanced
                        effects and high-level, themeable widgets, built on top of the jQuery JavaScript
                        library, that can be used to build interactive web applications. <a href="http://jquery.org/team/">See team</a>.</span></li>
                        <li><span class="NotShown"><b>Making AJAX requests<sup>*</sup>.</b> These use JavaScript
                        to request additional data from the Web server without having to reload the page.
                        <br />
                            <br />
                            AJAX is an acronym for asynchronous JavaScript and XML.
                        <br />
                            <br />
                            <b>a·syn·chro·nous</b>: 1. not occurring at the same time. 2. (of a computer or
                        other electrical machine) having each operation started only after the preceding
                        operation is completed.<br />
                            <br />
                            In programming, asynchronous events are those occurring independently of the main
                        program flow. In other words "asynchronous" is the ability to handle processes <b><i>independently</i></b>
                            from other processes. Synchronous which is the opposite of asynchronous, then means
                        that processes are dependent upon other processes.
                        <br />
                            <br />
                            Prehaps a better name for AJAX would be <span style="font-weight: bold; font-size: large">IJAX</span>, as in <b>INDEPENDENT</b> javascript and XML?
                        
                        </span></li>
                    </ul>
                    <br />
                    <br />
                    <span class="NotShown"><b>XMLHttpRequest</b> is a JavaScript object that was designed
                    by Microsoft, adopted by Mozilla, and is now being standardized in the W3C. It provides
                    an easy way to retrieve data at a URL. Despite its name, XMLHttpRequest can be used
                    to retrieve any type of data, not just XML, and it supports protocols other than
                    HTTP (including file and ftp).
                    <br />
                        <br />
                        To create an instance of XMLHttpRequest, simply do this: var req = new XMLHttpRequest();
                    Learn more <a href="https://developer.mozilla.org/en/xmlhttprequest">here</a>.
                    <br />
                        <br />
                        The XMLHttpRequest object is <b>a developer's dream</b>, because you can:
                    <ul>
                        <li>Update a web page without reloading the page</li>
                        <li>Request data from a server after the page has loaded </li>
                        <li>Receive data from a server after the page has loaded</li>
                        <li>Send data to a server in the background</li>
                    </ul>
                        <br />
                        <br />
                        With the advent of cross-browser JavaScript libraries such as jQuery (or ProtoType),
                    developers can invoke XMLHttpRequest functionality without coding directly to the
                    API. JQuery objects represent elements from the current client-side DOM. They all
                    have a .load() method that takes a URI parameter and makes an XMLHttpRequest to
                    that URI, then by default places any returned HTML into the HTML element represented
                    by the jQuery object. </span>
                    <br />
                    <br />
                    <span class="NotShown">
                        <h3>Key jQuery ajax methods</h3>
                        <ol>
                            <li><b>$.ajax()</b> Performs an AJAX request</li>
                            <li><b>$.ajaxSend()</b> Specifies a function to run before any and all AJAX requests
                            are sent. </li>
                            <li><b>$.ajaxComplete()</b> Specifies a function to run when any and all AJAX requests
                            complete, whether or not the request was successful</li>
                            <li><b>$.ajaxSuccess()</b> Specifies a function to run an AJAX request completes successfully.</li>
                            <li><b>$.getScript()</b> Loads (and executes) a JavaScript from the a server using an
                            AJAX HTTP GET request</li>
                            <li><b>#.load()</b>Loads data from a server and puts the returned HTML into the specified
                            element. </li>
                            <li><b>$.post()</b> Loads data from a server using an AJAX HTTP POST request</li>
                            <li><b>$.get()</b> Loads data from a server using an AJAX HTTP GET request</li>
                            <li><a href="http://www.w3schools.com/jquery/jquery_ref_ajax.asp">[more]</a></li>
                        </ol>
                    </span>
                    <br />
                    <br />
                    <div class="NotShown">
                        <b>&nbsp;$.ajax()</b>
                        <div>
                            <small>Let AJAX change this text</small>
                        </div>
                        <button id="button1">
                            Using $.ajax()</button>
                        <br />
                        <br />
                        <b>&nbsp;$.ajaxSend()</b>
                        <div>
                            Uncomment $("div small").ajaxSend in the javascript, and then click the button above.
                        </div>
                        <br />
                        <b>&nbsp;$.ajaxComplete()</b>
                        <div>
                            Uncomment $("div small").ajaxComplete in the javascript, and then click the button
                        above.
                        </div>
                        <br />
                        <b>&nbsp;$.ajaxSucess()</b>
                        <div>
                            Uncomment $("div small").ajaxSuccess in the javascript, and then click the button
                        above.
                        </div>
                        <br />
                        <b>&nbsp;$.getScript()</b>
                        <div>
                            <button id="button2">
                                Using $.getScript()</button>
                        </div>
                        <br />
                        <b>&nbsp;$.load()</b>
                        <div id="divBtn3">
                            <button id="button3">
                                Using $.load()</button>
                        </div>
                        <br />
                        <b>&nbsp;$.get() Example</b>
                        <div>
                            When we go to <a href="http://jquery.bassistance.de/starterkit/rate.php?rating=2"
                                target="_blank">http://jquery.bassistance.de/starterkit/rate.php?rating=2</a>
                            we get back XML.
                        <br />
                            We use jQuery to traverse the returned XML and get the text of the 'count' node.
                        <br />
                            (this example shows the long-hand way to traverse the XML, the other examples use
                        short-hand)
                        </div>
                        <br />
                        <div id="divGet" style="cursor: pointer; text-decoration: underline">
                            Click
                        </div>
                        <div id="divGet2" style="cursor: pointer;">
                            Another Example. Uses Squared
                        </div>
                        <br />
                        <b>&nbsp;$.post() Example 1</b>
                        <br />
                        &nbsp;See Service1 at <a href="http://localhost/WebService1/Service1.asmx" target="_blank">http://localhost/WebService1/Service1.asmx</a> | <a href="\\USA906L\C$\Users\Walterv\Documents\Visual Studio 2008\Projects\WebService1">Explore</a>
                        <div id="placeHolder1" style="padding-left: 10px;">
                        </div>
                        <br />
                        <b>&nbsp;$.post() Example 2</b>
                        <br />
                        Uses the jQuery UI "Throbber".
                    <div id="placeHolder2" style="padding-left: 10px;">
                    </div>
                        <div>
                            <br />
                            Use the F12 Developer Tools "Network" tab to learn more about how this AJAX is done.
                        The tool will show the calls to the webservice.
                        </div>
                    </div>
                    <button id="buttonPPT">
                        Next Bullet</button>
                </details>
        </fieldset>
        <div style="clear: both">
        </div>
        <fieldset class="AutoHeight AutoWidth" <% if(ID=="99"){Response.Write(@"style='display:none'");} %>>
            <legend>JSON</legend>
            <div style="padding: 5px">
                <a href="docs/JSONNotes.txt">Notes</a>.
            </div>
        </fieldset>
        <div style="clear: both">
        </div>
        <fieldset class="AutoHeight AutoWidth" <% if(ID=="99"){Response.Write(@"style='display:none'");} %>>
            <legend>HTML 5</legend>
            <div style="padding: 5px">
                <%--<details>--%>
                <a href="docs/IntroducingHTML5.docx" target="_blank">Bryans Demo Notes</a>
                <br />
                <br />
                <a href="http://html5doctor.com/html5-custom-data-attributes/"><b>HTML5 Custom Data Attributes (data-*)</b></a>: Custom data attributes are intended 
                    to store custom data private to the page or application, for which there are no more appropriate attributes or elements. 
                    Every HTML element may have any number of custom data attributes specified, with any value.
                    <br />
                <br />
                Using data- attributes with JavaScript: accessing an element’s dataset property. This dataset property — part of the new 
                    HTML5 JavaScript APIs — will return a DOMStringMap object of all the selected element's data- attributes
                    <br />
                <br />
                <pre><code>&lt;div id='sunflower' data-leaves='47' data-plant-height='2.4m'&gt;&lt;/div&gt;
                        &lt;script&gt;
                        // 'Getting' data-attributes using dataset 
                        var plant = document.getElementById('sunflower');
                        var leaves = plant.<b><i>dataset.</i></b>leaves; // leaves = 47;

                        // 'Setting' data-attributes using dataset
                        var tallness = plant.<b><i>dataset.</i></b>plantHeight; // 'plant-height' -&gt; 'plantHeight'
                        plant.dataset.plantHeight = '3.6m';  // Cracking fertiliser
                        &lt;/script&gt;</code></pre>

                <br />
                <br />
                <div style="position: relative;">
                    OPERA 11 is the best HTML 5 browser as of July, 2011 . Chrome
                12, and FF 5 are also pretty good. In the Browser info section, I am using the display
                tag, and Chrome 12 is the only browser recognizing it. 
                <br />
                    <br />
                    Canvas:<br />
                    <canvas id="canvas" width="300" height="150" style="border: solid 1px black"></canvas>
                    <form name="frmCheckBox" id="frmCheckBox" method="get">
                        Placeholder:<input type="text" id="placeHolder" required placeholder="First Name" spellcheck title="Title attribute provides sub error message" />
                        <script>
                            document.getElementById('placeHolder').setCustomValidity('Default error message is set by Chrome, change it with javascript setCustomValidity method.');
                        </script>
                        <br />
                        E-mail:<input type="email" name="user_email1" autofocus />
                        <br />
                        E-mail:
                <input type="email" name="user_email2" />
                        <br />
                        Search:
                <input type="search" name="search1" />
                        <br />
                        Telephone
                <input type="tel" name="tel1" />
                        <br />
                        URL
                <input type="url" name="url1" />
                        <br />
                        DateTime
                <input type="datetime" name="datetime1" />
                        <br />
                        Date
                <input type="date" name="date1" />
                        <br />
                        Datetime-local
                <input type="datetime-local" name="date2" />
                        <br />
                        Month
                <input type="month" name="month1" />
                        <br />
                        Week
                <input type="week" name="week1" />
                        <br />
                        Time
                <input type="time" name="time1" />
                        <br />
                        Number
                <input type="number" name="number1" />
                        <br />
                        Color
                <input type="color" name="color1" />
                        <br />
                        Range
                <input type="range" name="range1" />
                        <br />
                        <input type="submit" />
                    </form>
                </div>
                <%-- </details>--%>
            </div>
        </fieldset>
        <div style="clear: both">
        </div>

        <fieldset class="AutoHeight AutoWidth" <% if(ID=="99"){Response.Write(@"style='display:none'");} %>>
            <legend>Browser Info</legend>
            <div style="padding: 5px">
                <details>
                    Web browsers consist of a user interface (the Chrome), and a layout engine (i.e
                    Trident, Gecko, WebKit, Presto). The layout engine does most of the work. It essentially
                    takes a URL and a screen rectangle as arguments. It then retrieves the document
                    corresponding to the URL and paints a graphical representation of it on the given
                    rectangle. It handles links, cookies, scripting, plug-in loading, and other matters.
                    The different layout engines implement the DOM standards to varying degrees of compliance.
                    <br />
                    <br />
                    The user interface provides the menu bar, address bar, status bar, bookmark manager,
                    history and preferences window among other things. It embeds the layout engine and
                    serves as an interface between the user and the engine. Since it provides the graphical
                    elements surrounding the area in which the engine paints documents, the term chrome
                    is sometimes used to refer to it.
                    <br />
                    <br />
                    Web browsers rely on layout engines to parse HTML into a DOM. Learn about the history
                    of DOM <a href="http://en.wikipedia.org/wiki/Document_Object_Model">here</a>. DOM
                    Level 2 was published in late 2000. It introduced the "getElementById".
                    <br />
                    <br />
                    A web browser is not obliged to use DOM in order to render an HTML document. However,
                    the DOM is required by JavaScript scripts that wish to inspect or modify a web page
                    dynamically. In other words, the Document Object Model is the way JavaScript sees
                    its containing HTML page and browser state. Web browsers rely on layout engines
                    to parse HTML into a DOM. Some layout engines such as Trident/MSHTML and Presto
                    are associated primarily or exclusively with a particular browser such as Internet
                    Explorer and Opera respectively. Others, such as WebKit and Gecko, are shared by
                    a number of browsers, such as Safari, Google Chrome, RockMelt, Firefox or Flock.
                    <br />
                    <ul>
                        <li>IE 9 User_agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; <b>Trident/5.0</b>)
                        </li>
                        <li>FireFox 5.0 User_agent: Mozilla/5.0 (Windows NT 6.1; rv:5.0) <b>Gecko/20100101</b>
                            Firefox/5.0 </li>
                        <li>Google Chrome (12.0.742.112) User_agent: Mozilla/5.0 (Windows NT 6.1) <b>AppleWebKit/534.30</b>
                            (KHTML, like Gecko) Chrome/12.0.742.112 Safari/534.30</li>
                        <li>Opera 11.5 User_agent: Opera/9.80 (Windows NT 6.1; U; Edition United States Local;
                            en) <b>Presto/2.9.168</b> Version/11.50</li>
                        <li><b>Current User Agent:</b>
                            <%= Request.ServerVariables["Http_User_Agent"].ToString() %></li>
                    </ul>
                    <br />
                    The format of a user agent is only required to be a string made up of the product
                    and optional comments. An unofficial format used by Web browsers is as above, and
                    roughly consists of Mozilla/[version](Operating System) [layout engine]/[layout
                    engine details]) [extensions].
                    <br />
                    <b>Mozilla/5.0</b> is used to indicate compatibility with the Mozilla rendering
                    engine. Mozilla/Netscape released the first full-featured Web browser (based on
                    the earlier NCSA MOSAIC project), and as first to the goal, they got to define some
                    of the rules. As such, to this day, Microsoft has to put "Mozilla compatible" in
                    IE's user-agent string.
                    <br />
                    <br />
                    <a href="http://www.blooberry.com/indexdot/history/browsers3.htm">Browser TimeLine</a>
                    | <a href="http://en.wikipedia.org/wiki/Internet_Explorer#History">IE History</a>
                    | <a href="http://en.wikipedia.org/wiki/History_of_Firefox">Firefox</a>
                </details>
            </div>
        </fieldset>
        <fieldset class="AutoHeight" style="float: left; <% if(ID=="99"){Response.Write(@"display:none;"); } %>">
            <legend>ASP/ASP.NET Time Line</legend>
            <ul>
                <li>ASP 1.0, December 1996 </li>
                <li>ASP 2.0, September 1997</li>
                <li>ASP 3.0, November 2000</li>
                <li>ASP.NET 1.0, January 2002</li>
                <li>ASP.NET 1.1, April 2003</li>
                <li>ASP.NET 2.0, November 2005</li>
                <li>ASP.NET 3.0, November 2006</li>
                <li>ASP.NET 3.5, November 2007 </li>
                <li>ASP.NET 4.0, April 2010</li>
            </ul>
        </fieldset>
        <fieldset class="AutoHeight" style="float: left; <% if(ID=="99"){Response.Write(@"display:none;"); } %>">
            <legend>Visual Studio</legend>
            <ul>
                <li>Visual Studio .NET (2002), February 2002</li>
                <li>Visual Studio .NET 2003, April 2003
                        <br />
                    <i>(The ".Net" moniker is removed hereafter)</i></li>
                <li>Visual Studio 2005, October 2005 </li>
                <li>Visual Studio 2008, November 2007 </li>
                <li>Visual Studio 2010, April 2010</li>
            </ul>
            <a href="http://en.wikipedia.org/wiki/Microsoft_Visual_Studio#Visual_Studio_6.0_.281998.29"
                target="_blank">Source</a>
        </fieldset>
        <div style="clear: both">
        </div>
        <fieldset class="AutoHeight AutoWidth" <% if(ID=="99"){Response.Write(@"style='display:none'");} %>>
            <legend>Notes About Trace</legend>
            <ul>
                <li>Using Trace.Write is really Page.Trace.Write, and it writes to Trace.axd (enabled
                        via web.config or the Page directive). Does not write to any Visual Studio Window.</li>
                <li>System.Diagnostics.Trace.WriteLine (.Write), writes to the OutPut Window (Cntrl
                        W,O) when Debugging is Started (F5).</li>
                <li>You can do the same thing as the line above via BreakPoints. Right Click a breakpoint
                        symbol and pick "When Hit".</li>
            </ul>
        </fieldset>
        <div style="clear: both">
        </div>
        <fieldset class="AutoHeight AutoWidth" <% if(ID=="99"){Response.Write(@"style='display:none'");} %>>
            <legend>Hosts</legend>
            <ul>
                <li>The hosts file maps IP addresses to a name.</li>
                <li>In IIS Manager I have added a host name to the "bindings" of each of the sites running on my box.</li>
                <li>So the hosts file maps 127.0.0.1 to a name like "MyIntranet" or "wvander-research"</li>
            </ul>
            <br />
            <br />
            &nbsp;The hosts file is located <a href="\\Wvanderh-dt\c$\Windows\System32\drivers\etc">here</a> (\\Wvanderh-dt\c$\Windows\System32\drivers\etc)
        </fieldset>

        <div style="clear: both">
        </div>

        <fieldset class="AutoHeight AutoWidth" <% if(ID=="99"){Response.Write(@"style='display:none'");} %>>
            <legend>Misc. Notes</legend>
            <ul>
                <li><a href="http://www.codeproject.com/Articles/866143/Learn-MVC-step-by-step-in-days-Day#Introduction" target="_blank">Learn MVC Project in 7 days</a></li>
                <li><a href="http://www.geekzilla.co.uk/View00FF7904-B510-468C-A2C8-F859AA20581F.htm">DateTime.ToString() Patterns </a></li>
                <li><a href="docs/GeneralCodingBestPractices.docx">General Coding Best Practices</a></li>
            </ul>
        </fieldset>
    </div>
    <div style="clear: both">
    </div>
    <div id="Footer">
        Design by <a href="mailto:Walter.Vanderheide@KlasResearch.com">Walter VanderHeide</a>
    </div>
</body>
</html>
