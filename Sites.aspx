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
            <a href="http://jira.klasresearch.com:8080/secure/RapidBoard.jspa?rapidView=15&quickFilter=29">JIRA</a> | 
            <a href="https://fontawesome.com/v4.7.0/icons/">FA 4.7</a> | 
			<a href="https://github.com/klasresearch/KLAS">GitHub/KLAS</a> | 
			<a href="http://visualstudioshortcuts.com/2015/" target="_blank">VS Studio Shortcuts</a> | 
			<a href="http://www.amp-what.com/unicode/search/%2F%26%5Cw%2F">HTML Codes</a> | 
			<a href="https://css-tricks.com/examples/ShapesOfCSS/">Shapes of CSS</a> |
			<a href="http://dev-research.klasresearch.com/styleguide/icons.html">KLAS FA</a> |
			<a href="http://dev-toolbox/template/static_full_version/">Inspinia Dashboard</a> | 
			<a href="https://canvaslms.klasresearch.com/">Canvas</a>
		</div>
		<div style="clear: both"></div>
		<div id="col1">
			<fieldset>
				<legend>ToolBox</legend><i>ASP.NET 3.5? and MVC 5?</i>
				<ul>
					<li>Bamboo: <a href="http://dev-build.klasresearch.com:8085/allPlans.action">Bamboo</a></li>
					<li>Octopous:   <a href="http://dev-build.klasresearch.com/app#/">Octopus</a></li>
					<li>Glimpse: <a href="http://dev-toolbox/glimpse.axd">Glimpse</a></li>
					<li>Localhost:&nbsp;&nbsp; <a href="http://wvander-toolbox/siteAdmin/sitemap">Browse</a>
						| <a href="\\wvanderh-dt\C$\Code\KLAS\Klas.Toolbox" target="_blank">Explore</a> | <a href="http://wvander-toolbox/template/static_full_version/">Inspinia Dashboard</a></li>
					<li>dev:&nbsp;&nbsp; <a href="http://dev-toolbox/">Browse</a> or <a href="http://dev-toolbox/dashboard/default.aspx?SeeCacheKeys=1">Home Page</a>
						| <a href="#Unknown" target="_blank">Explore</a></li>
					<li>QA:&nbsp;&nbsp; <a href="http://qa-toolbox/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>Stage:&nbsp;&nbsp; <a href="http://staging-toolbox/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>Live:&nbsp;&nbsp; <a href="http://toolbox.klasresearch.com">http://toolbox.klasresearch.com</a></li>
				</ul>
				Content Server
				<br />
				Dev: \\cmnfile\WebFileShare_dev\Content
				<br />
				QA: \\cmnfile\WebFileShare_qa\Content
				<br />
				Stage:	\\cmnfile\WebFileShare_stage\Content
				<br />
				Live: \\Ash\Content
				<p>
					If asked "who is your hero?"<br />
					Answer: Super Dave
				</p>
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
                    <li>dev core:&nbsp;&nbsp; <a href="http://dev-core.klasresearch.com">Browse</a></li>
					<li>QA:&nbsp;&nbsp; <a href="http://qa-research/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
					<li>Stage:&nbsp;&nbsp; <a href="http://staging-research/">Browse</a> | <a href="#"
						target="_blank">Explore</a></li>
                    <li>Stage core:&nbsp;&nbsp; <a href="https://staging-core.klasresearch.com/">Browse</a></li>
                    <li>Git Branch: staging-research</li>
					<li>Live:&nbsp;&nbsp; <a href="http://data.klasresearch.com/">http://data.klasresearch.com</a></li>
				</ul>
				<br />
				<br />
					<b>&nbsp;<u>Users</u></b>
					<ul>
						<li>mercedes@epic.com (epic - vendor)</li>
						<li>mstack@epic.com (epic - vendor)</li>
						<li>devtest@klasresearch.com (provider) John Doe-Test</li>
						<li>marc.probst@imail.org (Intermountain - provider)</li>
					</ul>					
			</fieldset>
			<div class="SpacerBetweenFieldSets">
			</div>
		</div>

		<div id="col2Spacer">
		</div>

		<div id="col3">
			<fieldset>
				<legend>Klas Research X</legend>
				<ul>
					<li>Localhost:&nbsp;&nbsp; <a href="http://wvander-researchx/Home">http://wvander-researchx/Home</a></li>
				</ul>
			</fieldset>
			<div class="SpacerBetweenFieldSets">
			</div>
		</div>
		<div id="col3Spacer">
		</div>
	</div>
	<br />
	<b>SqlServer Sql Reporting Service:</b>  <a href="http://reporting/Reports/Pages/Folder.aspx">http://reporting/Reports/Pages/Folder.aspx</a>
	<br />
	Example of <b>Roles</b>, such as EmployeeRoleType.TechTeam, see C:\Code\KLAS\Klas.Toolbox\Modules\HumanResources\Employee\Add.aspx.cs
	<hr />

	Alex's new "databaseAccess" project may need to be added to the KLAS solution.  <a href="/img/DatabaseAccessProject.jpg" target="_blank">Diagram</a>

	<hr />

	<b>KLAS Push Diagram</b>
	<a href="/img/programmer_workflow.jpg" target="_blank">Diagram</a>
	<br />
	<br />

	
	<b>Database User Defined Types</b>
	<a href="/img/UserDefinedTypes.jpg" target="_blank">Diagram</a>
	<br />
	<br />
	<b>Product Dev Cycle </b>
	<a href="/docs/ProductDevCycle_v1.7.pdf" target="_blank">Doc</a>
	<br />
	<br />

	<b>Push to Live</b>
	Using Source Tree <i>(by merging staging branch into live-research repo  or live-toolbox repo)</i>
	<ul>
		<li>In source tree click on the Repository menu and select "add remote", click the add button, and the toolbox and/or research Repo from Ash (http://kudu-live-toolbox/live-toolbox.git || http://kudu-live-research/live-research.git)</li>
		<li>With the Ash remote(s) added find the Remotes icon on the left side menu of Source Tree, and right click live-ToolBox (or reseach) and do a Fetch (pull will not work)</li>
		<li>Now "live" should appear under live-toolbox remotes and next double click "live" to create a local copy (aka checkout).</li>
		<li>Next merge local staging branch into the live branch</li>
		<li>Push the live branch, but make sure that in the "push to repostitory" dropdown you have choosen "live-toolbox", and that the remote branch is set to "live". See this <a href="/img/pushtoLiveSourceTree.png" target="_blank">screen shot</a>. </li>
	</ul>
	<br />
	<br />
	Using Git-Extensions <i>(by merging Master branch into live-research repo  or live-toolbox repo)</i>
	<ul>
		<li>Pick KLAS from the Recent Repositories live</li>
		<li>Get the lastest code by clicking the blue "pull" arrow <i class="fa fa-arrow-down"></i>.</li>
		<li>Click the blue "push" arrow <i class="fa fa-arrow-up"></i>.</li>
		<li>In the resulting dialog in the first drop down pick live-toolbox. [For QA or staging leave the dropdown on "origin"].  See <span style="text-decoration: underline; cursor: pointer; color: blue" onclick="var ele = document.getElementById('divImgPush'); ele.style.display = 'block'">pic</span>.  <i>One might also update the live-research repo and then push live-research to live as in this <span style="text-decoration: underline; cursor: pointer; color: blue" onclick="var ele = document.getElementById('divImgPush2'); ele.style.display = 'block'">pic</span></i>.
			 

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
		<li>Also see <a href="docs/EDMX.docx">How to update the EDMX from the sql-staging database</a>.</li>
	</ul>

	<b>Tech Team Process Documentation</b>
	<ul>
		<li>Process <a href="docs/TechTeamProcessDocumentation.docx">doc</a>.</li>
	</ul>

	<b>Accessing the database through code</b>
	<ul>
		<li>Basically we use Injection.  MVC Controller consumes a Domain Controller class which in turn consumes the Domain Repository which access the EDMX generated dbcontext.  Here are a few more details:  <a href="docs/AccessingDatabaseViaKLASCode.docx">doc</a>.</li>
	</ul>

	<b>Adding a new DLL Reference</b>
	<ul>
		<li>Any new DLL that is to be reference in a project should first be added to the C:\Code\KLAS\Assemblies\ folder</li>
		<li>The same DLL will also need be be added to gitHub by going to the gitHub <a href="https://github.com/klasresearch/KLAS/" target="_blank">website</a>, opening the Assemblies folder, and uploading the new dll.</li>
	</ul>
	<br />
	<br />
	<span style="color: red; font-weight: bold">If we update inspinia.js we need to ensure the call to skin-config.html is commented out.</span>

	<div id="Footer">
		Design by <a href="mailto:Walter.Vanderheide@KlasResearch.com">Walter VanderHeide</a>
	</div>
</body>
</html>
