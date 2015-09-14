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
        Response.Write(@"    <!--[if IE]><link rel=""stylesheet"" href=""style/SitesStyle" + ID + @"_IEHack.css"" type=""text/css""> <![endif]-->");          
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
        <div id="Nav"><a href="SpellCheck.aspx?id=1">Spell Checker</a> |
        <a href="http://inside.neways.com/">inside.neways.com</a> | 
            <a href="http://newayssupport/">BugZilla</a> | <a href="?id=1">Style 1</a> | <a href="?id=2">
                Style 2</a> | <a href="?">No Style</a> | <a href="Notes.aspx?id=<%= ID %>">Notes</a>
        </div>
        <div id="NavSpacer">
        </div>
        <div id="HeaderLogo">
        </div>
        <div id="HeaderText">
            Website Shortcuts And Info</div>
        <div id="HeaderSpacer">
        </div>
        <div id="col1">
            <fieldset>
                <legend>Japan Website</legend><i>ASP.NET 3.5</i>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="http://www.neways.com/jp-ja-jp/">www.neways.com/jp-ja-jp/</a></li>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://localhost:49573/jp-ja-jp/Login.aspx">Browse</a>
                        | <a href="\\USA906L\C$\Development\NewaysDev\Neways" target="_blank">Explore</a></li>
                    <li>test:&nbsp;&nbsp; <a href="http://test.neways.com/jp-ja-jp/Login.aspx">Browse</a>
                        | <a href="#Unknown" target="_blank">Explore</a> JPN189819/1neways</li>
                    <li>stage:&nbsp;&nbsp; <a href="#Unknown">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                </ul>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
            <fieldset>
                <legend>SAB</legend>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="http://www.neways.com/sab/en/Home.aspx">www.neways.com/sab/en/Home.aspx</a></li>
                    <li>Live: Admin&nbsp;&nbsp; <a href="http://www.neways.com/sab/siteFinity">www.neways.com/sab/siteFinity</a></li>
                    <li>Pre:&nbsp;&nbsp; <a href="http://pre.neways.com/sab2">Browse</a>
                        | <a href="\\hummer\sitefinity_pre\sf_sab" target="_blank">Explore</a><br />
                        Login with Windows Credentials.</li>
                    <li>Stage:&nbsp;&nbsp; <a href="http://stage.neways.com/sab/en/Home.aspx">stage.neways.com/sab/en/Home.aspx</a></li>
                    <li>Stage: Admin&nbsp;&nbsp; <a href="http://stage.neways.com/sab/siteFinity">stage.neways.com/sab/siteFinity</a></li>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://localhost:3081/sf_sab/en/Home.aspx">Browse</a>
                        | <a href="\\USA906L\C$\Development\NewaysDev\SiteFinity\sf_sab" target="_blank">Explore</a><br />
                        Login with Windows Credentials.</li>
                    <li>Localhost Admin:&nbsp;&nbsp; <a href="http://localhost:3081/sf_sab/en/Sitefinity/admin/default.aspx">
                        Browse</a> | <a href="\\USA906L\C$\Development\NewaysDev\SiteFinity\sf_sab" target="_blank">
                            Explore</a><br />
                        WalterV/1_etc or admin/admin!</li>
                </ul>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
            <fieldset>
                <legend>Credit Cards</legend>
                <ul>
                    <li>Neways Test Testing Credit Cards:
                        <ul>
                            <li>4111 1111 1111 1111</li>
                            <li>4055 5011 1111 1111</li>
                            <li>4121 7425 9485 2850</li>
                            <li>4444 3333 1111 2222</li>
                        </ul>
                    </li>
                    <li>NSP Test Testing Credit Cards:
                        <ul>
                            <li>4242 4242 4242 4242</li>
                            <li>5454 5454 5454 5454<br />
                                (Exp Oct-Dec = Decline)</li>
                        </ul>
                    </li>
                    <li>NSP Live Testing Credit Card:
                        <ul>
                            <li>5442 9811 1111 1015
                                <br />
                                Date: 12/13</li>
                        </ul>
                    </li>
                </ul>
            </fieldset>
        </div>
        <div id="col1Spacer">
        </div>
        <div id="col2">
            <fieldset>
                <legend>Hong Kong Website</legend><i>ASP.NET 3.5</i>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="http://www.neways.com/hk-zh-hk/">www.neways.com/hk-zh-hk/</a></li>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://localhost:49573/hk-zh-hk/Login.aspx">Browse</a>
                        | <a href="\\USA906L\C$\Development\NewaysDev\Neways" target="_blank">Explore</a></li>
                    <li>test:&nbsp;&nbsp; <a href="http://test.neways.com/hk-zh-hk/Login.aspx">Browse</a>
                        | <a href="\\hummer\netsteps test\Neways Corporate HK" target="_blank">Explore Corporate</a>
                        | <a href="\\hummer\netsteps test\Business Manager HK" target="_blank">Explore Dist
                            Admin</a> | <a href="\\hummer\netsteps test\Neways.Adapters.HK" target="_blank">Explore
                                Adapters</a> HKG1510/1neways</li>
                    <li>stage:&nbsp;&nbsp; <a href="#Unknown">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                </ul>
                <br />
                To <b>PUSH</b> to HUMMER (test) <span id="more" onclick="ShowID('olPush');">more...</span>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
            <fieldset>
                <legend>USA</legend><i>ASP.NET 3.5</i>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="http://www.neways.com/us-en-us/">www.neways.com/us-en-us/</a></li>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://localhost:49573/us-en-us/Login.aspx">Browse</a>
                        | <a href="\\USA906L\C$\Development\NewaysDev\Neways" target="_blank">Explore</a></li>
                    <li>test:&nbsp;&nbsp; <a href="http://test.neways.com/us-en-us/Login.aspx">Browse</a>
                        | <a href="\\hummer\netsteps test\Neways Corporate US" target="_blank">Explore Corporate</a>
                        | <a href="\\hummer\netsteps test\Business Manager US" target="_blank">Explore Dist
                            Admin</a> | <a href="\\hummer\netsteps test\Neways.Adapters.US" target="_blank">Explore
                                Adapters</a> 500505000/health</li>
                    <li>stage:&nbsp;&nbsp; <a href="#Unknown">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                </ul>
                <br /><br />
                <b>Note:</b> All these site appear to have two website, for example NetSteps.DistributorAdmin.US and NetSteps.Websites.Corporate.US
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
            <fieldset>
                <legend>Servers</legend>
                <ul>
                    <li>The hosts file lists most (all??) of the Neways servers and their IP addresses.<br />
                        The hosts file is located <a href="\\USA906L\C$\Windows\System32\drivers\etc">here</a></li></ul>
            </fieldset>
        </div>
        <div id="col2Spacer">
        </div>
        <div id="col3">
            <fieldset>
                <legend>Taiwan Website</legend><i>ASP.NET 3.5</i>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="http://www.neways.com/tw-zh-tw/">www.neways.com/tw-zh-tw/</a></li>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://localhost:49573/tw-zh-tw2/Login.aspx">Browse</a>
                        | <a href="\\USA906L\C$\Development\NewaysDev\Neways" target="_blank">Explore</a></li>
                    <li>test:&nbsp;&nbsp; <a href="http://test.neways.com/tw-zh-tw2/Login.aspx">Browse</a>
                        | <a href="\\prvwebtest1\f$\US2009" target="_blank">Explore</a> TWN1000/1neways</li>
                    <li>stage:&nbsp;&nbsp; <a href="#Unknown">Browse</a> | <a href="#"
                        target="_blank">Explore</a></li>
                </ul>
            </fieldset>
            <div class="SpacerBetweenFieldSets">
            </div>
            <fieldset>
                <legend>USA Branch</legend><i>ASP.NET 3.5</i>
                <ul>
                    <li>Live:&nbsp;&nbsp; <a href="#">N/A</a></li>
                    <li>Localhost:&nbsp;&nbsp; <a href="http://localhost:49579/us-en-us/Pages/Login.aspx">Browse</a>
                        | <a href="\\USA906L\C$\Development\NewaysDev\Websites" target="_blank">Explore</a> 500505000/health</li>
                    <li>OpenNetTest - NA Objects <a href="C:\Development\NewaysDev\NewaysTest\OpenNetTest" target="_blank">Explore</a></li>
                </ul>
            </fieldset>
        </div>
        <div id="col3Spacer">
        </div>
        <div id="Footer">
            Design by <a href="mailto:WalterV@neways.com">Walter VanderHeide</a>
        </div>
    </div>
    <div id="olPush" style="display: none; background-color: White; border: dotted 2px black;
        position: absolute; z-index:900; left: 300px; top: 280px; width: 400px; background-color:#eeeeee; border-radius: 10px;">
        <div style="float: right; cursor: pointer; padding-right:10px; font-weight: bolder;" onclick="HideID('olPush')">
            &nbsp;Close&nbsp;</div>
        <div style="clear: both">
        </div>
        <ol>
            <li>Change the build drop down to RELEASE (it's the drop down in VS2008 next to the
                'play' button).</li>
            <li>Rebuild Solution</li>
            <li>Back up the existing Web.config on Hummer (see the Explore Corporate link above)</li>
            <li>Right-click on NetSteps.Websites.Corporate.HK and click PUBLISH</li>
            <li>Replace the Web.config that was pushed out with the one that was backed up above.</li>
            <li>Copy the Neways.Adapters.dll from the<a href="\\USA906L\C$\Development\NewaysDev\Neways\Neways.HK\Neways.Adapters.HK\bin\Release">Release</a>
                folder (inside Bin) to <a href="\\hummer\netsteps test\Neways.Adapters.HK">Neways.Adapters.HK</a></li>
        </ol>
    </div>
</body>
</html>
