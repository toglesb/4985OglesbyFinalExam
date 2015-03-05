using System;


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
   

    private string _feedbackID { get; set; }
    private string _customerID { get; set; }
    private string _softwareID { get; set; }
    private string _supportID { get; set; }
    private string _dateOpened { get; set; }
    private string _dateClosed { get; set; }
    private string _title { get; set; }
    private string _description { get; set; }

    /// <summary>
    /// Gets or sets the feedback identifier.
    /// </summary>
    /// <value>
    /// The feedback identifier.
    /// </value>
    public string FeedbackID
    {
        get { return this._feedbackID; }
        set { this._feedbackID = value; }
    }

    /// <summary>
    /// Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    /// The customer identifier.
    /// </value>
    public string CustomerID
    {
        get { return this._customerID; }
        set { this._customerID = value; }
    }
    /// <summary>
    /// Gets or sets the software identifier.
    /// </summary>
    /// <value>
    /// The software identifier.
    /// </value>
    public string SoftwareID
    {
        private get { return this._softwareID; }
        set { this._softwareID = value; }
    }
    /// <summary>
    /// Gets or sets the support identifier.
    /// </summary>
    /// <value>
    /// The support identifier.
    /// </value>
    public string SupportID
    {
        get { return this._supportID; }
        set { this._supportID = value; }
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
        set { this._dateOpened = value; }
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
        set { this._dateClosed = value; }
    }
    /// <summary>
    /// Gets or sets the title.
    /// </summary>
    /// <value>
    /// The title.
    /// </value>
    public string Title
    {
        private get { return this._title; }
        set { this._title = value; }
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
        set { this._description = value; }
    }

    /// <summary>
    /// Formats the feedback.
    /// </summary>
    /// <returns>Format for which string is to be displayed</returns>
    public String FormatFeedback()
    {
        return "Feedback for software " + this.SoftwareID + " closed " + this.DateClosed + " (" + this.Title + ")";
    }
}