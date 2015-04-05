using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;

/// <summary>
///     Page that displays items needed to complete customer feedback
/// </summary>
/// ///
/// <author>
///     TJ Oglesby
/// </author>
/// <version>
///     3/4/15
/// </version>
public partial class CustomerFeedbackPage : Page
{
    private List<Feedback> _fb;

    /// <summary>
    ///     Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
       
        this.ActivateControls(false);
    }

    /// <summary>
    ///     Handles the Click event of the btnSubmitFeedback control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnSubmitFeedback_Click(object sender, EventArgs e)
    {
        if (this.lbFeedback.SelectedIndex != -1)
        {
            var desc = new Description()
            {
                FeedbackId = Convert.ToInt32(this.lbFeedback.SelectedItem.Value),
                CustomerId = Convert.ToInt32(this.txtCustomerID.Text),
                ServiceTime = Convert.ToInt32(this.rblServiceTime.SelectedItem.Value),
                Efficiency = Convert.ToInt32(this.rblTechEfficiency.SelectedItem.Value),
                Resolution = Convert.ToInt32(this.rblProbResolution.SelectedItem.Value),
                Comments = this.txtAdditionalComments.Text,
                Contact = this.cbContacted.Checked,
                ContactMethod = this.rblContact.SelectedItem.Text
            };
            HttpContext.Current.Session["Decription"] = desc;
            HttpContext.Current.Session["Contact"] = this.cbContacted.Checked;
            Response.Redirect("FeedbackComplete.aspx");
        }
        else
        {
            this.ActivateControls(true);
        }
    }

    /// <summary>
    ///     Handles the Click event of the btnConfirmID control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs" /> instance containing the event data.</param>
    protected void btnConfirmID_Click(object sender, EventArgs e)
    {
        this._fb = this.GetSelectedFeedback();
        this.lbFeedback.Items.Clear();

        for (var i = 0; i < this._fb.Count; i++)
        {
            if (this._fb[i].DateClosed != "")
            {
                this.lbFeedback.Items.Add(this._fb[i].FormatFeedback());
                this.lbFeedback.Items[i].Value = this._fb[i].FeedbackId;
            }
        }
        if (this.lbFeedback.Items.Count > 0)
        {
            this.ActivateControls(true);
        }
    }

    /// <summary>
    ///     Gets the selected feedback.
    /// </summary>
    /// <returns></returns>
    private List<Feedback> GetSelectedFeedback()
    {
        var feedbackTable = (DataView) this.FeedbackData.Select(DataSourceSelectArguments.Empty);

        var feedbackList = new List<Feedback>();
        if (feedbackTable != null)
        {
            Response.Write(feedbackTable.Count);
            feedbackTable.RowFilter = "CustomerID = '" + Convert.ToInt32(this.txtCustomerID.Text) + "'";

            for (var i = 0; i < feedbackTable.Count; i++)
            {
                var feedback = new Feedback();
                var row = feedbackTable[i];
                feedback.FeedbackId = row["FeedbackID"].ToString();
                feedback.CustomerId = row["CustomerID"].ToString();
                feedback.SoftwareId = row["SoftwareID"].ToString();
                feedback.SupportId = row["SupportID"].ToString();
                feedback.DateOpened = row["DateOpened"].ToString();
                feedback.DateClosed = row["DateClosed"].ToString();
                feedback.Title = row["Title"].ToString();
                feedback.Description = row["Description"].ToString();
                feedbackList.Add(feedback);
            }
        }
        return feedbackList;
    }

    /// <summary>
    ///     Activates the controls.
    /// </summary>
    /// <param name="value">if set to <c>true</c> [value].</param>
    private void ActivateControls(bool value)
    {
        this.cbContacted.Enabled = value;
        this.rblProbResolution.Enabled = value;
        this.rblServiceTime.Enabled = value;
        this.rblTechEfficiency.Enabled = value;
        this.txtAdditionalComments.Enabled = value;
        this.rblContact.Enabled = value;
        this.btnSubmitFeedback.Enabled = value;
    }
}