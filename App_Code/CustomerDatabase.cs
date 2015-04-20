using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.OleDb;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerDatabase
/// </summary>
[DataObject(true)]
public static class CustomerDatabase
{
	static CustomerDatabase()
	{

	}

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetCustomersWithFeedback()
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        string select = "SELECT CustomerID, Name FROM Customer WHERE CustomerID IN(SELECT DISTINCT CustomerID FROM Feedback WHERE SupportID IS NOT NULL)ORDER By Name ";

        OleDbCommand cmd = new OleDbCommand(select, con);

        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}