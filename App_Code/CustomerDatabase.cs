
using System.Collections;

using System.ComponentModel;
using System.Data.OleDb;


/// <summary>
/// Summary description for CustomerDatabase
/// </summary>
/// <author>
///     TJ Oglesby
/// </author>
/// <version>
///     3/4/15
/// </version>
[DataObject(true)]
public static class CustomerDatabase
{


    /// <summary>
    /// Gets the customers with feedback.
    /// </summary>
    /// <returns></returns>
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static IEnumerable GetCustomersWithFeedback()
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        const string select = "SELECT CustomerID, Name FROM Customer WHERE CustomerID IN(SELECT DISTINCT CustomerID FROM Feedback WHERE SupportID IS NOT NULL)ORDER By Name ";

        OleDbCommand cmd = new OleDbCommand(select, con);

        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}