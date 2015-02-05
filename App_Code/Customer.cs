using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{


	public Customer()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string CustomerId { get; set; }
    public string Name { get; set; }
    public string Address { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public string Zipcode { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
}