using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BallgameDatabase
/// </summary>
public class BallgameDatabase
{
	public BallgameDatabase()
	{

	}

    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["CustomersConnectionString"].ConnectionString;
    }
}