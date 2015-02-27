using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Page that displays items needed to complete customer feedback
/// </summary>
/// /// <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 2/5/15
/// </version>
public partial class CustomerFeedbackPage : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    /// <summary>
    /// Handles the Click event of the btnSubmitFeedback control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnSubmitFeedback_Click(object sender, EventArgs e)
    {
        Description desc = new Description();
        desc.CustomerID = Convert.ToInt32(this.txtCustomerID.Text);
        
    }
    /// <summary>
    /// Handles the Click event of the btnConfirmID control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnConfirmID_Click(object sender, EventArgs e)
    {
        this.txtAdditionalComments.Text = this.lbFeedback.Items.Count.ToString();
        Feedback fb = this.getSelectedFeedback();
        this.lbFeedback.Text = fb.FormatFeedback();
        if (this.lbFeedback.Items.Count > 0)
        {
            

        }
            
        
    }

    private Feedback getSelectedFeedback()
    {
        var feedbackTable = (DataView) this.FeedbackData.Select(DataSourceSelectArguments.Empty);
        var feedback = new Feedback();
        if (feedbackTable != null)
        {
        
        feedbackTable.RowFilter = "CustomerID = '" + Convert.ToInt32(this.txtCustomerID.Text) + "'";
        var row = (DataRowView) feedbackTable[0];

        feedback.FeedbackID = row["FeedbackID"].ToString();
        feedback.CustomerID = row["CustomerID"].ToString();
        feedback.SoftwareID = row["SoftwareID"].ToString();
        feedback.SupportID = row["SupportID"].ToString();
        feedback.DateOpened = row["DateOpened"].ToString();
        feedback.DateClosed = row["DateClosed"].ToString();
        feedback.Title = row["Title"].ToString();
        feedback.Description = row["Description"].ToString();
         }   

          return feedback;
    }


}