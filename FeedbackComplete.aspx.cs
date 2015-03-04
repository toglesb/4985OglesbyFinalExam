using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedbackComplete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((bool) HttpContext.Current.Session["Contact"] == true)
        {
            this.lblcontactSoon.Text =
                " someone with be contacting you soon to discuss the information you have provided.";
        }
        else
        {
            this.lblcontactSoon.Text = ".";
        }
    }
}