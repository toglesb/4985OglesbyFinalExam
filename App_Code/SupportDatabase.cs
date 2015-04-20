using System.Collections;
using System.ComponentModel;
using System.Data.OleDb;


/// <summary>
/// Summary description for SupportDatabase
/// </summary>
public class SupportDatabase
{


    /// <summary>
    /// Gets all support staff.
    /// </summary>
    /// <returns></returns>
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