<!DOCTYPE html>
<html>

<%@ page language="c#" %>

<head>
    <% 
        String ID = string.Empty;

        if (Request.QueryString["id"] != null)
            ID = Request.QueryString["id"];

        Response.Write(@" <link rel=""stylesheet"" href=""SitesStyle" + ID + @".css"" type=""text/css"">" + "\r\n");
        Response.Write(@"    <!--[if IE]><link rel=""stylesheet"" href=""SitesStyle" + ID + @"_IEHack.css"" type=""text/css""> <![endif]-->");          
    %>

    <script type="text/javascript" src="jquery-1.4.1.min.js"></script>

    <script type="text/javascript" src="jquery.throbber.min.js"></script>

    <title>Spell Check
        <%= ID %></title>
</head>
<body>
    <!-- Definition List
    <dl>
        <dt>Coffee</dt>
        <dd>
            - black hot drink</dd>
        <dd>
            - Against the WOW</dd>
        <dt>Milk</dt>
        <dd>
            - white cold drink</dd>
    </dl> -->
    <div id="MainBody">
        <div id="Nav">
            <a href="sites.aspx?id=<%= ID %>">Sites</a>
        </div>
        <div id="NavSpacer">
        </div>
        <div id="HeaderLogo">
        </div>
        <div id="HeaderText">
            Spell Checker</div> (Only Works in Opera)
        <div id="HeaderSpacer">
        </div>
        <div id="col2">
            <fieldset class="AutoHeight AutoWidth">
                <legend>Spell Checker</legend>
                <div style="padding: 5px">
                    <form>
                    <input type="text" required placeholder="Type Word Here" spellcheck  />
                    <input type="button" id="button" value="My button" />                   
                    </form>
                </div>
        </div>
        <div style="clear: both">
        </div>
</body>
</html>
