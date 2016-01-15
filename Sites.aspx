<%@ Page Language="c#" %>

<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
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
            <a href="http://spam.klasresearch.com/FrontController">Spam (email and 1q)</a> |
            <a href="http://jira.klasresearch.com:8080/secure/RapidBoard.jspa?rapidView=1&quickFilter=1">JIRA</a> | 
			<a href="http://visualstudioshortcuts.com/2015/" target="_blank">VS Studio Shortcuts</a> | 
			<a href="http://www.amp-what.com/unicode/search/%2F%26%5Cw%2F">HTML Codes</a> | 
			<a href="https://wrapbootstrap.com/">Templates (for toolbox)</a>
		</div>
		<div style="clear: both"></div>
		<div id="col1">
			<fieldset>
				<legend>ToolBox</legend><i>ASP.NET 3.5? and MVC 5?</i>
				<ul>
					<li>Localhost:&nbsp;&nbsp; <a href="http://wvander-toolbox/">Browse</a>
						| <a href="\\wvanderh-dt\C$\Code\KLAS\Klas.Toolbox" target="_blank">Explore</a></li>
					<li>dev:&nbsp;&nbsp; <a href="http://dev-toolbox/">Browse</a>
						| <a href="#Unknown" target="_blank">Explore</a> DEV BOX IS????</li>
					<li>Dev Kudu: <a href="http://staging-kudu/deployments/dev-toolbox">dev-toolbox</a>
					<li>QA:&nbsp;&nbsp; <a href="http://qa-toolbox/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>QA Kudu: <a href="http://staging-kudu/deployments/qa-toolbox">qa-toolbox</a>
					<li>Stage:&nbsp;&nbsp; <a href="http://staging-toolbox/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>Stage Kudu: <a href="http://staging-kudu/deployments/staging-toolbox">staging-toolbox</a>
					<li>Live:&nbsp;&nbsp; <a href="http://toolbox.klasresearch.com">http://toolbox.klasresearch.com</a></li>
					<li>Live Kudu: <a href="http://live-kudu/deployments/live-toolbox">Live-toolbox</a>
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
					<li>Dev Kudu: <a href="http://staging-kudu/deployments/dev-research">dev-research</a>
					<li>QA:&nbsp;&nbsp; <a href="http://qa-research/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>QA Kudu: <a href="http://staging-kudu/deployments/qa-research">qa-research</a>
					<li>Stage:&nbsp;&nbsp; <a href="http://staging-research/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>Stage Kudu: <a href="http://staging-kudu/deployments/staging-research">staging-research</a>
					<li>Live:&nbsp;&nbsp; <a href="http://data.klasresearch.com/">http://data.klasresearch.com</a></li>
					<li>Live Kudu: <a href="http://live-kudu/deployments/live-research">Live-research</a>
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
	<b>Push to Live</b>
	Using Git-Extensions <i>(by merging Master branch into live-research repo  or live-toolbox repo)</i>
	<ul>
		<li>Pick KLAS from the Recent Repositories live</li>
		<li>Get the lastest code by clicking the blue "pull" arrow <i class="fa fa-arrow-down"></i>.</li>
		<li>Click the blue "push" arrow <i class="fa fa-arrow-up"></i>.</li>
		<li>In the resulting dialog in the first drop down pick live-toolbox. [For QA or staging leave the dropdown on "origin"].  See <span style="text-decoration:underline; cursor: pointer; color:blue" onclick="var ele = document.getElementById('divImgPush'); ele.style.display = 'block'">pic</span>.  <i>One might also update the live-research repo and then push live-research to live as in this <span style="text-decoration:underline; cursor: pointer; color:blue" onclick="var ele = document.getElementById('divImgPush2'); ele.style.display = 'block'">pic</span></i>.
			 

		</li>
		<li>In the "Push Branches" section notice that the Branch to Push is "master" and in the "to" area type "live" in lowercase without the qoutes. [For QA or staging type in qa or staging]</li>
	</ul>
		
	<div style="display: none" id="divImgPush">
		<img src="img/pushtoLive.png" />
	</div>
	
	
	<div style="display: none" id="divImgPush2">
		<img src="img/PushToLiveFromLive.png" />
	</div>

	<b>HOT FIX</b>
	<ul>
		<li>See Git Release Process <a href="docs/GITReleaseProcess.docx">doc</a>.</li>
	</ul>

	<b>Tech Team Process Documentation</b>
	<ul>
		<li>Process <a href="docs/TechTeamProcessDocumentation.docx">doc</a>.</li>
	</ul>
	
	<b>Accessing the database through code</b>
	<ul>
		<li>Basically we use Injection.  MVC Controller consumes a Domain Controller class which in turn consumes the Domain Repository which access the EDMX generated dbcontext.  Here are a few more details:  <a href="docs/AccessingDatabaseViaKLASCode.docx">doc</a>.</li>
	</ul>

    <div id="Footer">
		Design by <a href="mailto:Walter.Vanderheide@KlasResearch.com">Walter VanderHeide</a>
	</div>
</body>
</html>
