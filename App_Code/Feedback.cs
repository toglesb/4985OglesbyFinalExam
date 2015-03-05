using System;


/// <summary>
/// Summary description for Feedback
/// </summary>
///  <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 2/5/15
/// </version>
public class Feedback
{
    /// <summary>
    /// Initializes a new instance of the <see cref="Feedback"/> class.
    /// </summary>
	public Feedback()
	{

	}

    public String FeedbackID { get; set; }
    public String CustomerID { get; set; }
    public String SoftwareID { get; set; }
    public String SupportID { get; set; }
    public String DateOpened { get; set; }
    public String DateClosed { get; set; }
    public String Title { get; set; }
    public String Description { get; set; }

    /// <summary>
    /// Formats the feedback.
    /// </summary>
    /// <returns>Format for which string is to be displayed</returns>
    public String FormatFeedback()
    {
        return "Feedback for software " + this.SoftwareID + " closed " + this.DateClosed + " (" + this.Title + ")";
    }
}