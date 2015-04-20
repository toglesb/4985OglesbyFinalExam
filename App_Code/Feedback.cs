using System;
using System.Diagnostics;


/// <summary>
/// Summary description for Feedback
/// </summary>
/// <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 3/4/15
/// </version>
public class Feedback
{


    private string _feedbackId;
    private string _customerId;
    private string _softwareId;
    private string _supportId;
    private string _dateOpened;
    private string _dateClosed;
    private string _title;
    private string _description;

    /// <summary>
    /// Gets or sets the feedback identifier.
    /// </summary>
    /// <value>
    /// The feedback identifier.
    /// </value>
    public string FeedbackId
    {
        get { return this._feedbackId; }
        set
        {
            Trace.Assert(value != null, "Invalid feedback id");
            this._feedbackId = value;
        }
    }

    /// <summary>
    /// Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    /// The customer identifier.
    /// </value>
    public string CustomerId
    {
        get { return this._customerId; }
        set
        {
            Trace.Assert(value != null, "Invalid customer id");
            this._customerId = value;
        }
    }
    /// <summary>
    /// Gets or sets the software identifier.
    /// </summary>
    /// <value>
    /// The software identifier.
    /// </value>
    public string SoftwareId
    {
        get { return this._softwareId; }
        set
        {
            Trace.Assert(value != null, "Invalid software id");
            this._softwareId = value;
        }
    }
    /// <summary>
    /// Gets or sets the support identifier.
    /// </summary>
    /// <value>
    /// The support identifier.
    /// </value>
    public string SupportId
    {
        get { return this._supportId; }
        set
        {
            Trace.Assert(value != null, "Invalid support id");
            this._supportId = value;
        }
    }
    /// <summary>
    /// Gets or sets the date opened.
    /// </summary>
    /// <value>
    /// The date opened.
    /// </value>
    public string DateOpened
    {
        get { return this._dateOpened; }
        set
        {
            Trace.Assert(value != null, "Invalid date opened");
            this._dateOpened = value;
        }
    }
    /// <summary>
    /// Gets or sets the date closed.
    /// </summary>
    /// <value>
    /// The date closed.
    /// </value>
    public string DateClosed
    {
        get { return this._dateClosed; }
        set
        {
            Trace.Assert(value != null, "Invalid date closed");
            this._dateClosed = value;
        }
    }
    /// <summary>
    /// Gets or sets the title.
    /// </summary>
    /// <value>
    /// The title.
    /// </value>
    public string Title
    {
        get { return this._title; }
        set
        {
            Trace.Assert(value != null, "Invalid Title");
            this._title = value;
        }
    }
    /// <summary>
    /// Gets or sets the description.
    /// </summary>
    /// <value>
    /// The description.
    /// </value>
    public string Description
    {
        get { return this._description; }
        set
        {
            Trace.Assert(value != null, "Invalid description");
            this._description = value;
        }
    }

    /// <summary>
    /// Formats the feedback.
    /// </summary>
    /// <returns>Format for which string is to be displayed</returns>
    public String FormatFeedback()
    {
        return "Feedback for software " + this.SoftwareId + " closed " + this.DateClosed + " (" + this.Title + ")";
    }
}