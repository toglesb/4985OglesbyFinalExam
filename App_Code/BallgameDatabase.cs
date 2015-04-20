using System.Configuration;

/// <summary>
/// Summary description for BallgameDatabase
/// </summary>
public class BallgameDatabase
{


    /// <summary>
    /// Gets the connection string.
    /// </summary>
    /// <returns></returns>
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["CustomersConnectionString"].ConnectionString;
    }
}