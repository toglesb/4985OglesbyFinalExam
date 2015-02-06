using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Description
/// </summary>
public class Description
{
	public Description()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int CustomerID { get; set; }
    public int FeedbackID { get; set; }
    public int ServiceTime { get; set; }
    public int Efficiency { get; set; }
    public int Resolution { get; set; }
    public String Comments { get; set; }
    public bool Contact { get; set; }
    public String ContactMethod { get; set; }
}