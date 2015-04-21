using System.Configuration;

/// <summary>
/// Summary description for BallgameDatabase
/// </summary>
/// <author>
///  TJ Oglesby
/// </author>
/// <version>
///    4/20/2015
/// </version>
public class BallgameDatabase
{


    /// <summary>
    /// Gets the connection string.
    /// </summary>
    /// <returns>string to connect to database</returns>
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["CustomersConnectionString"].ConnectionString;
    }
}