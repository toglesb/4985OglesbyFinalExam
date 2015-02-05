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

    public string Display()
    {
        string output = string.Format("{0}: {1}; {2} ", this.splitString(this.Name),this.Phone,this.Email);
        return output;
    }

    private string splitString(string name)
    {
        
        string[] names = name.Split(' ');

        return names[1] + ", " + names[0];

    }
}