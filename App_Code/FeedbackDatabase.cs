
using System;
using System.Collections;
using System.ComponentModel;
using System.Data.OleDb;

/// <summary>
/// Summary description for FeedbackDatabase
/// </summary>
/// <author>
///     TJ Oglesby
/// </author>
/// <version>
///    4/20/2015
/// </version>
[DataObject(true)]
public class FeedbackDatabase
{


    /// <summary>
    /// Gets the open feedback incidents.
    /// </summary>
    /// <param name="supportStaffId">The support staff identifier.</param>
    /// <returns>IEnumerable of all open feedback incidents</returns>
    public static IEnumerable GetOpenFeedbackIncidents(int supportStaffId)
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

         const string select = "SELECT Feedback.DateOpened, Software.Name, Customer.Name AS CustomerName FROM   " +
            "((Customer INNER JOIN Feedback ON Customer.CustomerID = Feedback.CustomerID) INNER JOIN " +
                         "Software ON Feedback.SoftwareID = Software.SoftwareID) WHERE SupportID = @supportStaffId AND DateClosed IS NULL ORDER BY DateOpened";

        OleDbCommand cmd = new OleDbCommand(select, con);
        cmd.Parameters.AddWithValue("SupportID", supportStaffId);
        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }

    /// <summary>
    /// Gets the customer feedback.
    /// </summary>
    /// <param name="customerId">The customer identifier.</param>
    /// <returns>IEnumerable of all customer feedback for certain customer</returns>
    public static IEnumerable GetCustomerFeedback(int customerId)
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        const string select = "SELECT * FROM Feedback WHERE CustomerID = @customerId ORDER BY SupportID";

        OleDbCommand cmd = new OleDbCommand(select, con);
        cmd.Parameters.AddWithValue("CustomerID", customerId);
        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }


    /// <summary>
    /// Updates the feedback.
    /// </summary>
    /// <param name="originalFeedback">The original feedback.</param>
    /// <param name="feedback">The feedback.</param>
    /// <returns>int value number of rows returned</returns>
    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int UpdateFeedback(Feedback originalFeedback, Feedback feedback)
    {
        int updateCount;

        const string update =
            "UPDATE Feedback SET DateClosed = @DateClosed, Description = @Description WHERE DateClosed = @originalDateClosed AND Description =@originalDescription";


        using (OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString()))
        {
            using (OleDbCommand updateCommandcmd = new OleDbCommand(update, con))
            {

                if (Convert.ToDateTime(feedback.DateClosed) == Convert.ToDateTime("01/01/0001 12:00:00 AM"))
                {
                    updateCommandcmd.Parameters.AddWithValue("DateClosed", DBNull.Value);
                }
                else
                {

                    updateCommandcmd.Parameters.AddWithValue("DateClosed", Convert.ToDateTime(feedback.DateClosed));
            }

            updateCommandcmd.Parameters.AddWithValue("Description",feedback.Description);
                if (originalFeedback.DateClosed == null)
                {
                    originalFeedback.DateClosed = "01/01/0001 12:00:00 AM";

                    updateCommandcmd.Parameters.AddWithValue("originalDateClosed", Convert.ToDateTime(originalFeedback.DateClosed));
                }
                else
                {
                    updateCommandcmd.Parameters.AddWithValue("originalDateClosed", Convert.ToDateTime(originalFeedback.DateClosed));
                }

                updateCommandcmd.Parameters.AddWithValue("originalDescription", originalFeedback.Description);


                con.Open();
                updateCount = updateCommandcmd.ExecuteNonQuery();
                con.Close();
            }
        }
        return updateCount;
    }
}