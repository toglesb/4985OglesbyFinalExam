using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.OleDb;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SupportDatabase
/// </summary>
public class SupportDatabase
{
	public SupportDatabase()
	{

	}
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllSupportStaff()
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        string select = "SELECT SupportID, Name FROM Support ORDER BY Name";

        OleDbCommand cmd = new OleDbCommand(select,con);

        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}