using System;
using System.Collections;
using System.ComponentModel;
using System.Data.OleDb;

/// <summary>
/// Summary description for FeedbackDatabase
/// </summary>
[DataObject(true)]
public class FeedbackDatabase
{


    /// <summary>
    /// Gets the open feedback incidents.
    /// </summary>
    /// <param name="supportStaffId">The support staff identifier.</param>
    /// <returns></returns>
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

    /// <summary>
    /// Gets the customer feedback.
    /// </summary>
    /// <param name="customerId">The customer identifier.</param>
    /// <returns></returns>
    public static IEnumerable GetCustomerFeedback(int customerId)
    {
        OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString());

        string select = "SELECT SupportID,SoftwareID,DateOpened,DateClosed,Title,Description FROM Feedback WHERE CustomerID = @customerId ORDER BY SupportID";

        OleDbCommand cmd = new OleDbCommand(select, con);
        cmd.Parameters.AddWithValue("CustomerID", customerId);
        con.Open();

        OleDbDataReader reader = cmd.ExecuteReader();
        return reader;
    }


    /// <summary>
    /// Updates the feedback.
    /// </summary>
    /// <param name="original_Feedback">The original feedback.</param>
    /// <param name="feedback">The feedback.</param>
    /// <returns></returns>
    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int UpdateFeedback(Feedback original_Feedback, Feedback feedback)
    {
        int updateCount = 0;

        string update =
            "UPDATE Feedback SET DateClosed = @DateClosed, Decription = @Description WHERE DateClosed = @original_DateClosed AND Description = @original_Description"; //SupportID = @original_SupportID AND SoftwareID = @original_SoftwareID AND " +


            //"DateOpened = @original_DateOpened AND DateClosed = @original_DateClosed AND Title = @original_Title AND Description = @original_Description";


        using (OleDbConnection con = new OleDbConnection(BallgameDatabase.GetConnectionString()))
        {
            using (OleDbCommand cmd = new OleDbCommand(update, con))
            {
                if (Convert.ToDateTime(feedback.DateClosed) == Convert.ToDateTime("01/01/0001 12:00:00 AM"))
                {
                    cmd.Parameters.AddWithValue("DateClosed", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("DateClosed", feedback.DateClosed);
                }
                
                cmd.Parameters.AddWithValue("Description",feedback.Description);
               // cmd.Parameters.AddWithValue("original_FeedbackID", original_Feedback.FeedbackId);
              //  cmd.Parameters.AddWithValue("original_SupportID", original_Feedback.SupportId);
              //  cmd.Parameters.AddWithValue("original_SoftwareID", original_Feedback.SoftwareId);
              //  cmd.Parameters.AddWithValue("original_DateOpened", original_Feedback.DateOpened);
                cmd.Parameters.AddWithValue("original_DateClosed", original_Feedback.DateClosed);
              //  cmd.Parameters.AddWithValue("original_Title", original_Feedback.Title);
                cmd.Parameters.AddWithValue("original_Description", original_Feedback.Description);


                con.Open();
                updateCount = cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        return updateCount;
    }
}