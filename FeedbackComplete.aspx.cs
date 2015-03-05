using System;
using System.Web;


public partial class FeedbackComplete : System.Web.UI.Page
{

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((bool) HttpContext.Current.Session["Contact"])
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