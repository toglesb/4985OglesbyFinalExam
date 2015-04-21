using System.Configuration;

/// <summary>
/// Summary description for BallgameDatabase
/// </summary>
/// <author>
///  TJ Oglesby
/// </author>
/// <version>
///     3/4/15
/// </version>
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