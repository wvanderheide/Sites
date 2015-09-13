<%@ Page Language="c#" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <head>
        <% 
            String ID = string.Empty;

            if (Request.QueryString["id"] != null)
                ID = Request.QueryString["id"];

            Response.Write("<title>Website Shortcuts" + ID + "</title>\r\n");
            Response.Write(@" <link rel=""stylesheet"" href=""SitesStyle" + ID + @".css"" type=""text/css"">" + "\r\n");
            Response.Write(@"    <!--[if IE]><link rel=""stylesheet"" href=""SitesStyle" + ID + @"_IEHack.css"" type=""text/css""> <![endif]-->");          
        %>
    </head>
    <body>
        <div id="MainBody">
            <div id="Nav">
                <a href="http://www.braser.com/spanish-word-a-day.xml" target="_blank"><font color="red">
                    Spanish Word of the Day</font></a>
                <br />
                <a href="?id=1">Style 1</a> | <a href="?id=2">Style 2</a> | <a href="?">No Style</a></div>
            <div id="NavSpacer">
            </div>
            <div id="HeaderLogo">
            </div>
            <div id="HeaderText">
                Website Shortcuts</div>
            <div id="HeaderSpacer">
            </div>
            <div id="col1">
                <fieldset>
                    <legend>Us Web Site</legend>
                    <ul>
                        <i>2007</i>
                        <li>Localhost:&nbsp;&nbsp; <a href="http://localhost/natrbranch-us/us/index.aspx">Browse</a>
                            | <a href="\\waltersnewcomp\C$\Development\NatrWeb\natr-branch-US" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest1:&nbsp;&nbsp; <a href="http://10.53.16.157/us/index.aspx">Browse</a>
                            | <a href="\\prvVMwebtest1\f$\NatrWeb" target="_blank">Explore</a></li>
                        <li>PrvVMwebQa1:&nbsp;&nbsp; <a href="http://10.53.24.157/us/index.aspx">Browse</a>
                            | <a href="\\prvVMwebqa1\f$\NatrWeb" target="_blank">Explore</a></li>
                        <li>Prvvmwebstg1:&nbsp;&nbsp; <a href="http://10.53.32.157/us/index.aspx">Browse</a>
                            | <a href="\\prvvmwebstg1\f$\USWebSite\wwwroot" target="_blank">Explore</a></li>
                        <li>Prvvmwebstg2:&nbsp;&nbsp; <a href="http://10.53.33.157/us/index.aspx">Browse</a>
                            | <a href="\\Prvvmwebstg2\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvVMAppqa2:&nbsp;&nbsp; <a href="http://10.53.25.157/us/index.aspx">Browse</a>
                            | <a href="\\prvVMwebqa2\f$\NatrWeb" target="_blank">Explore</a></li>
                        <li><a href="http://www.naturessunshine.com/us/index.aspx">naturessunshine.com</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.157/us/index.aspx">Browse</a> |
                            <a href="\\PrvSrvWeb2\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb3:&nbsp;&nbsp; <a href="http://10.253.3.157/us/index.aspx">Browse</a> |
                            <a href="\\PrvSrvWeb3\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb4:&nbsp;&nbsp; <a href="http://10.253.4.157/us/index.aspx">Browse</a> |
                            <a href="\\PrvSrvWeb4\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb5:&nbsp;&nbsp; <a href="http://10.253.5.157/us/index.aspx">Browse</a> |
                            <a href="\\PrvSrvWeb5\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb6:&nbsp;&nbsp; <a href="http://10.253.6.157/us/index.aspx">Browse</a> |
                            <a href="\\PrvSrvWeb6\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb7:&nbsp;&nbsp; <a href="http://10.253.7.157/us/index.aspx">Browse</a> |
                            <a href="\\PrvSrvWeb7\f$\USNew\wwwroot" target="_blank">Explore</a></li>
                        <hr />
                        <i>2009</i>
                        <li>Localhost 2009:&nbsp;&nbsp; <a href="http://localhost/natr/us/Default.aspx">Browse</a>
                            | <a href="\\waltersnewcomp\C$\Development\NatrWeb\natr" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest1 2009:&nbsp;&nbsp; <a href="http://10.53.16.188/us/default.aspx">Browse</a>
                            | <a href="\\prvvmwebtest1\f$\US2009" target="_blank">Explore</a></li>
                        <li>PrvVMwebQa1:&nbsp;&nbsp; <a href="http://10.53.24.188">Browse</a> | <a href="\\prvVMwebqa1\f$\US2009"
                            target="_blank">Explore</a></li>
                        <li>Prvvmwebstg1 2009:&nbsp;&nbsp; <a href="http://10.53.32.188/us/">Browse</a> | <a
                            href="\\prvvmwebstg1\f$\US2009" target="_blank">Explore</a></li>
                        <li>Prvvmwebstg2 2009:&nbsp;&nbsp; <a href="http://10.53.33.188/us/">Browse</a> | <a
                            href="\\prvvmwebstg2\f$\US2009" target="_blank">Explore</a></li>
                        <li><a href="http://www.naturessunshine.net">naturessunshine.net</a></li>
                        <li>PrvSrvWeb2</li>:&nbsp;&nbsp; <a href="http://10.253.2.142/">Browse</a> | <a href="\\PrvSrvWeb2\f$\US2009"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb3:&nbsp;&nbsp; <a href="http://10.253.3.142/">Browse</a> | <a href="\\PrvSrvWeb3\f$\US2009"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb4:&nbsp;&nbsp; <a href="http://10.253.4.142/">Browse</a> | <a href="\\PrvSrvWeb4\f$\US2009"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb5:&nbsp;&nbsp; <a href="http://10.253.5.142/">Browse</a> | <a href="\\PrvSrvWeb5\f$\US2009"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb6:&nbsp;&nbsp; <a href="http://10.253.6.142/">Browse</a> | <a href="\\PrvSrvWeb6\f$\US2009"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb7:&nbsp;&nbsp; <a href="http://10.253.7.142/">Browse</a> | <a href="\\PrvSrvWeb7\f$\US2009"
                            target="_blank">Explore</a></li>
                    </ul>
                    <br />
                    <legend style="">Content Server</legend>\\prvsan\web\Production\Common
                    <ul>
                        <li>Localhost:&nbsp;&nbsp; <a href="http://localhost/ContentServer/test.htm">Browse</a>
                            | <a href="\\waltersnewcomp\C$\Inetpub\wwwroot\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest1:&nbsp;&nbsp; <a href="http://10.53.16.157/contentserver/test.htm">
                            Browse</a> | <a href="\\prvVMwebtest1\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest2:&nbsp;&nbsp; <a href="http://10.53.17.157/contentserver/test.htm">
                            Browse</a> | <a href="\\prvVMwebtest2\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvVMwebQa1:&nbsp;&nbsp; <a href="http://10.53.24.157/contentserver/Test.htm">Browse</a>
                            | <a href="\\prvVMwebqa1\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.157/contentserver/Test.htm">Browse</a>
                            | <a href="\\PrvSrvWeb2\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                    </ul>
                </fieldset>
                <div style="clear: both">
                    <fieldset>
                        <legend>Miscellaneous</legend>
                        <ul>
                            <li><a href="http://intraweb/sites/Change/Lists/NSP%20IT%20Change%20Requests/AllItems.aspx">
                                Change Control</a></li>
                            <li>Prvlionwebdev04</li>
                            <li>Error Logs <i>prvsrvweb2</i> <a href="\\prvsrvweb2\c$\NSPErrorLogs" target="_blank">
                                Explore</a></li>
                            <li>Intranet: <a href="http://nspnet/main/index.asp">Browse</a> | <a href="\\nspnet\nspnet"
                                target="_blank">Explore</a></li>
                            <li>GDP Webservices <a href="http://webservices.nspnet.net/globalproducts/main.asmx">
                                Browse</a></li>
                            <li>Checkout Webservices <a href="http://webservices.natr.com/checkout/main.asmx">Browse</a></li>
                            <li>FTP Site: ftp:\\visitor:sunshine@ftp.natr.com</li>
                        </ul>
                        <br />
                        <legend>Credit Cards</legend>
                        <ul>
                            <li>Test Testing Credit Cards:
                                <ul>
                                    <li>4242 4242 4242 4242</li>
                                    <li>5454 5454 5454 5454<br />
                                        (Exp Oct-Dec = Decline)</li>
                                </ul>
                            </li>
                            <li>Live Testing Credit Card:
                                <ul>
                                    <li>5442 9811 1111 1015
                                        <br />
                                        Date: 12/13</li>
                                </ul>
                            </li>
                        </ul>
                        <br />
                        <legend>Tools</legend>
                        <ul>
                            <li><a href="http://nspnet/apps/WalkinReg/">2009 Convention Walk-in Reg</a> | <a
                                href="\\nspnet\NSP Intranet\wwwroot\Apps\WalkInReg" target="_blank">Explore</a></li>
                            <li><a href="http://nspnet/freeshipping/default.aspx">Free Shipping Tool for CN and/or
                                USA sites</a> | <a href="\\nspnet\NSP Intranet\wwwroot\freeshipping" target="_blank">
                                    Explore</a></li>
                            <li><a href="http://nspnet/freeshippingForTest/default.aspx">Free Shipping Tool for
                                CN and/or USA TEST sites</a> | <a href="\\nspnet\NSP Intranet\wwwroot\freeshippingForTest"
                                    target="_blank">Explore</a></li>
                            <li><a href="http://nspnet/ChatTool/Default.aspx">Chat Admin Tool For US 2008</a> |
                                <a href="\\nspnet\NSP Intranet\wwwroot\ChatTool" target="_blank">Explore</a></li>
                            <li><a href="http://nspnet/MenuManager/country.aspx?Secured=1">Menu Tool For US 2009</a>
                                | <a href="\\nspnet\NSP Intranet\wwwroot\MenuManager" target="_blank">Explore</a></li>
                            <li><a href="http://nspnet/FileUploadTool/country.aspx?Secured=1">File Upload Tool</a>
                                | <a href="\\nspnet\NSP Intranet\wwwroot\FileUploadTool" target="_blank">Explore</a></li>
                            <li><a href="http://10.53.16.129/MenuTool/MenuADDTool.asp">Menu Updater</a></li>
                            <li><a href="http://10.53.16.157/cms/Default.aspx">CMS Push Tool</a></li>
                            <li><a href="http://nspnet/prizecodes/Default.aspx">Prize Codes</a> Hint: Try "ShowAll"</li>
                        </ul>
                        <br />
                        <legend>Registry Settings</legend>
                        <ul>
                            <li>Natr > Remoting > GlobalProducts: Test = prvVMapptest1, Live = prvwebsvcs1</li>
                            <li><a href="http://10.53.16.157/cms/Default.aspx">CMS Push Tool</a></li>
                        </ul>
                        <br />
                        <legend>Web Content Reader</legend>&nbsp;&nbsp;(account to access \\prvsan)
                        <ul>
                            <li>User: webcontentreader</li>
                            <li>PIN: W3bus3rc0nt3nt</li>
                        </ul>
                    </fieldset>
                </div>
            </div>
            <div id="col1Spacer">
            </div>
            <div id="col2">
                <fieldset>
                    <legend>Canada Web Site</legend>
                    <ul>
                        <li>Localhost:&nbsp;&nbsp; <a href="http://localhost/natrbranch-ca/ca/default.aspx">
                            Browse</a> | <a href="\\waltersnewcomp\C$\Development\NatrWeb\natr-branch-ca" target="_blank">
                                Explore</a></li>
                        <li>PrvVMWebtest1: <i>New</i>&nbsp;&nbsp; <a href="http://10.53.16.159/ca/default.aspx">
                            Browse</a> | <a href="\\prvVMwebtest1\f$\CanadaBeta" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest2: <i>New</i>&nbsp;&nbsp; <a href="http://10.53.17.159/ca/default.aspx">
                            Browse</a> | <a href="\\prvVMwebtest2\f$\CanadaBeta" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest1 <i>Old</i>:&nbsp;&nbsp; <a href="http://10.53.16.129">Browse</a> |
                            <a href="\\prvVMwebtest1\f$\canadawebsite\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest2 <i>Old</i>:&nbsp;&nbsp; <a href="http://10.53.17.129">Browse</a> |
                            <a href="\\prvVMwebtest2\f$\canadawebsite\wwwroot" target="_blank">Explore</a></li>
                        <li>PrvVMwebQa1 <i>New</i>:&nbsp;&nbsp; <a href="http://10.53.24.159">Browse</a> | <a
                            href="\\prvvmwebqa1\f$\CanadaBeta" target="_blank">Explore</a></li>
                        <li>PrvVMwebQa2 <i>New</i>:&nbsp;&nbsp; <a href="http://10.53.25.159">Browse</a> | <a
                            href="\\prvvmwebqa2\f$\CanadaBeta" target="_blank">Explore</a></li>
                        <li>PrvVMwebQa1 <i>Old</i>:&nbsp;&nbsp; <a href="http://10.53.24.129">Browse</a> | <a
                            href="\\prvVMwebqa1\f$\NatrWeb" target="_blank">Explore</a></li>
                        <li><a href="http://www.naturessunshine.ca">naturessunshine.ca</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.129">Browse</a> | <a href="\\PrvSrvWeb2\f$\canadawebsite\wwwroot"
                            target="_blank">Explore</a> | <a href="\\PrvSrvWeb2\c$\nspcustom\nspxml\canada\"
                                target="_blank">Menu</a></li>
                        <li>PrvSrvWeb3:&nbsp;&nbsp; <a href="http://10.253.3.129">Browse</a> | <a href="\\PrvSrvWeb3\f$\canadawebsite\wwwroot"
                            target="_blank">Explore</a> | <a href="\\PrvSrvWeb3\c$\nspcustom\nspxml\canada\"
                                target="_blank">Menu</a></li>
                        <li>PrvSrvWeb4:&nbsp;&nbsp; <a href="http://10.253.4.129">Browse</a> | <a href="\\PrvSrvWeb4\f$\canadawebsite\wwwroot"
                            target="_blank">Explore</a> | <a href="\\PrvSrvWeb4\c$\nspcustom\nspxml\canada\"
                                target="_blank">Menu</a></li>
                        <li>PrvSrvWeb5:&nbsp;&nbsp; <a href="http://10.253.5.129">Browse</a> | <a href="\\PrvSrvWeb5\f$\canadawebsite\wwwroot"
                            target="_blank">Explore</a> | <a href="\\PrvSrvWeb5\c$\nspcustom\nspxml\canada\"
                                target="_blank">Menu</a></li>
                        <li>PrvSrvWeb6:&nbsp;&nbsp; <a href="http://10.253.6.129">Browse</a> | <a href="\\PrvSrvWeb6\f$\canadawebsite\wwwroot"
                            target="_blank">Explore</a> | <a href="\\PrvSrvWeb6\c$\nspcustom\nspxml\canada\"
                                target="_blank">Menu</a></li>
                        <li>PrvSrvWeb7:&nbsp;&nbsp; <a href="http://10.253.7.129">Browse</a> | <a href="\\PrvSrvWeb7\f$\canadawebsite\wwwroot"
                            target="_blank">Explore</a> | <a href="\\PrvSrvWeb7\c$\nspcustom\nspxml\canada\"
                                target="_blank">Menu</a></li>
                        <li><a href="http://www.naturessunshine.net/ca/">http://www.naturessunshine.net/ca</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.158/ca">Browse</a> | <a href="\\prvsrvweb2\f$\Canada2008\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb3:&nbsp;&nbsp; <a href="http://10.253.3.158/ca">Browse</a> | <a href="\\prvsrvweb3\f$\Canada2008\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb4:&nbsp;&nbsp; <a href="http://10.253.4.158/ca">Browse</a> | <a href="\\prvsrvweb4\f$\Canada2008\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb5:&nbsp;&nbsp; <a href="http://10.253.5.158/ca">Browse</a> | <a href="\\prvsrvweb5\f$\Canada2008\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb6:&nbsp;&nbsp; <a href="http://10.253.6.158/ca">Browse</a> | <a href="\\prvsrvweb6\f$\Canada2008\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb7:&nbsp;&nbsp; <a href="http://10.253.7.158/ca">Browse</a> | <a href="\\prvsrvweb7\f$\Canada2008\wwwroot"
                            target="_blank">Explore</a></li>
                    </ul>
                    <legend>Content Server</legend>
                    <ul>
                        <li>Localhost: n/a</li>
                        <li>PrvVMWebtest1:&nbsp;&nbsp; <a href="http://10.53.16.129/contentserver/test.htm">
                            Browse</a> | <a href="\\prvVMwebtest1\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest2:&nbsp;&nbsp; <a href="http://10.53.17.129/contentserver/test.htm">
                            Browse</a> | <a href="\\prvVMwebtest2\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.129/contentserver/Test.htm">Browse</a>
                            | <a href="\\PrvSrvWeb7\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                    </ul>
                    <legend>OPS</legend>(See "PUSHING OUT CHANGES TO OPS.doc")
                    <ul>
                        <li>PrvVMAppqa1:&nbsp;&nbsp;<a href="\\prvvmappqa1\c$\Program Files\Natr\Services"
                            target="_blank">Explore</a></li>
                        <li>PrvVMAppqa2:&nbsp;&nbsp;<a href="\\prvvmappqa2\c$\Program Files\Natr\Services"
                            target="_blank">Explore</a></li>
                    </ul>
                </fieldset>
                <div style="clear: both">
                    <fieldset>
                        <legend>ISP Web Site</legend>
                        <ul>
                            <li>PrvVMWebtest1:&nbsp;&nbsp; <a href="http://10.53.16.189/isp/">
                                Browse</a> | <a href="\\prvvmwebtest1\f$\US2009" target="_blank">Explore</a></li>
                            <li>PrvVMwebQa1:&nbsp;&nbsp; <a href="http://10.53.24.189/isp/">Browse</a> | <a
                                href="\\prvvmwebqa1\f$\International2009" target="_blank">Explore</a></li>
                            <li>PrvVMwebStg1:&nbsp;&nbsp; <a href="http://10.53.32.189/isp/">Browse</a> | <a
                                href="\\prvvmwebstg1\f$\International2009" target="_blank">Explore</a></li>
                            <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.144/isp/default.aspx">Browse</a>
                            | <a href="\\prvsrvweb2\f$\International2009" target="_blank">Explore</a></li>
                            <li>PrvSrvWeb3:&nbsp;&nbsp; <a href="http://10.253.3.144">Browse</a>
                            | <a href="\\prvsrvweb3\f$\International2009" target="_blank">Explore</a></li>
                        </ul>
                    </fieldset>
                </div>
            </div>
            <div id="col2Spacer">
            </div>
            <div id="col3">
                <fieldset>
                    <legend>Dominican Republic Web Site</legend>
                    <ul>
                        <li>Localhost: n/a</li>
                        <li>PrvVMWebtest1:&nbsp;&nbsp; <a href="http://10.53.16.137">Browse</a> | <a href="\\prvVMwebtest1\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvVMWebtest2:&nbsp;&nbsp; <a href="http://10.53.17.137">Browse</a> | <a href="\\prvVMwebtest2\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvVMwebQa1:&nbsp;&nbsp; <a href="http://10.53.24.137">Browse</a> | <a href="\\prvVMwebqa1\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvVMAppqa2:&nbsp;&nbsp; <a href="http://10.53.25.137">Browse</a> | <a href="\\prvVMwebqa2\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li><a href="http://www.naturessunshine.com.do">naturessunshine.com.do</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.137">Browse</a> | <a href="\\PrvSrvWeb2\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb3:&nbsp;&nbsp; <a href="http://10.253.3.137">Browse</a> | <a href="\\PrvSrvWeb3\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb4:&nbsp;&nbsp; <a href="http://10.253.4.137">Browse</a> | <a href="\\PrvSrvWeb4\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb5:&nbsp;&nbsp; <a href="http://10.253.5.137">Browse</a> | <a href="\\PrvSrvWeb5\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb6:&nbsp;&nbsp; <a href="http://10.253.6.137">Browse</a> | <a href="\\PrvSrvWeb6\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                        <li>PrvSrvWeb7:&nbsp;&nbsp; <a href="http://10.253.7.137">Browse</a> | <a href="\\PrvSrvWeb7\f$\DRWebSite\wwwroot"
                            target="_blank">Explore</a></li>
                    </ul>
                    <legend>Content Server</legend>
                    <ul>
                        <li>Localhost: n/a</li>
                        <li>PrvVMWebtest1:&nbsp;&nbsp; <a href="http://10.53.16.137/contentserver/test.htm">
                            Browse</a> | <a href="\\prvVMwebtest1\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvVMWebtest2:&nbsp;&nbsp; <a href="http://10.53.17.137/contentserver/test.htm">
                            Browse</a> | <a href="\\prvVMwebtest2\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                        <li>PrvSrvWeb2:&nbsp;&nbsp; <a href="http://10.253.2.137/contentserver/Test.htm">Browse</a>
                            | <a href="\\PrvSrvWeb7\f$\SharedApps\ContentServer" target="_blank">Explore</a></li>
                    </ul>
                </fieldset>
            </div>
            <div id="col3Spacer">
            </div>
            <div id="Footer">
                Design by <a href="mailto:WalterV@natr.com">Walter VanderHeide</a>
            </div>
        </div>
    </body>
</html>
