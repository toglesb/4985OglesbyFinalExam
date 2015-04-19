using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FeedbackDatabase
/// </summary>
public class FeedbackDatabase
{
	public FeedbackDatabase()
	{

	}

    public static IEnumerable GetOpenFeedbackIncidents(int supportStaffId)
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        string select = "SELECT Feedback.DateOpened, Software.Name, Customer.Name AS CustomerName FROM   " +
            "((Customer INNER JOIN Feedback ON Customer.CustomerID = Feedback.CustomerID) INNER JOIN " +
                         "Software ON Feedback.SoftwareID = Software.SoftwareID) WHERE SupportID = @supportStaffId AND DateClosed IS NULL ORDER BY DateOpened";

        OleDbCommand cmd = new OleDbCommand(select, con);
        cmd.Parameters.AddWithValue("SupportID", supportStaffId);
        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}