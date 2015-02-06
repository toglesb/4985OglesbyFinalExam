using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerFeedbackPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lbFeedback.Items.Clear();
    }
    protected void btnSubmitFeedback_Click(object sender, EventArgs e)
    {

    }
}