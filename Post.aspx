<%@ Page Language="c#" %>
<script language="C#" runat="server">

	 private void Page_Load(object sender, System.EventArgs e)
	 {
		 string fname = Request["name"];
		 string city = Request["city"];
		 Response.Write("You sent me name =" + fname);
		 Response.Write(" and city = " + city + ". I could write these to the database!");
	 }
</script>

