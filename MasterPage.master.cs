using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Url.AbsolutePath.Contains("property.aspx"))
        {
            HeaderPanel.Visible = false;
        }
        if (Request.Url.AbsolutePath.Contains("property-single.aspx"))
        {
            HeaderPanel.Visible = false;
        }
        if (Request.Url.AbsolutePath.Contains("about.aspx"))
        {
            HeaderPanel.Visible = false;
        }
        if (Request.Url.AbsolutePath.Contains("blog.aspx"))
        {
            HeaderPanel.Visible = false;
        }
        if (Request.Url.AbsolutePath.Contains("contact.aspx"))
        {
            HeaderPanel.Visible = false;
        }
        if (Request.Url.AbsolutePath.Contains("blog-single.aspx"))
        {
            HeaderPanel.Visible = false;
        }
    }
}
