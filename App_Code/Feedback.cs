using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Feedback
/// </summary>
public class Feedback
{
	public Feedback()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public String FeedbackID { get; set; }
    public String CustomerID { get; set; }
    public String SoftwareID { get; set; }
    public String SupportID { get; set; }
    public String DateOpened { get; set; }
    public String DateClosed { get; set; }
    public String Title { get; set; }
    public String Description { get; set; }

    public String FormatFeedback()
    {
        return "Feedback for software " + this.SoftwareID + " closed " + this.DateClosed + " (" + this.Title + ")";
    }
}