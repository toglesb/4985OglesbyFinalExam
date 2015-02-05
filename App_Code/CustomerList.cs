using System;
using System.Activities.Validation;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerList
/// </summary>
public class CustomerList
{
    private List<Customer> _customerList; 

	public CustomerList()
	{
        this._customerList = new List<Customer>();
	}

    public Customer this[int index]
    {
        get { return this._customerList[index]; }
        set { this._customerList[index] = value; }
    }

    public Customer this[String name]
    {
        get { return this._customerList.FirstOrDefault(c => c.CustomerId == name); }
    }

    public int Count
    {
       get { return this._customerList.Count; }
    }

    public void AddItem(Customer newCustomer)
    {
        this._customerList.Add(newCustomer);
    }

    public void RemoveAt(int index)
    {
        this._customerList.RemoveAt(index);
    }

    public void Clear()
    {
        this._customerList.Clear();
    }

    public static CustomerList GetCustomers()
    {
        CustomerList custList = (CustomerList) HttpContext.Current.Session["CustomerList"];
        if (custList == null)
        {
            HttpContext.Current.Session["CustomerList"] = new CustomerList();
        }
        return (CustomerList) HttpContext.Current.Session["CustomerList"];
    }
}