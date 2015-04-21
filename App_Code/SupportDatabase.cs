using System.Collections;
using System.ComponentModel;
using System.Data.OleDb;


/// <summary>
/// Summary description for SupportDatabase
/// </summary>
/// <author>
///     TJ Oglesby
/// </author>
/// <version>
///    4/20/2015
/// </version>
[DataObject(true)]
public class SupportDatabase
{


    /// <summary>
    /// Gets all support staff.
    /// </summary>
    /// <returns>IEnumerable of all support staff</returns>
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetAllSupportStaff()
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        const string select = "SELECT SupportID, Name FROM Support ORDER BY Name";

        OleDbCommand cmd = new OleDbCommand(select,con);

        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}