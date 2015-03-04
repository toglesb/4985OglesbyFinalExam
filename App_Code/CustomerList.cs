using System;
using System.Activities.Validation;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerList
/// </summary>
///  <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 2/5/15
/// </version>
public class CustomerList
{
    private List<Customer> _customerList;

    /// <summary>
    /// Initializes a new instance of the <see cref="CustomerList"/> class.
    /// </summary>
	public CustomerList()
	{
        this._customerList = new List<Customer>();
	}

    /// <summary>
    /// Gets or sets the <see cref="Customer"/> at the specified index.
    /// </summary>
    /// <value>
    /// The <see cref="Customer"/>.
    /// </value>
    /// <param name="index">The index.</param>
    /// <returns>Customer object found at selected index</returns>
    public Customer this[int index]
    {
        get { return this._customerList[index]; }
        set { this._customerList[index] = value; }
    }

    /// <summary>
    /// Gets the <see cref="Customer"/> with the specified name.
    /// </summary>
    /// <value>
    /// The <see cref="Customer"/>.
    /// </value>
    /// <param name="name">The name.</param>
    /// <returns>Customer that has selected name</returns>
    public Customer this[String name]
    {
        get { return this._customerList.FirstOrDefault(c => c.CustomerId == name); }
    }

    /// <summary>
    /// Gets the count.
    /// </summary>
    /// <value>
    /// The count.
    /// </value>
    public int Count
    {
       get { return this._customerList.Count; }
    }

    /// <summary>
    /// Adds the item.
    /// </summary>
    /// <param name="newCustomer">The new customer.</param>
    public void AddItem(Customer newCustomer)
    {
        
        this._customerList.Add(newCustomer);
        this.sortList();
    }

    /// <summary>
    /// Removes at.
    /// </summary>
    /// <param name="index">The index.</param>
    public void RemoveAt(int index)
    {
        this._customerList.RemoveAt(index);
        this.sortList();
    }

    /// <summary>
    /// Clears this instance.
    /// </summary>
    public void Clear()
    {
        this._customerList.Clear();
    }

    /// <summary>
    /// Gets the customers.
    /// </summary>
    /// <returns>CustomerList object </returns>
    public static CustomerList GetCustomers()
    {
        CustomerList custList = (CustomerList) HttpContext.Current.Session["CustomerList"];
        if (custList == null)
        {
            HttpContext.Current.Session["CustomerList"] = new CustomerList();
        }
        return (CustomerList) HttpContext.Current.Session["CustomerList"];
    }

    private void sortList()
    {
        var sortedList = this._customerList.OrderBy(cust => this.lastNameString(cust.Name)).ToList();
        this._customerList = sortedList;
    }

    private string lastNameString(string name)
    {
        string [] names = name.Split(' ');

        return names[1];       
    }
}