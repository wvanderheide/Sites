<%@ Page Language="c#" %>
<!DOCTYPE HTML>
<html>
<head>
    <% 
        String ID = string.Empty;

        if (Request.QueryString["id"] != null)
            ID = Request.QueryString["id"];

        Response.Write("<title>Website Shortcuts" + ID + "</title>\r\n");
        Response.Write(@" <link rel=""stylesheet"" href=""style/SitesStyle" + ID + @".css"" type=""text/css"">" + "\r\n");      
    %>
    <script language="javascript" type="text/javascript">
        function ShowID(id) {
            //alert('Show');
            document.getElementById(id).style.display = '';
        }
        function HideID(id) {
            document.getElementById(id).style.display = 'none';
        }
    </script>
</head>

<body>
    <div id="MainBody">
        <div id="HeaderText"><span id="Logo">&#9819;</span>KLAS Websites</div>
        <div id="Nav">
            <a href="Sites.aspx?id=<%= ID %>">Sites</a> |
            <a href="Notes.aspx?id=<%= ID %>">Notes</a> |
            <a href="http://jira.klasresearch.com:8080/secure/RapidBoard.jspa?rapidView=1&quickFilter=1">JIRA</a> | 
			<a href="http://visualstudioshortcuts.com/2015/" target="_blank">VS Studio Shortcuts</a> | 
        <a href="http://www.amp-what.com/unicode/search/%2F%26%5Cw%2F">HTML Codes</a>
        </div>
        <div style="clear:both"></div>
        <div id="col1">
            <fieldset>
                <legend>ToolBox</legend><i>ASP.NET 3.5? and MVC 5?</i>
                <ul>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://wvander-toolbox/">Browse</a>
                        | <a href="\\wvanderh-dt\C$\Code\KLAS\Klas.Toolbox" target="_blank">Explore</a></li>
                    <li>dev:&nbsp;&nbsp; <a href="http://dev-toolbox/">Browse</a>
                        | <a href="#Unknown" target="_blank">Explore</a> DEV BOX IS????</li>
					<li>Kudu: <a href="http://staging-kudu/deployments/dev-toolbox">dev-toolbox</a>
                    <li>QA:&nbsp;&nbsp; <a href="http://qa-toolbox/">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                    <li>Stage:&nbsp;&nbsp; <a href="http://staging-toolbox/">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                    <li>Live:&nbsp;&nbsp; <a href="http://toolbox.klasresearch.com">http://toolbox.klasresearch.com</a></li>
                </ul>
                <p>
                    If asked "who is your hero?"<br />
                    Answer: Super Dave
                </p>
                <br />
                <br />
                SqlServer Sql Reporting Service:  <a href="http://reporting/Reports/Pages/Folder.aspx">http://reporting/Reports/Pages/Folder.aspx</a>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
        </div>

        <div id="col1Spacer">
        </div>

        <div id="col2">
            <fieldset>
                <legend>Klas Research (Data)</legend><i>ASP.NET 3.5?</i>
                <ul>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://wvander-research/">Browse</a>
                        | <a href="\\wvanderh-dt\C$\Code\KLAS\Klas.Research" target="_blank">Explore</a></li>
                    <li>dev:&nbsp;&nbsp; <a href="http://dev-research/">Browse</a>
                        | <a href="#Unknown" target="_blank">Explore</a> DEV BOX IS????</li>
					<li>Kudu: <a href="http://staging-kudu/deployments/dev-research">dev-research</a>
                    <li>QA:&nbsp;&nbsp; <a href="http://qa-research/">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                    <li>Stage:&nbsp;&nbsp; <a href="http://staging-research/">Browse</a> | <a href="#"
                            target="_blank">Explore</a></li>
                    <li>Live:&nbsp;&nbsp; <a href="http://data.klasresearch.com/">http://data.klasresearch.com</a></li>
                </ul>
                <p></p>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
        </div>

        <div id="col2Spacer">
        </div>

        <div id="col3">
            <fieldset>
                <legend>klasresearch.com</legend>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="http://www.klasresearch.com/">http://www.klasresearch.com</a></li>
                </ul>
                <p>klasresearch.com is a sitefinity site</p>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
        </div>

        <div id="col3Spacer">
        </div>
    </div>
    <div id="Footer">
        Design by <a href="mailto:Walter.Vanderheide@KlasResearch.com">Walter VanderHeide</a>
    </div>
</body>
</html>
